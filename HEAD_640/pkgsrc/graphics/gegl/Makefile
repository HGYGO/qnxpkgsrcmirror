# $NetBSD: Makefile,v 1.5 2009/02/03 06:21:40 adam Exp $

DISTNAME=	gegl-0.0.22
PKGREVISION=	2
CATEGORIES=	graphics
MASTER_SITES=	ftp://ftp.gimp.org/pub/gegl/0.0/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	adam@NetBSD.org
HOMEPAGE=	http://gegl.org/
COMMENT=	Graph based image processing framework

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LANGUAGES=		c c++
USE_LIBTOOL=		yes
USE_TOOLS+=		pkg-config gmake
GNU_CONFIGURE=		yes
CONFIGURE_ENV+=		ac_cv_path_ASCIIDOC=no
CONFIGURE_ENV+=		ac_cv_path_ENSCRIPT=no
CONFIGURE_ENV+=		ac_cv_path_SDL_CONFIG=no
CONFIGURE_ENV+=		ac_cv_prog_RUBY=no

PKGCONFIG_OVERRIDE+=	gegl.pc.in

.include "options.mk"

.include "../../graphics/babl/buildlink3.mk"
.include "../../graphics/jpeg/buildlink3.mk"
.include "../../graphics/openexr/buildlink3.mk"
.include "../../graphics/png/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"

.include "../../mk/dlopen.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
