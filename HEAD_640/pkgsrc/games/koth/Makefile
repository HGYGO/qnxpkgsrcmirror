# $NetBSD: Makefile,v 1.21 2006/03/29 22:38:30 joerg Exp $
#

DISTNAME=	koth-0.8.0
PKGREVISION=	4
CATEGORIES=	games
MASTER_SITES=	http://www.ibiblio.org/pub/Linux/games/multiplayer/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.nongnu.org/koth/
COMMENT=	The classic "shoot the other tank" artillery game, networked

PTHREAD_AUTO_VARS=	yes
GNU_CONFIGURE=	YES
CPPFLAGS+=	-DPKG_SYSCONFDIR="\"${PKG_SYSCONFDIR:Q}\""

EGDIR=		${PREFIX}/share/examples/koth
CONF_FILES=	${EGDIR}/koth.cfg ${PKG_SYSCONFDIR}/koth.cfg

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/koth
	${INSTALL_DATA_DIR} ${EGDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/koth
	${INSTALL_DATA} ${WRKSRC}/src/koth.cfg ${EGDIR}

.include "../../graphics/libggi/buildlink3.mk"
.include "../../graphics/libgii/buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
