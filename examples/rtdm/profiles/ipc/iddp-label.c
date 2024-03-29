/*
 * IDDP-based client/server demo, using the write(2)/recvfrom(2)
 * system calls to exchange data over a socket.
 *
 * In this example, two sockets are created.  A server thread (reader)
 * is bound to a labeled real-time port and receives datagrams sent to
 * this port from a client thread (writer). The client thread attaches
 * to the port opened by the server using a labeled connection
 * request. The client socket is bound to a different port, only to
 * provide a valid peer name; this is optional.
 *
 * ASCII labels can be attached to bound ports, in order to connect
 * sockets to them in a more descriptive way than using plain numeric
 * port values.
 *
 * See Makefile in this directory for build directives.
 */
#include <sys/mman.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <signal.h>
#include <string.h>
#include <pthread.h>
#include <errno.h>
#include <rtdk.h>
#include <rtdm/rtipc.h>

pthread_t svtid, cltid;

#define IDDP_CLPORT  27

#define IDDP_PORT_LABEL  "iddp-demo"

static const char *msg[] = {
    "Surfing With The Alien",
    "Lords of Karma",
    "Banana Mango",
    "Psycho Monkey",
    "Luminous Flesh Giants",
    "Moroccan Sunset",
    "Satch Boogie",
    "Flying In A Blue Dream",
    "Ride",
    "Summer Song",
    "Speed Of Light",
    "Crystal Planet",
    "Raspberry Jam Delta-V",
    "Champagne?",
    "Clouds Race Across The Sky",
    "Engines Of Creation"
};

static void fail(const char *reason)
{
	perror(reason);
	exit(EXIT_FAILURE);
}

void *server(void *arg)
{
	struct sockaddr_ipc saddr, claddr;
	char label[IDDP_LABEL_LEN];
	socklen_t addrlen;
	char buf[128];
	int ret, s;

	s = socket(AF_RTIPC, SOCK_DGRAM, IPCPROTO_IDDP);
	if (s < 0)
		fail("socket");

	/*
	 * We will use Xenomai's system heap for datagram, so no
	 * IDDP_SETLOCALPOOL required here.
	 */

	/*
	 * Set a port label. This name will be registered when
	 * binding, in addition to the port number (if given).
	 */
	strcpy(label, IDDP_PORT_LABEL);
	ret = setsockopt(s, SOL_RTIPC, IDDP_SETLABEL,
			 label, sizeof(label));
	if (ret)
		fail("setsockopt");

	/*
	 * Bind the socket to the port. Assign that port a label, so
	 * that peers may use a descriptive information to locate
	 * it. Labeled ports will appear in the
	 * /proc/xenomai/registry/rtipc/iddp directory once the socket
	 * is bound.
	 *
	 * saddr.sipc_port specifies the port number to use. If -1 is
	 * passed, the IDDP driver will auto-select an idle port.
	 */
	saddr.sipc_family = AF_RTIPC;
	saddr.sipc_port = -1;	/* Pick next free */
	ret = bind(s, (struct sockaddr *)&saddr, sizeof(saddr));
	if (ret)
		fail("bind");

	for (;;) {
		addrlen = sizeof(saddr);
		ret = recvfrom(s, buf, sizeof(buf), 0,
			       (struct sockaddr *)&claddr, &addrlen);
		if (ret < 0) {
			close(s);
			fail("recvfrom");
		}
		rt_printf("%s: received %d bytes, \"%.*s\" from port %d\n",
			  __FUNCTION__, ret, ret, buf, claddr.sipc_port);
	}

	return NULL;
}

