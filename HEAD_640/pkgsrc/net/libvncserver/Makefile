# $NetBSD: Makefile,v 1.4 2008/07/14 12:56:10 joerg Exp $
#

DISTNAME=		LibVNCServer-0.9.1
PKGNAME=		libVNCServer-0.9.1
CATEGORIES=		net
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=libvncserver/}

MAINTAINER=		pierrick@bs-network.net
HOMEPAGE=		http://libvncserver.sourceforge.net/
COMMENT=		Easy API to write one's own vnc server

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LIBTOOL=		yes
GNU_CONFIGURE=		yes

CONFIGURE_ARGS+=	--without-x
CONFIGURE_ARGS+=	--without-sdl

PTHREAD_AUTO_VARS=	yes
SUBST_CLASSES+=		pthread
SUBST_STAGE.pthread=	pre-configure
SUBST_FILES.pthread=	configure
SUBST_SED.pthread=	-e 's|-lpthread||g'

.include "../../devel/zlib/buildlink3.mk"
.include "../../graphics/jpeg/buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
