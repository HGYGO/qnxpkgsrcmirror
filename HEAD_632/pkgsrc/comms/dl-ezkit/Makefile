# $NetBSD: Makefile,v 1.17 2007/02/22 19:26:13 wiz Exp $

DISTNAME=	dl-ezkit-0.8.1-bsd
PKGNAME=	dl-ezkit-0.8.1
CATEGORIES=	comms
MASTER_SITES=	http://www.ww.tu-freiberg.de/~pberg/download/Unix-sources/

MAINTAINER=	gmcgarry@NetBSD.org
HOMEPAGE=	http://www.ww.tu-freiberg.de/~pberg/download/
COMMENT=	Coff file downloader for the EZ-KIT Lite using the RS232

MAKE_FILE=	Makefile.bsd

WRKSRC=		${WRKDIR}/dl-ezkit

INSTALLATION_DIRS=	bin

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/dl ${PREFIX}/bin/

.include "../../mk/bsd.pkg.mk"
