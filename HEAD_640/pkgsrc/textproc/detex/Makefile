# $NetBSD: Makefile,v 1.12 2008/11/20 02:19:26 chuck Exp $
#

DISTNAME=	detex-2.8
CATEGORIES=	textproc
MASTER_SITES=	http://www.cs.purdue.edu/homes/trinkle/detex/
EXTRACT_SUFX=	.tar

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.cs.purdue.edu/homes/trinkle/detex/
COMMENT=	Remove LaTeX commands

USE_TOOLS+=	lex

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/detex ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/detex.1l ${PREFIX}/${PKGMANDIR}/man1/detex.1

.include "../../mk/bsd.pkg.mk"