void *client(void *arg)
{
	struct sockaddr_ipc svsaddr, clsaddr;
	char label[IDDP_LABEL_LEN];
	int ret, s, n = 0, len;
	struct timespec ts;
	char buf[128];

	s = socket(AF_RTIPC, SOCK_DGRAM, IPCPROTO_IDDP);
	if (s < 0)
		fail("socket");

	/*
	 * Set a name on the client socket. This is strictly optional,
	 * and only done here for the purpose of getting back a
	 * different port number in recvfrom().
	 */
	clsaddr.sipc_family = AF_RTIPC;
	clsaddr.sipc_port = IDDP_CLPORT;
	ret = bind(s, (struct sockaddr *)&clsaddr, sizeof(clsaddr));
	if (ret)
		fail("bind");

	/*
	 * Set the port label. This name will be used to find the peer
	 * when connecting, instead of the port number. The label must
	 * be set _after_ the socket is bound to the port, so that
	 * IDDP does not try to register this label for the client
	 * port as well (like the server thread did).
	 */
	strcpy(label, IDDP_PORT_LABEL);
	ret = setsockopt(s, SOL_RTIPC, IDDP_SETLABEL,
			 label, sizeof(label));
	if (ret)
		fail("setsockopt");

	memset(&svsaddr, 0, sizeof(svsaddr));
	svsaddr.sipc_family = AF_RTIPC;
	svsaddr.sipc_port = -1;	/* Tell IDDP to search by label. */
	ret = connect(s, (struct sockaddr *)&svsaddr, sizeof(svsaddr));
	if (ret)
		fail("connect");

	for (;;) {
		len = strlen(msg[n]);
		/* Send to default destination we connected to. */
		ret = write(s, msg[n], len);
		if (ret < 0) {
			close(s);
			fail("sendto");
		}
		rt_printf("%s: sent %d bytes, \"%.*s\"\n",
			  __FUNCTION__, ret, ret, msg[n]);
		n = (n + 1) % (sizeof(msg) / sizeof(msg[0]));
		/*
		 * We run in full real-time mode (i.e. primary mode),
		 * so we have to let the system breathe between two
		 * iterations.
		 */
		ts.tv_sec = 0;
		ts.tv_nsec = 500000000; /* 500 ms */
		clock_nanosleep(CLOCK_REALTIME, 0, &ts, NULL);
	}

	return NULL;
}

void cleanup_upon_sig(int sig)
{
	pthread_cancel(svtid);
	pthread_cancel(cltid);
	signal(sig, SIG_DFL);
	pthread_join(svtid, NULL);
	pthread_join(cltid, NULL);
}

int main(int argc, char **argv)
{
	struct sched_param svparam = {.sched_priority = 71 };
	struct sched_param clparam = {.sched_priority = 70 };
	pthread_attr_t svattr, clattr;
	sigset_t mask, oldmask;

	mlockall(MCL_CURRENT | MCL_FUTURE);

	sigemptyset(&mask);
	sigaddset(&mask, SIGINT);
	signal(SIGINT, cleanup_upon_sig);
	sigaddset(&mask, SIGTERM);
	signal(SIGTERM, cleanup_upon_sig);
	sigaddset(&mask, SIGHUP);
	signal(SIGHUP, cleanup_upon_sig);
	pthread_sigmask(SIG_BLOCK, &mask, &oldmask);

	/*
	 * This is a real-time compatible printf() package from
	 * Xenomai's RT Development Kit (RTDK), that does NOT cause
	 * any transition to secondary mode.
	 */
	rt_print_auto_init(1);

	pthread_attr_init(&svattr);
	pthread_attr_setdetachstate(&svattr, PTHREAD_CREATE_JOINABLE);
	pthread_attr_setinheritsched(&svattr, PTHREAD_EXPLICIT_SCHED);
	pthread_attr_setschedpolicy(&svattr, SCHED_FIFO);
	pthread_attr_setschedparam(&svattr, &svparam);

	errno = pthread_create(&svtid, &svattr, &server, NULL);
	if (errno)
		fail("pthread_create");

	pthread_attr_init(&clattr);
	pthread_attr_setdetachstate(&clattr, PTHREAD_CREATE_JOINABLE);
	pthread_attr_setinheritsched(&clattr, PTHREAD_EXPLICIT_SCHED);
	pthread_attr_setschedpolicy(&clattr, SCHED_FIFO);
	pthread_attr_setschedparam(&clattr, &clparam);

	errno = pthread_create(&cltid, &clattr, &client, NULL);
	if (errno)
		fail("pthread_create");

	sigsuspend(&oldmask);

	return 0;
}
