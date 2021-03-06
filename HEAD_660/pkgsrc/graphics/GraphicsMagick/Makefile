# $NetBSD: Makefile,v 1.63 2013/06/04 22:16:13 tron Exp $

.include "Makefile.common"

PKGREVISION=	6
MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.graphicsmagick.org/
COMMENT=	X application for displaying and manipulating images
LICENSE=	mit

DEPENDS+=	urw-fonts-[0-9]*:../../fonts/urw-fonts

USE_LANGUAGES=		c c++
USE_LIBTOOL=		yes
USE_TOOLS+=		gmake pkg-config gs:run
USE_FEATURES=		vsnprintf	# optional but recommended for security
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--enable-shared
CONFIGURE_ARGS+=	--with-modules=yes
CONFIGURE_ARGS+=	--with-gs-font-dir=${URW_FONTS_DIR}/share/fonts/urw
CONFIGURE_ARGS+=	--with-ltdl-include=${BUILDLINK_PREFIX.libltdl}/include
CONFIGURE_ARGS+=	--with-ltdl-lib=${BUILDLINK_PREFIX.libltdl}/lib
CONFIGURE_ARGS+=	--without-perl

PKGCONFIG_OVERRIDE+=	magick/GraphicsMagick.pc.in
PKGCONFIG_OVERRIDE+=	wand/GraphicsMagickWand.pc.in
PKGCONFIG_OVERRIDE+=	Magick++/lib/GraphicsMagick++.pc.in

TEST_TARGET=	check

FIND_PREFIX:=	URW_FONTS_DIR=urw-fonts
.include "../../mk/find-prefix.mk"

.include "options.mk"

.include "../../devel/libltdl/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../graphics/freetype2/buildlink3.mk"
.include "../../graphics/jbigkit/buildlink3.mk"
.include "../../mk/jpeg.buildlink3.mk"
.include "../../graphics/lcms2/buildlink3.mk"
.include "../../graphics/png/buildlink3.mk"
.include "../../graphics/tiff/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../mk/dlopen.buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
