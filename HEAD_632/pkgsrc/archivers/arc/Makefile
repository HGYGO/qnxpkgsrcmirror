# $NetBSD: Makefile,v 1.31 2006/10/04 20:45:46 wiz Exp $

DISTNAME=	arc-5.21o
CATEGORIES=	archivers
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=arc/}
EXTRACT_SUFX=	.tgz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://sourceforge.net/projects/arc/
COMMENT=	Create & extract files from DOS .ARC files

PKG_INSTALLATION_TYPES=	overwrite pkgviews

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/arc ${PREFIX}/bin/
	${INSTALL_PROGRAM} ${WRKSRC}/marc ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/arc.1 ${PREFIX}/${PKGMANDIR}/man1/

.include "../../mk/bsd.pkg.mk"
