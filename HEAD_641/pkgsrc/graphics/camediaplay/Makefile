# $NetBSD: Makefile,v 1.14 2007/12/02 00:04:48 wiz Exp $

DISTNAME=	camediaplay-20010211
CATEGORIES=	graphics
MASTER_SITES=	ftp://ftp.itojun.org/pub/digi-cam/C-400L/unix/

MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	Digital camera downloading tool for Epson/Sanyo/Olympus/Agfa camera

WRKSRC=		${WRKDIR}/camediaplay/build
GNU_CONFIGURE=	yes

DOC=	README.english README.japanese PROTOCOL

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/camediaplay
	for i in ${DOC}; do \
		${INSTALL_DATA} ${WRKSRC}/../$$i \
			${PREFIX}/share/doc/camediaplay; \
	done

.include "../../mk/bsd.pkg.mk"
