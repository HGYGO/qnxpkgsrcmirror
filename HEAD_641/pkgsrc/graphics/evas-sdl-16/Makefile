# $NetBSD: Makefile,v 1.3 2009/06/29 20:28:35 joerg Exp $

PKGNAME=	${DISTNAME:S/evas/evas-sdl-16/}

COMMENT=	Evas 16-bit SDL engine

EVAS_ENGINES=	sdl

.include "../../graphics/evas/Makefile.common"

CONFIGURE_ARGS+=	--enable-software-sdl

BUILD_DIRS=	src/modules/engines/software_16_sdl
MAKE_FLAGS+=	module_la_LIBADD="\$${EINA_LIBS} ${BUILDLINK_PREFIX.evas}/lib/libevas.la \$${evas_engine_software_sdl_libs}" \
		module_la_DEPENDENCIES=

INSTALLATION_DIRS+=	lib/pkgconfig

.include "../../devel/SDL/buildlink3.mk"
.include "../../fonts/fontconfig/buildlink3.mk"
.include "../../graphics/evas/buildlink3.mk"
.include "../../graphics/freetype2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
