rundir = $(exec_prefix)/share/xenomai/testsuite/unit
testdir = @XENO_TEST_DIR@

CCLD = $(top_srcdir)/scripts/wrap-link.sh $(CC)

test_PROGRAMS = \
	arith \
	wakeup-time \
	mutex-torture-posix \
	mutex-torture-native \
	cond-torture-posix \
	cond-torture-native \
	check-vdso \
	rtdm

arith_SOURCES = arith.c arith-noinline.c arith-noinline.h

arith_CPPFLAGS = \
	@XENO_USER_CFLAGS@ \
	-I$(top_srcdir)/include

arith_LDFLAGS = @XENO_USER_LDFLAGS@

arith_LDADD = \
	../../skins/native/libnative.la \
	../../skins/common/libxenomai.la \
	-lpthread -lm

wakeup_time_SOURCES = wakeup-time.c

wakeup_time_CPPFLAGS = \
	@XENO_USER_CFLAGS@ \
	-I$(top_srcdir)/include

wakeup_time_LDFLAGS = @XENO_USER_LDFLAGS@

wakeup_time_LDADD = \
	../../skins/native/libnative.la \
	../../skins/common/libxenomai.la \
	-lpthread -lm

mutex_torture_posix_SOURCES = mutex-torture.c

mutex_torture_posix_CPPFLAGS = \
	-I$(top_srcdir)/include/posix @XENO_USER_CFLAGS@ -g -DXENO_POSIX \
	-I$(top_srcdir)/include

mutex_torture_posix_LDFLAGS = $(XENO_POSIX_WRAPPERS) @XENO_USER_LDFLAGS@

mutex_torture_posix_LDADD = \
	../../skins/posix/libpthread_rt.la \
	../../skins/native/libnative.la \
	../../skins/common/libxenomai.la \
	-lpthread -lrt -lm

mutex_torture_native_SOURCES = mutex-torture.c

mutex_torture_native_CPPFLAGS = \
	@XENO_USER_CFLAGS@ \
	-I$(top_srcdir)/include

mutex_torture_native_LDFLAGS = @XENO_USER_LDFLAGS@

mutex_torture_native_LDADD = \
	../../skins/native/libnative.la \
	../../skins/common/libxenomai.la \
	-lpthread -lm

cond_torture_posix_SOURCES = cond-torture.c

cond_torture_posix_CPPFLAGS = \
	-I$(top_srcdir)/include/posix @XENO_USER_CFLAGS@ -g -DXENO_POSIX \
	-I$(top_srcdir)/include

cond_torture_posix_LDFLAGS = $(XENO_POSIX_WRAPPERS) @XENO_USER_LDFLAGS@

cond_torture_posix_LDADD = \
	../../skins/posix/libpthread_rt.la \
	../../skins/native/libnative.la \
	../../skins/common/libxenomai.la \
	-lpthread -lrt -lm

cond_torture_native_SOURCES = cond-torture.c

cond_torture_native_CPPFLAGS = \
	@XENO_USER_CFLAGS@ \
	-I$(top_srcdir)/include

cond_torture_native_LDFLAGS = @XENO_USER_LDFLAGS@

cond_torture_native_LDADD = \
	../../skins/native/libnative.la \
	../../skins/common/libxenomai.la \
	-lpthread -lm

check_vdso_SOURCES = check-vdso.c

check_vdso_CPPFLAGS = \
	@XENO_USER_CFLAGS@ \
	-I$(top_srcdir)/include

check_vdso_LDFLAGS = @XENO_USER_LDFLAGS@

check_vdso_LDADD = \
	../../skins/native/libnative.la \
	../../skins/common/libxenomai.la \
	-lpthread -lm

rtdm_SOURCES = rtdm.c

rtdm_CPPFLAGS = \
	-I$(top_srcdir)/include/posix @XENO_USER_CFLAGS@ -g -DXENO_POSIX \
	-I$(top_srcdir)/include

rtdm_LDFLAGS = $(XENO_POSIX_WRAPPERS) @XENO_USER_LDFLAGS@

rtdm_LDADD = \
	../../skins/posix/libpthread_rt.la \
	../../skins/native/libnative.la \
	../../skins/common/libxenomai.la \
	-lpthread -lrt -lm

install-data-local:
	$(mkinstalldirs) $(DESTDIR)$(rundir)
	@sed -e's,@XENO_TEST_DIR\@,$(XENO_TEST_DIR),g' $(srcdir)/runinfo.in > $(DESTDIR)$(rundir)/.runinfo
	@echo "#!/bin/sh" > $(DESTDIR)$(rundir)/run
	@echo "\$${DESTDIR}$(exec_prefix)/bin/xeno-load \`dirname \$$0\` \$$*" >> $(DESTDIR)$(rundir)/run
	@chmod +x $(DESTDIR)$(rundir)/run

uninstall-local:
	$(RM) $(DESTDIR)$(rundir)/.runinfo $(DESTDIR)$(rundir)/run

run: all
	@$(top_srcdir)/scripts/xeno-load --verbose

EXTRA_DIST = runinfo.in
