# $NetBSD: Makefile,v 1.11 2006/01/04 17:31:28 joerg Exp $
#

DISTNAME=	juke-0.7
PKGREVISION=	2
CATEGORIES=	audio
MASTER_SITES=	http://www.moll.no/oyvind/distfiles/

MAINTAINER=	mob@bicekru.org
#HOMEPAGE=	http://johan.nocrew.org/nav10/unix/juke/
COMMENT=	Simple ncurses based jukebox

GNU_CONFIGURE=	YES

# halfdelay()
INCOMPAT_CURSES=	NetBSD-1.[45]*-* NetBSD-1.6[-_.]*-* NetBSD-1.6[A-L]-*

EGDIR=		${PREFIX}/share/examples/juke

CONF_FILES=	${EGDIR}/juke.conf.default ${PKG_SYSCONFDIR}/juke.conf

SUBST_CLASSES+=		paths
SUBST_FILES.paths=	doc/juke.1 MANUAL src/conf.c
SUBST_STAGE.paths=	post-patch
SUBST_SED.paths=	-e 's,@PKG_SYSCONFDIR@,${PKG_SYSCONFDIR},'

post-install:
	${INSTALL_DATA_DIR} ${EGDIR}
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/juke
	${INSTALL_DATA} ${WRKSRC}/juke.conf ${EGDIR}/juke.conf.default
	${INSTALL_DATA} ${WRKSRC}/MANUAL ${PREFIX}/share/doc/juke/

.include "../../devel/ncurses/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
