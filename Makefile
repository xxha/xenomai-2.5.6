# Makefile.in generated by automake 1.10.1 from Makefile.am.
# Makefile.  Generated from Makefile.in by configure.

# Copyright (C) 1994, 1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002,
# 2003, 2004, 2005, 2006, 2007, 2008  Free Software Foundation, Inc.
# This Makefile.in is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY, to the extent permitted by law; without
# even the implied warranty of MERCHANTABILITY or FITNESS FOR A
# PARTICULAR PURPOSE.



pkgdatadir = $(datadir)/xenomai
pkglibdir = $(libdir)/xenomai
pkgincludedir = $(includedir)/xenomai
am__cd = CDPATH="$${ZSH_VERSION+.}$(PATH_SEPARATOR)" && cd
install_sh_DATA = $(install_sh) -c -m 644
install_sh_PROGRAM = $(install_sh) -c
install_sh_SCRIPT = $(install_sh) -c
INSTALL_HEADER = $(INSTALL_DATA)
transform = $(program_transform_name)
NORMAL_INSTALL = :
PRE_INSTALL = :
POST_INSTALL = :
NORMAL_UNINSTALL = :
PRE_UNINSTALL = :
POST_UNINSTALL = :
build_triplet = i686-pc-linux-gnu
host_triplet = arm-fsl-linux-gnueabi
target_triplet = arm-fsl-linux-gnueabi
subdir = .
DIST_COMMON = $(am__configure_deps) $(srcdir)/Makefile.am \
	$(srcdir)/Makefile.in $(top_srcdir)/configure
ACLOCAL_M4 = $(top_srcdir)/aclocal.m4
am__aclocal_m4_deps = $(top_srcdir)/config/ac_prog_cc_for_build.m4 \
	$(top_srcdir)/config/docbook.m4 \
	$(top_srcdir)/config/libtool.m4 \
	$(top_srcdir)/config/ltoptions.m4 \
	$(top_srcdir)/config/ltsugar.m4 \
	$(top_srcdir)/config/ltversion.m4 \
	$(top_srcdir)/config/lt~obsolete.m4 \
	$(top_srcdir)/config/version $(top_srcdir)/configure.in
am__configure_deps = $(am__aclocal_m4_deps) $(CONFIGURE_DEPENDENCIES) \
	$(ACLOCAL_M4)
am__CONFIG_DISTCLEAN_FILES = config.status config.cache config.log \
 configure.lineno config.status.lineno
mkinstalldirs = $(install_sh) -d
CONFIG_HEADER = $(top_builddir)/src/include/xeno_config.h
CONFIG_CLEAN_FILES = src/include/asm/xenomai
SOURCES =
DIST_SOURCES =
RECURSIVE_TARGETS = all-recursive check-recursive dvi-recursive \
	html-recursive info-recursive install-data-recursive \
	install-dvi-recursive install-exec-recursive \
	install-html-recursive install-info-recursive \
	install-pdf-recursive install-ps-recursive install-recursive \
	installcheck-recursive installdirs-recursive pdf-recursive \
	ps-recursive uninstall-recursive
RECURSIVE_CLEAN_TARGETS = mostlyclean-recursive clean-recursive	\
  distclean-recursive maintainer-clean-recursive
ETAGS = etags
CTAGS = ctags
DIST_SUBDIRS = $(SUBDIRS)
DISTFILES = $(DIST_COMMON) $(DIST_SOURCES) $(TEXINFOS) $(EXTRA_DIST)
distdir = $(PACKAGE)-$(VERSION)
top_distdir = $(distdir)
am__remove_distdir = \
  { test ! -d $(distdir) \
    || { find $(distdir) -type d ! -perm -200 -exec chmod u+w {} ';' \
         && rm -fr $(distdir); }; }
