# $NetBSD: Makefile,v 1.2 2008/05/26 02:13:16 joerg Exp $
#

DISTNAME=		mopac7
PKGNAME=		mopac-7.0
CATEGORIES=		biology math
MASTER_SITES=		http://server.ccl.net/cca/software/LINUX/mopac7/
EXTRACT_SUFX=		.tar.Z
DISTFILES=		${DEFAULT_DISTFILES} mopac7-man.tar.gz

PATCH_SITES=		${MASTER_SITES:=old-version-95.06.21/}
PATCHFILES=		mopac7-linux.diff.gz
PATCH_DIST_STRIP=	-p1

MAINTAINER=		oishi@ims.ac.jp
HOMEPAGE=		http://server.ccl.net/cca/software/LINUX/mopac7/index.shtml
COMMENT=		Molecular energy calculation program

PKG_DESTDIR_SUPPORT=	user-destdir

WRKSRC=			${WRKDIR}/mopac7
BUILD_TARGET=		MOPAC7
USE_TOOLS+=		gmake pax
USE_LANGUAGES=		fortran
PKG_FC=			f2c-f77

INSTALLATION_DIRS=	bin share/mopac7/sample

pre-build:
	cp ${WRKSRC}/esp.rof ${WRKSRC}/esp.f
	rm -f ${WRKSRC}/Makefile
	cp ${FILESDIR}/Makefile ${WRKSRC}

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/mopac ${DESTDIR}${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/MOPAC7 ${DESTDIR}${PREFIX}/bin
	cd ${WRKSRC} && pax -wr test_* \
	  ${DESTDIR}${PREFIX}/share/mopac7/sample
	cd ${WRKDIR} && pax -wr mopac7-man ${DESTDIR}${PREFIX}/share/mopac7

# "g77" can not be used for external function

.include "../../lang/f2c/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
