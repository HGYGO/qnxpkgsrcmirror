# $NetBSD: Makefile,v 1.42 2007/01/11 19:08:50 gdt Exp $
#

DISTNAME=	zip1-1.1
PKGREVISION=	2
CATEGORIES=	archivers
MASTER_SITES=	ftp://ftp.info-zip.org/pub/infozip/src/ \
		http://ftp.uni-koeln.de/util/arc/
DISTFILES=	zip11.zip zcrypt10.zip

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.info-zip.org/pub/infozip/
COMMENT=	Create/update ZIP files compatible with pkzip version 1

LICENSE=	generic-nonlicense
RESTRICTED=	Do not modify.  Do not sell for profit.
NO_SRC_ON_CDROM=${RESTRICTED}
NO_BIN_ON_CDROM=${RESTRICTED}

PKG_INSTALLATION_TYPES=	overwrite pkgviews

WRKSRC=		${WRKDIR}
MAKE_FILE=	makefile
BUILD_TARGET=	zip zipcloak

.include "../../mk/bsd.prefs.mk"

MAKE_FLAGS+=	CFLAGS=${CFLAGS:M*:Q}
.if ${OPSYS} == "Linux" || ${OPSYS} == "Interix" || ${OPSYS} == "Darwin" || ${OPSYS} == "DragonFly"
CFLAGS+=	-DSYSV -DMODERN -DTERMIOS
.else
CFLAGS+=	-DDIRENT
MAKE_FLAGS+=	LFLAGS2=-lcompat
.endif

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1

do-install:
	cd ${WRKSRC} && ${INSTALL_PROGRAM} zip ${PREFIX}/bin/zip1
	cd ${WRKSRC} && ${INSTALL_MAN} zip.1 ${PREFIX}/${PKGMANDIR}/man1/zip1.1
	cd ${WRKSRC} && ${INSTALL_PROGRAM} zipcloak ${PREFIX}/bin/zipcloak1
	${LN} -fs zip1.1 ${PREFIX}/${PKGMANDIR}/man1/zipcloak1.1

.include "../../mk/bsd.pkg.mk"