DIST_ARCHIVES = $(distdir).tar.gz $(distdir).tar.bz2
GZIP_ENV = --best
distuninstallcheck_listfiles = find . -type f -print
distcleancheck_listfiles = find . -type f -print
ACLOCAL = ${SHELL} /home/xxha/veex/tx300s/psos/xenomai-2.5.6/config/missing --run aclocal-1.10
ADEOS_PATCH = 
AMTAR = ${SHELL} /home/xxha/veex/tx300s/psos/xenomai-2.5.6/config/missing --run tar
AR = arm-fsl-linux-gnueabi-ar
AUTOCONF = ${SHELL} /home/xxha/veex/tx300s/psos/xenomai-2.5.6/config/missing --run autoconf
AUTOHEADER = ${SHELL} /home/xxha/veex/tx300s/psos/xenomai-2.5.6/config/missing --run autoheader
AUTOMAKE = ${SHELL} /home/xxha/veex/tx300s/psos/xenomai-2.5.6/config/missing --run automake-1.10
AWK = mawk
BUILD_EXEEXT = 
BUILD_OBJEXT = 
CC = arm-fsl-linux-gnueabi-gcc
CCAS = arm-fsl-linux-gnueabi-gcc
CCASDEPMODE = depmode=gcc3
CCASFLAGS = 
CCDEPMODE = depmode=gcc3
CC_FOR_BUILD = arm-fsl-linux-gnueabi-gcc
CFLAGS = 
CFLAGS_FOR_BUILD = -g -O2
CONFIG_STATUS_DEPENDENCIES = $(top_srcdir)/src/skins/posix/posix.wrappers
CPP = arm-fsl-linux-gnueabi-gcc -E
CPPFLAGS = 
CPPFLAGS_FOR_BUILD = 
CPP_FOR_BUILD = arm-fsl-linux-gnueabi-gcc -E
CYGPATH_W = echo
DBX_DOC_ROOT = doc/docbook
DBX_FOP = 
DBX_GEN_DOC_ROOT = doc/generated
DBX_LINT = xmllint
DBX_MAYBE_NONET = --nonet
DBX_ROOT = file:///usr/share/sgml/docbook/dtd/xml/4.2
DBX_XSLTPROC = xsltproc
DBX_XSL_ROOT = file:///usr/share/sgml/docbook/stylesheet/xsl/nwalsh
DEFS = -DHAVE_CONFIG_H
DEPDIR = .deps
DOXYGEN = 
DOXYGEN_HAVE_DOT = NO
DOXYGEN_SHOW_INCLUDE_FILES = YES
DSYMUTIL = 
DUMPBIN = 
ECHO_C = 
ECHO_N = -n
ECHO_T = 
EGREP = /bin/grep -E
EXEEXT = 
FGREP = /bin/grep -F
GREP = /bin/grep
INSTALL = /usr/bin/install -c
INSTALL_DATA = ${INSTALL} -m 644
INSTALL_PROGRAM = ${INSTALL}
INSTALL_SCRIPT = ${INSTALL}
INSTALL_STRIP_PROGRAM = $(install_sh) -c -s
LATEX_BATCHMODE = YES
LATEX_MODE = batchmode
LD = /home/xxha/veex/tx300s/cross-tools/arm-fsl-linux-gnueabi/arm-fsl-linux-gnueabi/bin/ld
LDFLAGS = 
LD_FILE_OPTION = yes
LEX = flex
LEXLIB = 
LEX_OUTPUT_ROOT = lex.yy
LIBOBJS = 
LIBS = 
LIBTOOL = $(SHELL) $(top_builddir)/libtool
LIPO = 
LNDIR = 
LN_S = ln -s
LTLIBOBJS = 
MAINT = #
MAKEINFO = ${SHELL} /home/xxha/veex/tx300s/psos/xenomai-2.5.6/config/missing --run makeinfo
MKDIR_P = /bin/mkdir -p
NM = /home/xxha/veex/tx300s/cross-tools/arm-fsl-linux-gnueabi/bin/arm-fsl-linux-gnueabi-nm -B
NMEDIT = 
OBJEXT = o
OTOOL = 
OTOOL64 = 
PACKAGE = xenomai
PACKAGE_BUGREPORT = xenomai-help@gna.org
PACKAGE_NAME = Xenomai
PACKAGE_STRING = Xenomai 2.5.6
PACKAGE_TARNAME = xenomai
PACKAGE_URL = 
PACKAGE_VERSION = 2.5.6
PATH_SEPARATOR = :
RANLIB = arm-fsl-linux-gnueabi-ranlib
SED = /bin/sed
SET_MAKE = 
SHELL = /bin/bash
STRIP = arm-fsl-linux-gnueabi-strip
VERSION = 2.5.6
XENO_BUILD_STRING = i686-pc-linux-gnu
XENO_DLOPEN_CONSTRAINT = 
XENO_HOST_STRING = arm-fsl-linux-gnueabi
XENO_LINUX_ALL_TARGETS = 
XENO_LINUX_ARCH = arm
XENO_LINUX_IMAGE = arch/arm/boot/zImage
XENO_LINUX_INSTALL_TARGET = install_image
XENO_MAYBE_DOCDIR = doc
XENO_POSIX_WRAPPERS = -Wl,@/home/xxha/veex/tx300s/psos/xenomai-2.5.6/src/skins/posix/posix.wrappers
XENO_TARGET_ARCH = arm
XENO_TEST_DIR = ${exec_prefix}/bin
XENO_USER_APP_CFLAGS = -D_GNU_SOURCE -D_REENTRANT -Wall -pipe
XENO_USER_APP_LDFLAGS = 
XENO_USER_CFLAGS = -O2 -D_GNU_SOURCE -D_REENTRANT -Wall -pipe -march=armv7-a -mfpu=vfp3 -mfloat-abi=softfp -D__XENO__ -D__IN_XENO__ -Wstrict-prototypes
XENO_USER_LDFLAGS = 
abs_builddir = /home/xxha/veex/tx300s/psos/xenomai-2.5.6
abs_srcdir = /home/xxha/veex/tx300s/psos/xenomai-2.5.6
abs_top_builddir = /home/xxha/veex/tx300s/psos/xenomai-2.5.6
abs_top_srcdir = /home/xxha/veex/tx300s/psos/xenomai-2.5.6
ac_ct_CC = 
ac_ct_CC_FOR_BUILD = 
ac_ct_DUMPBIN = 
am__include = include
am__leading_dot = .
am__quote = 
am__tar = ${AMTAR} chof - "$$tardir"
am__untar = ${AMTAR} xf -
bindir = ${exec_prefix}/bin
build = i686-pc-linux-gnu
build_alias = 
build_cpu = i686
build_os = linux-gnu
build_vendor = pc
builddir = .
datadir = ${datarootdir}
datarootdir = ${prefix}/share
docdir = ${datarootdir}/doc/${PACKAGE_TARNAME}
dvidir = ${docdir}
exec_prefix = ${prefix}
host = arm-fsl-linux-gnueabi
host_alias = arm-fsl-linux-gnueabi
host_cpu = arm
host_os = linux-gnueabi
host_vendor = fsl
htmldir = ${docdir}
includedir = ${prefix}/include
infodir = ${datarootdir}/info
install_sh = $(SHELL) /home/xxha/veex/tx300s/psos/xenomai-2.5.6/config/install-sh
libdir = ${exec_prefix}/lib
libexecdir = ${exec_prefix}/libexec
localedir = ${datarootdir}/locale
localstatedir = ${prefix}/var
lt_ECHO = echo
mandir = ${datarootdir}/man
mkdir_p = /bin/mkdir -p
oldincludedir = /usr/include
pdfdir = ${docdir}
prefix = /home/xxha/veex/tx300s/psos/xenomai-2.5.6/arm_out
program_transform_name = s,x,x,
psdir = ${docdir}
sbindir = ${exec_prefix}/sbin
sharedstatedir = ${prefix}/com
srcdir = .
sysconfdir = ${prefix}/etc
target = arm-fsl-linux-gnueabi
target_alias = 
target_cpu = arm
target_os = linux-gnueabi
target_vendor = fsl
top_build_prefix = 
top_builddir = .
top_srcdir = .
ACLOCAL_AMFLAGS = -I config
SUDO = sudo
SUBDIRS = src include config doc scripts
EXTRA_DIST = CREDITS README.INSTALL TROUBLESHOOTING ksrc examples debian
all: all-recursive

