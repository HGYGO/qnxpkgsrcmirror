# $NetBSD: Makefile,v 1.8 2007/12/02 08:32:25 rillig Exp $

DISTNAME=	pscan
PKGNAME=	pscan-1.3
CATEGORIES=	security devel
MASTER_SITES=	http://www.striker.ottawa.on.ca/~aland/pscan/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.striker.ottawa.on.ca/~aland/pscan/
COMMENT=	Security C code scanner for misuse of format strings

BUILD_TARGET=	pscan

USE_TOOLS+=	lex

INSTALLATION_DIRS=	bin

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/pscan ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/find_formats.sh ${PREFIX}/bin/find_formats

.include "../../mk/bsd.pkg.mk"
