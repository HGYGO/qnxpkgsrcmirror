# $NetBSD: Makefile,v 1.2 2006/04/09 19:35:10 joerg Exp $
#

DISTNAME=		${PKGNAME}-linux
PKGNAME=		ggrab-0.22a
CATEGORIES=		multimedia
MASTER_SITES=		http://www.menzebach.de/ggrab/
EXTRACT_SUFX=		.tgz

MAINTAINER=		tech-pkg@NetBSD.org
HOMEPAGE=		http://www.menzebach.de/ggrab/
COMMENT=		Server for recording video streams from dream dvb-receivers

USE_LANGUAGES=	c++
WRKSRC=			${WRKDIR}/ggrab-0.22a

RCD_SCRIPTS=		sserver
EGDIR=			${PREFIX}/share/examples/${PKGBASE}
DOCDIR=			${PREFIX}/share/doc/${PKGBASE}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ggrab ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/sserver ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCDIR}/
	${INSTALL_DATA_DIR} ${EGDIR}

.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