.SUFFIXES:
am--refresh:
	@:
$(srcdir)/Makefile.in: # $(srcdir)/Makefile.am  $(am__configure_deps)
	@for dep in $?; do \
	  case '$(am__configure_deps)' in \
	    *$$dep*) \
	      echo ' cd $(srcdir) && $(AUTOMAKE) --foreign '; \
	      cd $(srcdir) && $(AUTOMAKE) --foreign  \
		&& exit 0; \
	      exit 1;; \
	  esac; \
	done; \
	echo ' cd $(top_srcdir) && $(AUTOMAKE) --foreign  Makefile'; \
	cd $(top_srcdir) && \
	  $(AUTOMAKE) --foreign  Makefile
.PRECIOUS: Makefile
Makefile: $(srcdir)/Makefile.in $(top_builddir)/config.status
	@case '$?' in \
	  *config.status*) \
	    echo ' $(SHELL) ./config.status'; \
	    $(SHELL) ./config.status;; \
	  *) \
	    echo ' cd $(top_builddir) && $(SHELL) ./config.status $@ $(am__depfiles_maybe)'; \
	    cd $(top_builddir) && $(SHELL) ./config.status $@ $(am__depfiles_maybe);; \
	esac;

$(top_builddir)/config.status: $(top_srcdir)/configure $(CONFIG_STATUS_DEPENDENCIES)
	$(SHELL) ./config.status --recheck

$(top_srcdir)/configure: # $(am__configure_deps)
	cd $(srcdir) && $(AUTOCONF)
$(ACLOCAL_M4): # $(am__aclocal_m4_deps)
	cd $(srcdir) && $(ACLOCAL) $(ACLOCAL_AMFLAGS)

mostlyclean-libtool:
	-rm -f *.lo

clean-libtool:
	-rm -rf .libs _libs

distclean-libtool:
	-rm -f libtool

