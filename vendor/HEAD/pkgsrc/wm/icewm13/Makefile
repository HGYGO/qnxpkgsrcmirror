# $NetBSD: Makefile,v 1.1 2014/01/05 12:33:26 ryoon Exp $

DISTNAME=	icewm-1.3.8
CATEGORIES=	wm
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=icewm/}

MAINTAINER=	ryoon@NetBSD.org
HOMEPAGE=	http://example.com/
COMMENT=	TODO: Short description of the package
#LICENSE=	# TODO: (see mk/license.mk)

CONFLICTS+=	icewm-imlib-[0-9]*

FILESDIR=	${.CURDIR}/../../wm/icewm/files

GNU_CONFIGURE=	yes
USE_LANGUAGES=	c++
USE_TOOLS+=	pkg-config

post-extract:
	cp ${FILESDIR}/bsd-daemon.xpm ${WRKSRC}/lib/taskbar

.include "../../converters/libiconv/buildlink3.mk"
.include "../../graphics/gdk-pixbuf2-xlib/buildlink3.mk"
.include "../../x11/libXft/buildlink3.mk"
.include "../../x11/libXinerama/buildlink3.mk"
.include "../../x11/libXrandr/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
