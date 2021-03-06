# $NetBSD: Makefile,v 1.42 2008/07/14 02:03:12 dholland Exp $

DISTNAME=		sather-1.2.3
CATEGORIES=		lang
MASTER_SITES=		${MASTER_SITE_GNU:=sather/}

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://www.gnu.org/software/sather/
COMMENT=		Compiler for the Sather object oriented programming language
#LICENSE=		gnu-gpl-v3 gnu-lgpl-v3

PKG_DESTDIR_SUPPORT=	user-destdir

USE_TOOLS+=		gmake makeinfo pax perl:run

BUILD_TARGET=		full optional
INFO_FILES=		# PLIST

REPLACE_PERL=		Browser/Web/ps2gif

SUBST_CLASSES+=		sather-configure
SUBST_STAGE.sather-configure=	post-wrapper
SUBST_MESSAGE.sather-configure=	Configuring sources
SUBST_FILES.sather-configure=			\
	Boot/sacomp.code/Makefile		\
	Library/System/unix.sa			\
	System/Common/CONFIG.proto		\
	System/Platforms/${LOWER_OPSYS}/CONFIG	\
	System/Platforms/X/Platform.module	\
	debian/bin-wrapper			\
	Browser/Web/convert-1.1			\
	Browser/Web/gen_html_class_index	\
	Browser/Web/gen_html_sa_files		\
	Browser/Web/gen_html_shortflat		\
	Browser/Web/gen_html_top_level		\
	Browser/Web/gen_mml_sa_files		\
	Browser/Web/gen_mml_shortflat		\
	Browser/Web/graph2dot
SUBST_SED.sather-configure=					\
	-e 's:@CC@:${CC}:g'					\
	-e 's:@CFLAGS@:${CFLAGS}:g'				\
	-e 's:@GMAKE@:${GMAKE}:g'				\
	-e 's:@PREFIX@:${PREFIX}:g'				\
	-e 's:@X11BASE@:${X11BASE}:g'				\
	-e 's:@GC_PREFIX@:${BUILDLINK_PREFIX.boehm-gc}:g'	\
	-e 's:@TCL_PREFIX@:${BUILDLINK_PREFIX.tcl}:g'		\
	-e 's:@TK_PREFIX@:${BUILDLINK_PREFIX.tk}:g'		\
	-e 's:@LINKER_RPATH_FLAG@:${LINKER_RPATH_FLAG}:g'	\
	-e 's:@COMPILER_RPATH_FLAG@:${COMPILER_RPATH_FLAG}:g'

INSTALLATION_DIRS=	bin ${PKGINFODIR} ${PKGMANDIR}/man1 lib/sather \
			share/doc/sather share/emacs/site-lisp

post-patch:
	ln -s netbsd ${WRKSRC}/System/Platforms/dragonfly

post-build:
	cd ${WRKSRC}/Emacs;						\
		makeinfo sather.texinfo; 				\
		makeinfo sather-tutorial.texinfo; 			\
		makeinfo sather-mode.texinfo
	${RM} -fr ${WRKSRC}/System/Platforms/dualgui/dual_gui_server.code

do-install:
	${INSTALL_PROGRAM_DIR} ${DESTDIR}${PREFIX}/lib/sather/Bin
	${INSTALL_PROGRAM} ${WRKSRC}/Bin/sacomp ${WRKSRC}/Bin/sabrowse	\
		${DESTDIR}${PREFIX}/lib/sather/Bin
	${INSTALL_SCRIPT} ${WRKSRC}/Bin/PP ${WRKSRC}/Bin/gen_html	\
		${WRKSRC}/Bin/saprep ${DESTDIR}${PREFIX}/lib/sather/Bin
	${INSTALL_SCRIPT} ${WRKSRC}/debian/bin-wrapper			\
		${DESTDIR}${PREFIX}/lib/sather/Bin
	 ${LN} -sf ../lib/sather/Bin/bin-wrapper ${DESTDIR}${PREFIX}/bin/sacomp
	 ${LN} -sf ../lib/sather/Bin/bin-wrapper ${DESTDIR}${PREFIX}/bin/sabrowse
	cd ${WRKSRC} && pax -s ',.*\.sav,,' -rw Library		\
		System/FORBID						\
		System/Debug						\
		System/Common/*.c System/Common/*.h			\
		System/Common/*.module System/Common/CONFIG		\
		System/Platforms/f77 System/Platforms/${LOWER_OPSYS}	\
		System/Platforms/X System/Platforms/dualgui		\
		System/Platforms/gui System/Platforms/tcltk		\
		Browser	${DESTDIR}${PREFIX}/lib/sather
	${FIND} ${DESTDIR}${PREFIX}/lib/sather				\
		-name \*.config -o -name Makefile 			\
		-o -name \*.orig -print | ${XARGS} ${RM} -f
	cd ${WRKSRC}/Emacs; for f in *.info *.info-[0-9]*; do		\
		${TEST} ! -f "$$f" ||					\
		${INSTALL_DATA} "$$f" ${DESTDIR}${PREFIX}/${PKGINFODIR};\
	done
	cd ${WRKSRC}/Doc && pax -rw -s ',.*/man.*,,' .		\
		${DESTDIR}${PREFIX}/share/doc/sather
	${INSTALL_MAN} ${WRKSRC}/Doc/man/man1/sacomp.1			\
		${DESTDIR}${PREFIX}/${PKGMANDIR}/man1
	${INSTALL_MAN} ${WRKSRC}/Doc/man/man1/sabrowse.1		\
		${DESTDIR}${PREFIX}/${PKGMANDIR}/man1
	${INSTALL_DATA} ${WRKSRC}/Emacs/*.el				\
		${DESTDIR}${PREFIX}/share/emacs/site-lisp

.include "../../devel/boehm-gc/buildlink3.mk"
.include "../../x11/tk/buildlink3.mk"
.include "../../lang/tcl/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