# This directory's subdirectories are mostly independent; you can cd
# into them and run `make' without going through this Makefile.
# To change the values of `make' variables: instead of editing Makefiles,
# (1) if the variable is set in `config.status', edit `config.status'
#     (which will cause the Makefiles to be regenerated when you run `make');
# (2) otherwise, pass the desired values on the `make' command line.
$(RECURSIVE_TARGETS):
	@failcom='exit 1'; \
	for f in x $$MAKEFLAGS; do \
	  case $$f in \
	    *=* | --[!k]*);; \
	    *k*) failcom='fail=yes';; \
	  esac; \
	done; \
	dot_seen=no; \
	target=`echo $@ | sed s/-recursive//`; \
	list='$(SUBDIRS)'; for subdir in $$list; do \
	  echo "Making $$target in $$subdir"; \
	  if test "$$subdir" = "."; then \
	    dot_seen=yes; \
	    local_target="$$target-am"; \
	  else \
	    local_target="$$target"; \
	  fi; \
	  (cd $$subdir && $(MAKE) $(AM_MAKEFLAGS) $$local_target) \
	  || eval $$failcom; \
	done; \
	if test "$$dot_seen" = "no"; then \
	  $(MAKE) $(AM_MAKEFLAGS) "$$target-am" || exit 1; \
	fi; test -z "$$fail"

$(RECURSIVE_CLEAN_TARGETS):
	@failcom='exit 1'; \
	for f in x $$MAKEFLAGS; do \
	  case $$f in \
	    *=* | --[!k]*);; \
	    *k*) failcom='fail=yes';; \
	  esac; \
	done; \
	dot_seen=no; \
	case "$@" in \
	  distclean-* | maintainer-clean-*) list='$(DIST_SUBDIRS)' ;; \
	  *) list='$(SUBDIRS)' ;; \
	esac; \
	rev=''; for subdir in $$list; do \
	  if test "$$subdir" = "."; then :; else \
	    rev="$$subdir $$rev"; \
	  fi; \
	done; \
	rev="$$rev ."; \
	target=`echo $@ | sed s/-recursive//`; \
	for subdir in $$rev; do \
	  echo "Making $$target in $$subdir"; \
	  if test "$$subdir" = "."; then \
	    local_target="$$target-am"; \
	  else \
	    local_target="$$target"; \
	  fi; \
	  (cd $$subdir && $(MAKE) $(AM_MAKEFLAGS) $$local_target) \
	  || eval $$failcom; \
	done && test -z "$$fail"
tags-recursive:
	list='$(SUBDIRS)'; for subdir in $$list; do \
	  test "$$subdir" = . || (cd $$subdir && $(MAKE) $(AM_MAKEFLAGS) tags); \
	done
ctags-recursive:
	list='$(SUBDIRS)'; for subdir in $$list; do \
	  test "$$subdir" = . || (cd $$subdir && $(MAKE) $(AM_MAKEFLAGS) ctags); \
	done

ID: $(HEADERS) $(SOURCES) $(LISP) $(TAGS_FILES)
	list='$(SOURCES) $(HEADERS) $(LISP) $(TAGS_FILES)'; \
	unique=`for i in $$list; do \
	    if test -f "$$i"; then echo $$i; else echo $(srcdir)/$$i; fi; \
	  done | \
	  $(AWK) '{ files[$$0] = 1; nonemtpy = 1; } \
	      END { if (nonempty) { for (i in files) print i; }; }'`; \
	mkid -fID $$unique
tags: TAGS

TAGS: tags-recursive $(HEADERS) $(SOURCES)  $(TAGS_DEPENDENCIES) \
		$(TAGS_FILES) $(LISP)
	tags=; \
	here=`pwd`; \
	if ($(ETAGS) --etags-include --version) >/dev/null 2>&1; then \
	  include_option=--etags-include; \
	  empty_fix=.; \
	else \
	  include_option=--include; \
	  empty_fix=; \
	fi; \
	list='$(SUBDIRS)'; for subdir in $$list; do \
	  if test "$$subdir" = .; then :; else \
	    test ! -f $$subdir/TAGS || \
	      tags="$$tags $$include_option=$$here/$$subdir/TAGS"; \
	  fi; \
	done; \
	list='$(SOURCES) $(HEADERS)  $(LISP) $(TAGS_FILES)'; \
	unique=`for i in $$list; do \
	    if test -f "$$i"; then echo $$i; else echo $(srcdir)/$$i; fi; \
	  done | \
	  $(AWK) '{ files[$$0] = 1; nonempty = 1; } \
	      END { if (nonempty) { for (i in files) print i; }; }'`; \
	if test -z "$(ETAGS_ARGS)$$tags$$unique"; then :; else \
	  test -n "$$unique" || unique=$$empty_fix; \
	  $(ETAGS) $(ETAGSFLAGS) $(AM_ETAGSFLAGS) $(ETAGS_ARGS) \
	    $$tags $$unique; \
	fi
ctags: CTAGS
CTAGS: ctags-recursive $(HEADERS) $(SOURCES)  $(TAGS_DEPENDENCIES) \
		$(TAGS_FILES) $(LISP)
	tags=; \
	list='$(SOURCES) $(HEADERS)  $(LISP) $(TAGS_FILES)'; \
	unique=`for i in $$list; do \
	    if test -f "$$i"; then echo $$i; else echo $(srcdir)/$$i; fi; \
	  done | \
	  $(AWK) '{ files[$$0] = 1; nonempty = 1; } \
	      END { if (nonempty) { for (i in files) print i; }; }'`; \
	test -z "$(CTAGS_ARGS)$$tags$$unique" \
	  || $(CTAGS) $(CTAGSFLAGS) $(AM_CTAGSFLAGS) $(CTAGS_ARGS) \
	     $$tags $$unique

