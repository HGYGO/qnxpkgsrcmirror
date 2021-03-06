# $NetBSD: Makefile,v 1.73 2009/01/07 16:39:10 wiz Exp $

DISTNAME=	cairo-1.8.6
CATEGORIES=	graphics
MASTER_SITES=	http://cairographics.org/releases/

MAINTAINER=	recht@NetBSD.org
HOMEPAGE=	http://cairographics.org/
COMMENT=	Vector graphics library with cross-device output support

PKG_DESTDIR_SUPPORT=	user-destdir

MAKE_JOBS_SAFE=		no

USE_LANGUAGES+=		c99
USE_LIBTOOL=		yes
USE_PKGLOCALEDIR=	yes
USE_TOOLS+=		pkg-config
PKGCONFIG_OVERRIDE+=	src/cairo.pc.in src/cairo-features.pc.in
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--disable-xcb
CONFIGURE_ARGS+=	--enable-glitz
CONFIGURE_ARGS+=	--enable-pdf
CONFIGURE_ARGS+=	--enable-ps

PLIST_VARS+=		carbon
.if exists(/System/Library/Frameworks/Carbon.framework)
CONFIGURE_ARGS+=	--enable-quartz
CONFIGURE_ARGS+=	--enable-quartz-font
CONFIGURE_ARGS+=	--enable-quartz-image
PLIST.carbon=		yes
.endif

.include "options.mk"

# For snprintf() and ctime_r()
CPPFLAGS.SunOS+=		-D__EXTENSIONS__ -D_POSIX_PTHREAD_SEMANTICS

TEST_TARGET=			check

.include "../../devel/zlib/buildlink3.mk"
.include "../../fonts/fontconfig/buildlink3.mk"
BUILDLINK_API_DEPENDS.freetype2+=	freetype2>=2.1.9
.include "../../graphics/freetype2/buildlink3.mk"
BUILDLINK_API_DEPENDS.glitz+=	glitz>=0.5.1
.include "../../graphics/glitz/buildlink3.mk"
.include "../../graphics/png/buildlink3.mk"
# include?
#.include "../../print/libspectre/buildlink3.mk"
BUILDLINK_API_DEPENDS.pixman+=	pixman>=0.12.0
.include "../../x11/pixman/buildlink3.mk"

.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
