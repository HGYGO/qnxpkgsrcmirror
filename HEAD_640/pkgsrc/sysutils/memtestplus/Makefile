# $NetBSD: Makefile,v 1.9 2008/11/26 11:28:27 tron Exp $
#

# Note -- version number also in the do-install rule
MAJVER=2
MINVER=10

DISTNAME=		memtest86+-${MAJVER}.${MINVER}
PKGNAME=		memtestplus-${MAJVER}.${MINVER}
CATEGORIES=		sysutils
MASTER_SITES=		http://www.memtest.org/download/${MAJVER}.${MINVER}/

MAINTAINER=		smb@NetBSD.org
HOMEPAGE=		http://www.memtest.org/
COMMENT=		Thorough, stand alone memory test for x86 arch

ONLY_FOR_PLATFORM=	NetBSD-*-i386 Linux-*-i386 NetBSD-*-x86_64 Linux-*-x86_64

USE_TOOLS+=		gmake
SUBST_CLASSES+=		delcr
SUBST_STAGE.delcr=	post-build
SUBST_MESSAGE.delcr=	Deleting CRs
SUBST_FILES.delcr=	README
SUBST_SED.delcr=	-e 's/.$$//g'

.include "options.mk"

.include "../../mk/compiler.mk"

.if !empty(CC_VERSION:Mgcc-3.*)
BUILDLINK_TRANSFORM+=	rm:-fno-stack-protector
.endif

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/mdec
	${INSTALL_DATA} ${WRKSRC}/memtest.bin ${PREFIX}/mdec/memtestplus.bin
	${INSTALL_DATA} ${WRKSRC}/memtest ${PREFIX}/mdec/memtestplus
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/memtestplus
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/memtestplus
	${INSTALL_DATA} ${WRKSRC}/FAQ ${PREFIX}/share/doc/memtestplus
.if !empty(PKG_OPTIONS:Miso)
	${INSTALL_DATA} ${WRKSRC}/mt${MAJVER}${MINVER}.iso ${PREFIX}/mdec/memtestplus.iso
.endif

.include "../../mk/bsd.pkg.mk"
