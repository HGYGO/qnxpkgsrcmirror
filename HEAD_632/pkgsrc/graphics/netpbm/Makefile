# $NetBSD: Makefile,v 1.155 2007/09/08 21:57:58 jlam Exp $

DISTNAME=	netpbm-10.34
PKGREVISION=	1
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=netpbm/}
EXTRACT_SUFX=	.tgz

MAINTAINER=	adam@NetBSD.org
HOMEPAGE=	http://netpbm.sourceforge.net/
COMMENT=	Toolkit for conversion of images between different formats

MAKE_JOBS_SAFE=	no

PKG_INSTALLATION_TYPES=	overwrite pkgviews

USE_TOOLS+=	bash:run gmake lex perl
USE_FEATURES=	snprintf

INSTALL_TARGET=	install-dev install-run
MAKE_ENV+=	INSTALL=${INSTALL:Q} STRIPFLAG=${_STRIPFLAG_INSTALL:Q} \
		pkgdir=${STAGEDIR:Q} MACHINE=${MACHINE:Q}
MAKE_FILE=	GNUmakefile
PLIST_SRC=	${WRKDIR}/PLIST_STAGE
REPLACE_PERL+=	editor/ppmfade editor/ppmshadow editor/pnmquant \
		generator/ppmrainbow manweb editor/pnmflip editor/ppmquant
STAGEDIR=	${WRKDIR}/staging

LIBS.SunOS+=	-lsocket -lnsl
LIBS.QNX+=	-lsocket -lbessel
MAKE_ENV+=	NETWORKLD=${LIBS:Q}
MAKE_FLAGS+=	PKGMANDIR=${PKGMANDIR}

WRAPPER_REORDER_CMDS+=	reorder:l:rle:netpbm

# Several of the netpbm shell scripts use bashisms, so force using
# bash for all of the shell scripts.
#
REPLACE_INTERPRETER+=	bash
REPLACE.bash.old=	.*/bin/sh
REPLACE.bash.new=	${TOOLS_PATH.bash}
REPLACE_FILES.bash=	converter/other/anytopnm
REPLACE_FILES.bash+=	converter/other/pnmtoplainpnm
REPLACE_FILES.bash+=	converter/ppm/hpcdtoppm/hpcdtoppm
REPLACE_FILES.bash+=	converter/ppm/hpcdtoppm/pcdovtoppm
REPLACE_FILES.bash+=	editor/pamstretch-gen
REPLACE_FILES.bash+=	editor/pnmindex.sh
REPLACE_FILES.bash+=	editor/pnmmargin
REPLACE_FILES.bash+=	editor/ppmquantall
REPLACE_FILES.bash+=	other/ppmtomap

.include "../../mk/bsd.prefs.mk"

# Fiasco fails to compile on Darwin-8.x.
.if !empty(MACHINE_PLATFORM:MDarwin-8.*-*)
MAKE_ENV+=	BUILD_FIASCO=N
.endif

.if ${OPSYS} == "Darwin"
MAKE_ENV+=	NETPBMLIBTYPE="dylib" NETPBMLIBSUFFIX="dylib"
.elif ${OPSYS} == "HPUX" && ${OBJECT_FMT} == "SOM"
MAKE_ENV+=	NETPBMLIBTYPE="unixshared" NETPBMLIBSUFFIX="sl"
.else
MAKE_ENV+=	NETPBMLIBTYPE="unixshared" NETPBMLIBSUFFIX="so"
.endif

.if ${PKGSRC_COMPILER} == "ido"
CPPFLAGS+=	-DSGI_IDO_CC
.endif

.include "../../graphics/jasper/buildlink3.mk"
.include "../../graphics/png/buildlink3.mk"
.include "../../graphics/tiff/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"

pre-configure:
	${CP} ${WRKSRC}/Makefile.config.in ${WRKSRC}/Makefile.config

pre-install:
	${RM} -fr ${STAGEDIR}

post-install:
	cd ${STAGEDIR} && 					\
	${MV} link/* lib && 					\
	${RM} -rf link man/web && 				\
	(rmdir man || ${TRUE}) &&				\
	${MKDIR} share/doc/netpbm &&				\
	${CP} ${WRKSRC}/doc/* share/doc/netpbm &&		\
	${MKDIR} ${PKGMANDIR}/man1 &&				\
	${MV} share/doc/netpbm/*.1	${PKGMANDIR}/man1 &&	\
	${MV} misc share/netpbm && 				\
	${CHOWN} -R ${BINOWN}:${BINGRP} . &&			\
	${FIND} * \! -type d -print | ${SORT} >${PLIST_SRC} &&	\
	${FIND} * -type d -print | 				\
	while read DIR; do					\
		${TEST} -d "${PREFIX}/$${DIR}" ||		\
			${ECHO} "@dirrm $${DIR}";		\
	done >>${PLIST_SRC} &&					\
	${PAX} -rwpppm . ${PREFIX}
	${RM} -fr ${STAGEDIR}
	${FIND} ${PREFIX}/share/doc/netpbm -type f -print |	\
		${XARGS} ${CHMOD} ${NONBINMODE}

.include "../../mk/bsd.pkg.mk"
