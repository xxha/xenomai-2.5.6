lib_LTLIBRARIES = librtdm.la

librtdm_la_LDFLAGS = @XENO_DLOPEN_CONSTRAINT@ -version-info 1:0:0 -lpthread

librtdm_la_SOURCES = \
	core.c \
	init.c

librtdm_la_CPPFLAGS = \
	@XENO_USER_CFLAGS@ \
	-I$(top_srcdir)/include
