# $NetBSD: Makefile,v 1.46 2007/05/21 10:01:44 joerg Exp $
#

DISTNAME=	nmap-4.20
PKGNAME=	nmapfe-0.9.5
PKGREVISION=	32
CATEGORIES=	net security
MASTER_SITES=	http://insecure.org/nmap/dist/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	salo@NetBSD.org
HOMEPAGE=	http://insecure.org/nmap/
COMMENT=	Graphical front end to the nmap port scanner

DEPENDS+=	nmap>=2<5:../../net/nmap

GNU_CONFIGURE=	YES
USE_TOOLS+=	pkg-config

PATCHDIR=	${.CURDIR}/../../net/nmap/patches
DISTINFO_FILE=	${.CURDIR}/../../net/nmap/distinfo

CONFIGURE_DIRS=	nbase nmapfe
BUILD_DIRS=	nbase nmapfe

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/nmapfe/nmapfe ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/docs/nmapfe.1 ${PREFIX}/${PKGMANDIR}/man1

.include "../../x11/gtk2/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
