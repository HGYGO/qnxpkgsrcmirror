# $NetBSD: Makefile,v 1.4 2007/08/15 22:24:04 joerg Exp $

DISTNAME=	xf86-video-intel-2.1.1
CATEGORIES=	x11
MASTER_SITES=	http://xorg.freedesktop.org/releases/individual/driver/
EXTRACT_SUFX=	.tar.bz2

CONFLICTS+=	xf86-video-i810-[0-9]*

MAINTAINER=	joerg@NetBSD.org
HOMEPAGE=	http://xorg.freedesktop.org/
COMMENT=	Modular Xorg Intel video driver

PKG_DESTDIR_SUPPORT=	user-destdir

CONFIGURE_ARGS+=	--enable-dri

GNU_CONFIGURE=	YES
USE_LIBTOOL=	YES
USE_TOOLS+=	pkg-config

.include "../../x11/modular-xorg-server/buildlink3.mk"
.include "../../graphics/MesaLib/buildlink3.mk"
.include "../../x11/libXvMC/buildlink3.mk"
.include "../../x11/xineramaproto/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
