# $NetBSD: Makefile,v 1.4 2009/07/14 09:50:29 hasso Exp $

DISTNAME=		ufoai-2.2.1
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=ufoai/}
CATEGORIES=		games

DISTFILES=	${DISTNAME}-source.tar.bz2
DISTFILES+=	${DISTNAME}-data.tar
DISTFILES+=	${DISTNAME}-mappack.tar.bz2

WRKSRC=		${WRKDIR}/${DISTNAME}-source

MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	UFO Alien Invasion
HOMEPAGE=	http://ufoai.sourceforge.net/

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=	yes
USE_TOOLS+=	tar gmake bzip2 msgfmt
MAKE_JOBS_SAFE=	no

INSTALLATION_DIRS=	share/ufoai
INSTALL_MAKE_FLAGS+=	prefix=${DESTDIR}${PREFIX}

CHECK_INTERPRETER_SKIP+=	share/ufoai/base/maps/*

do-extract:
	cd ${WRKDIR} && ${BZIP2} -d -c ${DISTDIR}/${DISTNAME}-source.tar.bz2 | ${TAR} -xf -

post-build:
	cd ${WRKSRC} && ${GMAKE} lang # && ${GMAKE} maps

post-install:
	${TAR} -xf ${DISTDIR}/${DISTNAME}-data.tar -C ${DESTDIR}${PREFIX}/share/ufoai
	${BZIP2} -d -c ${DISTDIR}/${DISTNAME}-mappack.tar.bz2 | ${TAR} -xf - -C ${DESTDIR}${PREFIX}/share/ufoai

.include "../../graphics/jpeg/buildlink3.mk"
.include "../../graphics/png/buildlink3.mk"
.include "../../www/curl/buildlink3.mk"
.include "../../devel/SDL/buildlink3.mk"
.include "../../audio/SDL_mixer/buildlink3.mk"
.include "../../devel/SDL_ttf/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
