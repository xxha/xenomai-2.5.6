lib_LTLIBRARIES = libvxworks.la

libvxworks_la_LDFLAGS = @XENO_DLOPEN_CONSTRAINT@ -version-info 1:0:0 -lpthread

libvxworks_la_SOURCES = \
	errnoLib.c \
	intLib.c \
	msgQLib.c \
	kernelLib.c \
	semLib.c \
	taskInfo.c \
	taskLib.c \
	tickLib.c \
	sysLib.c \
	wdLib.c \
	init.c \
	wrappers.c \
	wrappers.h

libvxworks_la_CPPFLAGS = \
	@XENO_USER_CFLAGS@ \
	-I$(top_srcdir)/include
