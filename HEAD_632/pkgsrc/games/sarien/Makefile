# $NetBSD: Makefile,v 1.17 2006/06/12 16:28:10 wiz Exp $
#

DISTNAME=	sarien-0.7.0
PKGREVISION=	7
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=sarien/}

MAINTAINER=	mor@linex.com
HOMEPAGE=	http://sarien.sourceforge.net/
COMMENT=	Adventure Game Interpreter (AGI) for Sierra On-Line Titles

GNU_CONFIGURE=		YES
USE_TOOLS+=		gmake

CONFIGURE_ARGS+=	--with-sdl

CFLAGS+=		-DPKG_SYSCONFDIR="\"${PKG_SYSCONFDIR}\""
EGDIR=			${PREFIX}/share/examples/sarien
CONF_FILES=		${EGDIR}/sarien.conf ${PKG_SYSCONFDIR}/sarien.conf

INSTALLATION_DIRS=	bin

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bin/sarien ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sarien
	${INSTALL_DATA} ${WRKSRC}/doc/README* ${PREFIX}/share/doc/sarien
	${INSTALL_DATA_DIR} ${EGDIR}
	${INSTALL_DATA} ${WRKSRC}/etc/sarien.cfg ${EGDIR}/sarien.conf

.include "../../devel/SDL/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
