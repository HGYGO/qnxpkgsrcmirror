# $NetBSD: Makefile,v 1.37 2009/07/22 09:01:33 wiz Exp $

DISTNAME=	librsvg-2.26.0
CATEGORIES=	graphics gnome
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/librsvg/2.26/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://librsvg.sourceforge.net/
COMMENT=	SVG library for GNOME2

PKG_DESTDIR_SUPPORT=	user-destdir

CONFLICTS+=	librsvg2-gtk-[0-9]* librsvg2-[0-9]*
MAKE_JOBS_SAFE=	NO

USE_LIBTOOL=		yes
USE_TOOLS+=		pkg-config
USE_LANGUAGES+=		c c++
GNU_CONFIGURE=		yes

PKGCONFIG_OVERRIDE=	librsvg-2.0.pc.in

TEST_TARGET=		check

CONFIGURE_ARGS+=	--with-gimp=no
CONFIGURE_ARGS+=	--with-tags=
CONFIGURE_ARGS+=	--disable-mozilla-plugin

GTK2_LOADERS=		yes

BUILDLINK_API_DEPENDS.cairo+=	cairo>=1.2.0
BUILDLINK_API_DEPENDS.glib2+=	glib2>=2.12.0
BUILDLINK_API_DEPENDS.gtk2+=	gtk2+>=2.6.0

post-install:
	rmdir -p ${PREFIX}/lib/mozilla/plugins || ${TRUE}

.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/libgsf/buildlink3.mk"
.include "../../devel/pango/buildlink3.mk"
.include "../../graphics/cairo/buildlink3.mk"
.include "../../graphics/freetype2/buildlink3.mk"
.include "../../fonts/fontconfig/buildlink3.mk"
BUILDLINK_API_DEPENDS.libcroco+=	libcroco>=0.6.1
.include "../../textproc/libcroco/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../x11/gtk2/modules.mk"
.include "../../mk/bsd.pkg.mk"