GTAGS:
	here=`$(am__cd) $(top_builddir) && pwd` \
	  && cd $(top_srcdir) \
	  && gtags -i $(GTAGS_ARGS) $$here

distclean-tags:
	-rm -f TAGS ID GTAGS GRTAGS GSYMS GPATH tags

distdir: $(DISTFILES)
	$(am__remove_distdir)
	test -d $(distdir) || mkdir $(distdir)
	@srcdirstrip=`echo "$(srcdir)" | sed 's/[].[^$$\\*]/\\\\&/g'`; \
	topsrcdirstrip=`echo "$(top_srcdir)" | sed 's/[].[^$$\\*]/\\\\&/g'`; \
	list='$(DISTFILES)'; \
	  dist_files=`for file in $$list; do echo $$file; done | \
	  sed -e "s|^$$srcdirstrip/||;t" \
	      -e "s|^$$topsrcdirstrip/|$(top_builddir)/|;t"`; \
	case $$dist_files in \
	  */*) $(MKDIR_P) `echo "$$dist_files" | \
			   sed '/\//!d;s|^|$(distdir)/|;s,/[^/]*$$,,' | \
			   sort -u` ;; \
	esac; \
	for file in $$dist_files; do \
	  if test -f $$file || test -d $$file; then d=.; else d=$(srcdir); fi; \
	  if test -d $$d/$$file; then \
	    dir=`echo "/$$file" | sed -e 's,/[^/]*$$,,'`; \
	    if test -d $(srcdir)/$$file && test $$d != $(srcdir); then \
	      cp -pR $(srcdir)/$$file $(distdir)$$dir || exit 1; \
	    fi; \
	    cp -pR $$d/$$file $(distdir)$$dir || exit 1; \
	  else \
	    test -f $(distdir)/$$file \
	    || cp -p $$d/$$file $(distdir)/$$file \
	    || exit 1; \
	  fi; \
	done
	list='$(DIST_SUBDIRS)'; for subdir in $$list; do \
	  if test "$$subdir" = .; then :; else \
	    test -d "$(distdir)/$$subdir" \
	    || $(MKDIR_P) "$(distdir)/$$subdir" \
	    || exit 1; \
	    distdir=`$(am__cd) $(distdir) && pwd`; \
	    top_distdir=`$(am__cd) $(top_distdir) && pwd`; \
	    (cd $$subdir && \
	      $(MAKE) $(AM_MAKEFLAGS) \
	        top_distdir="$$top_distdir" \
	        distdir="$$distdir/$$subdir" \
		am__remove_distdir=: \
		am__skip_length_check=: \
	        distdir) \
	      || exit 1; \
	  fi; \
	done
	$(MAKE) $(AM_MAKEFLAGS) \
	  top_distdir="$(top_distdir)" distdir="$(distdir)" \
	  dist-hook
	-find $(distdir) -type d ! -perm -777 -exec chmod a+rwx {} \; -o \
	  ! -type d ! -perm -444 -links 1 -exec chmod a+r {} \; -o \
	  ! -type d ! -perm -400 -exec chmod a+r {} \; -o \
	  ! -type d ! -perm -444 -exec $(install_sh) -c -m a+r {} {} \; \
	|| chmod -R a+r $(distdir)
dist-gzip: distdir
	tardir=$(distdir) && $(am__tar) | GZIP=$(GZIP_ENV) gzip -c >$(distdir).tar.gz
	$(am__remove_distdir)
dist-bzip2: distdir
	tardir=$(distdir) && $(am__tar) | bzip2 -9 -c >$(distdir).tar.bz2
	$(am__remove_distdir)

dist-lzma: distdir
	tardir=$(distdir) && $(am__tar) | lzma -9 -c >$(distdir).tar.lzma
	$(am__remove_distdir)

dist-tarZ: distdir
	tardir=$(distdir) && $(am__tar) | compress -c >$(distdir).tar.Z
	$(am__remove_distdir)

dist-shar: distdir
	shar $(distdir) | GZIP=$(GZIP_ENV) gzip -c >$(distdir).shar.gz
	$(am__remove_distdir)

dist-zip: distdir
	-rm -f $(distdir).zip
	zip -rq $(distdir).zip $(distdir)
	$(am__remove_distdir)

dist dist-all: distdir
	tardir=$(distdir) && $(am__tar) | GZIP=$(GZIP_ENV) gzip -c >$(distdir).tar.gz
	tardir=$(distdir) && $(am__tar) | bzip2 -9 -c >$(distdir).tar.bz2
	$(am__remove_distdir)

# This target untars the dist file and tries a VPATH configuration.  Then
# it guarantees that the distribution is self-contained by making another
# tarfile.
distcheck: dist
	case '$(DIST_ARCHIVES)' in \
	*.tar.gz*) \
	  GZIP=$(GZIP_ENV) gunzip -c $(distdir).tar.gz | $(am__untar) ;;\
	*.tar.bz2*) \
	  bunzip2 -c $(distdir).tar.bz2 | $(am__untar) ;;\
	*.tar.lzma*) \
	  unlzma -c $(distdir).tar.lzma | $(am__untar) ;;\
	*.tar.Z*) \
	  uncompress -c $(distdir).tar.Z | $(am__untar) ;;\
	*.shar.gz*) \
	  GZIP=$(GZIP_ENV) gunzip -c $(distdir).shar.gz | unshar ;;\
	*.zip*) \
	  unzip $(distdir).zip ;;\
	esac
	chmod -R a-w $(distdir); chmod a+w $(distdir)
	mkdir $(distdir)/_build
	mkdir $(distdir)/_inst
	chmod a-w $(distdir)
	dc_install_base=`$(am__cd) $(distdir)/_inst && pwd | sed -e 's,^[^:\\/]:[\\/],/,'` \
	  && dc_destdir="$${TMPDIR-/tmp}/am-dc-$$$$/" \
	  && cd $(distdir)/_build \
	  && ../configure --srcdir=.. --prefix="$$dc_install_base" \
	    $(DISTCHECK_CONFIGURE_FLAGS) \
	  && $(MAKE) $(AM_MAKEFLAGS) \
	  && $(MAKE) $(AM_MAKEFLAGS) dvi \
	  && $(MAKE) $(AM_MAKEFLAGS) check \
	  && $(MAKE) $(AM_MAKEFLAGS) install \
	  && $(MAKE) $(AM_MAKEFLAGS) installcheck \
	  && $(MAKE) $(AM_MAKEFLAGS) uninstall \
	  && $(MAKE) $(AM_MAKEFLAGS) distuninstallcheck_dir="$$dc_install_base" \
	        distuninstallcheck \
	  && chmod -R a-w "$$dc_install_base" \
	  && ({ \
	       (cd ../.. && umask 077 && mkdir "$$dc_destdir") \
	       && $(MAKE) $(AM_MAKEFLAGS) DESTDIR="$$dc_destdir" install \
	       && $(MAKE) $(AM_MAKEFLAGS) DESTDIR="$$dc_destdir" uninstall \
	       && $(MAKE) $(AM_MAKEFLAGS) DESTDIR="$$dc_destdir" \
	            distuninstallcheck_dir="$$dc_destdir" distuninstallcheck; \
	      } || { rm -rf "$$dc_destdir"; exit 1; }) \
	  && rm -rf "$$dc_destdir" \
	  && $(MAKE) $(AM_MAKEFLAGS) dist \
	  && rm -rf $(DIST_ARCHIVES) \
	  && $(MAKE) $(AM_MAKEFLAGS) distcleancheck
	$(am__remove_distdir)
	@(echo "$(distdir) archives ready for distribution: "; \
	  list='$(DIST_ARCHIVES)'; for i in $$list; do echo $$i; done) | \
	  sed -e 1h -e 1s/./=/g -e 1p -e 1x -e '$$p' -e '$$x'
distuninstallcheck:
	@cd $(distuninstallcheck_dir) \
	&& test `$(distuninstallcheck_listfiles) | wc -l` -le 1 \
	   || { echo "ERROR: files left after uninstall:" ; \
	        if test -n "$(DESTDIR)"; then \
	          echo "  (check DESTDIR support)"; \
	        fi ; \
	        $(distuninstallcheck_listfiles) ; \
	        exit 1; } >&2
distcleancheck: distclean
	@if test '$(srcdir)' = . ; then \
	  echo "ERROR: distcleancheck can only run from a VPATH build" ; \
	  exit 1 ; \
	fi
	@test `$(distcleancheck_listfiles) | wc -l` -eq 0 \
	  || { echo "ERROR: files left in build directory after distclean:" ; \
	       $(distcleancheck_listfiles) ; \
	       exit 1; } >&2
check-am: all-am
check: check-recursive
all-am: Makefile
installdirs: installdirs-recursive
installdirs-am:
install: install-recursive
install-exec: install-exec-recursive
install-data: install-data-recursive
uninstall: uninstall-recursive

install-am: all-am
	@$(MAKE) $(AM_MAKEFLAGS) install-exec-am install-data-am

installcheck: installcheck-recursive
install-strip:
	$(MAKE) $(AM_MAKEFLAGS) INSTALL_PROGRAM="$(INSTALL_STRIP_PROGRAM)" \
	  install_sh_PROGRAM="$(INSTALL_STRIP_PROGRAM)" INSTALL_STRIP_FLAG=-s \
	  `test -z '$(STRIP)' || \
	    echo "INSTALL_PROGRAM_ENV=STRIPPROG='$(STRIP)'"` install
mostlyclean-generic:

clean-generic:

distclean-generic:
	-test -z "$(CONFIG_CLEAN_FILES)" || rm -f $(CONFIG_CLEAN_FILES)

maintainer-clean-generic:
	@echo "This command is intended for maintainers to use"
	@echo "it deletes files that may require special tools to rebuild."
clean: clean-recursive

clean-am: clean-generic clean-libtool mostlyclean-am

distclean: distclean-recursive
	-rm -f $(am__CONFIG_DISTCLEAN_FILES)
	-rm -f Makefile
distclean-am: clean-am distclean-generic distclean-libtool \
	distclean-tags

dvi: dvi-recursive

dvi-am:

html: html-recursive

info: info-recursive

info-am:

install-data-am:

install-dvi: install-dvi-recursive

install-exec-am: install-exec-local

install-html: install-html-recursive

install-info: install-info-recursive

install-man:

install-pdf: install-pdf-recursive

install-ps: install-ps-recursive

installcheck-am:

maintainer-clean: maintainer-clean-recursive
	-rm -f $(am__CONFIG_DISTCLEAN_FILES)
	-rm -rf $(top_srcdir)/autom4te.cache
	-rm -f Makefile
maintainer-clean-am: distclean-am maintainer-clean-generic

mostlyclean: mostlyclean-recursive

mostlyclean-am: mostlyclean-generic mostlyclean-libtool

pdf: pdf-recursive

pdf-am:

ps: ps-recursive

ps-am:

uninstall-am:

.MAKE: $(RECURSIVE_CLEAN_TARGETS) $(RECURSIVE_TARGETS) install-am \
	install-strip

.PHONY: $(RECURSIVE_CLEAN_TARGETS) $(RECURSIVE_TARGETS) CTAGS GTAGS \
	all all-am am--refresh check check-am clean clean-generic \
	clean-libtool ctags ctags-recursive dist dist-all dist-bzip2 \
	dist-gzip dist-hook dist-lzma dist-shar dist-tarZ dist-zip \
	distcheck distclean distclean-generic distclean-libtool \
	distclean-tags distcleancheck distdir distuninstallcheck dvi \
	dvi-am html html-am info info-am install install-am \
	install-data install-data-am install-dvi install-dvi-am \
	install-exec install-exec-am install-exec-local install-html \
	install-html-am install-info install-info-am install-man \
	install-pdf install-pdf-am install-ps install-ps-am \
	install-strip installcheck installcheck-am installdirs \
	installdirs-am maintainer-clean maintainer-clean-generic \
	mostlyclean mostlyclean-generic mostlyclean-libtool pdf pdf-am \
	ps ps-am tags tags-recursive uninstall uninstall-am


dist-hook:
	rm -fr `find $(distdir) -name '.svn' -o -name CVS  -o -name '.#*' \
		-o -name '*~' -o -name autom4te.cache`
	test -e $(srcdir)/doc || rm -rf $(distdir)/doc

dev devices:
	@$(mkinstalldirs) $(DESTDIR)/dev; \
	if test x`id -u` = x0; then \
	   sudo= ; \
	else if test \! "x`type $(SUDO)`" = x ; then \
	   echo "sudo found (sudo is $(SUDO)), testing it..." ; \
	   $(SUDO) sh -c "( mknod $(DESTDIR)/dev/dummy c 150 0 && rm -f $(DESTDIR)/dev/dummy )" && \
	   sudo="$(SUDO)" || { \
echo '*** Warning: you are not super-user and sudo does not work, real-time devices' ; \
echo '*** nodes will not be created.' ; \
echo '*** If you do not create these devices by hand, Xenomai test programs will not' ; \
echo '*** work.' ; \
echo '*** To create these devices please run "make devices" with super-user' ; \
echo '*** privileges.' ; \
	     exit 0 ; } ; \
	   echo 'sudo is working.' ; \
	   fi ; \
	fi ; \
	if test -r $(DESTDIR)/etc/udev/udev.rules ; then \
	   for f in $(srcdir)/ksrc/nucleus/udev/*.rules ; do \
	   b=`basename $$f` ; \
	   grep -q Xenomai:`basename $$b .rules` $(DESTDIR)/etc/udev/udev.rules || \
	   $$sudo sh -c "( echo ; cat $$f ) >> $(DESTDIR)/etc/udev/udev.rules" ; \
	   done ; \
	else if test -d $(DESTDIR)/etc/udev/rules.d ; then \
	      for f in $(srcdir)/ksrc/nucleus/udev/*.rules ; do \
		 sudo cp $$f $(DESTDIR)/etc/udev/rules.d/ ; \
	      done ; \
	   fi ; \
	fi ; \
	for n in `seq 0 31` ; do \
	   f="$(DESTDIR)/dev/rtp$$n" ; \
	   if test \! -c $$f ; then \
	      $$sudo mknod -m 666 $$f c 150 $$n ; \
	   fi ; \
	done ; \
	if test \! -c $(DESTDIR)/dev/rtheap ; then \
	  $$sudo mknod -m 666 $(DESTDIR)/dev/rtheap c 10 254 ; \
	fi

install-exec-local: devices

install-user:
	$(MAKE) SUDO=false install

##linux/%: linux/.xenomai-prepared FORCE
##	$(top_srcdir)/scripts/prepare-kernel.sh \
##	     --adeos="$(ADEOS_PATCH)" --linux=linux \
##	     --arch=$(XENO_LINUX_ARCH) && \
##	cross=`expr "$(CC)" : '\(.*\)gcc' || :` && \
##	cd linux && $(MAKE) $* \
##		ARCH=$(XENO_LINUX_ARCH) CC="$(CC)" CROSS_COMPILE=$$cross

##linux/all: linux/.xenomai-prepared FORCE
##	$(top_srcdir)/scripts/prepare-kernel.sh \
##	     --adeos="$(ADEOS_PATCH)" --linux=linux \
##	     --arch=$(XENO_LINUX_ARCH) && \
##	cross=`expr "$(CC)" : '\(.*\)gcc' || :` && \
##	cd linux && $(MAKE) $(XENO_LINUX_ALL_TARGETS) \
##		ARCH=$(XENO_LINUX_ARCH) CC="$(CC)" CROSS_COMPILE=$$cross

#linux/%: linux/.xenomai-prepared FORCE
#	cross=`expr "$(CC)" : '\(.*\)gcc' || :` && \
#	cd linux && $(MAKE) $* \
#		ARCH=$(XENO_LINUX_ARCH) CC="$(CC)" CROSS_COMPILE=$$cross

#linux/all: linux/.xenomai-prepared FORCE
#	cross=`expr "$(CC)" : '\(.*\)gcc' || :` && \
#	cd linux && $(MAKE) $(XENO_LINUX_ALL_TARGETS) \
#		ARCH=$(XENO_LINUX_ARCH) CC="$(CC)" CROSS_COMPILE=$$cross

#linux/.xenomai-prepared: config.status
#	./config.status linux

#.PHONY: FORCE

#linux/install: linux/all
#	@targets=modules_install ; \
#	sudo=; if test x`id -u` = x0; then targets="$$targets install"; else \
#	if test \! "x`type $(SUDO)`" = x && $(SUDO) true; then sudo=$(SUDO); \
#	targets="$$targets install"; fi; fi && \
#	$(mkinstalldirs) $(DESTDIR) && \
#	$$sudo $(mkinstalldirs) $(DESTDIR)/boot && \
#	cross=`expr "$(CC)" : '\(.*\)gcc' || :` && \
#	cd linux && $$sudo $(MAKE) $$targets \
#	   ARCH=$(XENO_LINUX_ARCH) CC="$(CC)" CROSS_COMPILE=$$cross \
#	   INSTALL_PATH=$(DESTDIR)/boot \
#	   INSTALL_MOD_PATH=$(DESTDIR)

# For architectures that do not support the install target, provide our own
# installation target that simply copy the kernel image and System.map.
#linux/install_image: linux/all
#	sudo=; if test x`id -u` != x0 && test \! "x`type $(SUDO)`" = x && \
#	$(SUDO) true ; then sudo=$(SUDO) ; fi && \
#	$(mkinstalldirs) $(DESTDIR) && \
#	$$sudo $(mkinstalldirs) $(DESTDIR)/boot && \
#	cross=`expr "$(CC)" : '\(.*\)gcc' || :` && \
#	cd linux && $$sudo $(MAKE) modules_install \
#	   ARCH=$(XENO_LINUX_ARCH) CC="$(CC)" CROSS_COMPILE=$$cross \
#	   INSTALL_MOD_PATH=$(DESTDIR) && \
#	$$sudo cp $(XENO_LINUX_IMAGE) System.map $(DESTDIR)/boot

#distclean-linux:
#	@test -e linux/.config && \
#		mv linux/.config linux/.config.saved.xenomai ; \
#	$(MAKE) linux/distclean ; \
#	test -e linux/.config.saved.xenomai && \
#		mv linux/.config.saved.xenomai linux/.config

#config oldconfig mconfig menuconfig gconfig xconfig %defconfig:
#	$(MAKE) linux/$@

#all-recursive: linux/all

#clean-recursive: linux/clean

#distclean-recursive: distclean-linux

#install-recursive: linux/$(XENO_LINUX_INSTALL_TARGET)
# Tell versions [3.59,3.63) of GNU make to not export all variables.
# Otherwise a system limit (for SysV at least) may be exceeded.
.NOEXPORT:
