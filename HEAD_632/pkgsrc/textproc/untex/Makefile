# $NetBSD: Makefile,v 1.11 2007/01/07 09:14:14 rillig Exp $
#

DISTNAME=	untex-1.3
CATEGORIES=	textproc
MASTER_SITES=	ftp://hal6000.uni-duisburg.de/pub/source/

MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	Remove LaTeX commands

WRKSRC=		${WRKDIR}

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1

do-install:
	${INSTALL_PROGRAM} ${WRKDIR}/untex ${PREFIX}/bin
	${INSTALL_MAN} ${WRKDIR}/untex.man ${PREFIX}/${PKGMANDIR}/man1/untex.1

.include "../../mk/bsd.pkg.mk"
