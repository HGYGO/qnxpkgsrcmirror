# $NetBSD: Makefile,v 1.11 2009/02/06 17:46:02 jmorse Exp $

DISTNAME=	cheese-2.24.3
PKGREVISION=	1
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/cheese/2.24/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.gnome.org/projects/cheese/
COMMENT=	Use your webcam to take photos and videos

BUILD_DEPENDS+=	gettext-m4-[0-9]*:../../devel/gettext-m4
DEPENDS+= gst-plugins0.10-theora>=0.10.1:../../multimedia/gst-plugins0.10-theora
DEPENDS+= gst-plugins0.10-ogg>=0.10.1:../../multimedia/gst-plugins0.10-ogg
DEPENDS+= gst-plugins0.10-vorbis>=0.10.1:../../audio/gst-plugins0.10-vorbis

.include "../../mk/bsd.prefs.mk"

.if !empty(MACHINE_PLATFORM:MNetBSD-[5-9]*) || !empty(MACHINE_PLATFORM:MLinux)
DEPENDS+= gst-plugins0.10-v4l2>=0.10.10:../../multimedia/gst-plugins0.10-v4l2
.endif

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=		yes
USE_DIRS+=		gnome2-1.5
USE_TOOLS+=		pkg-config perl intltool gmake msgfmt
USE_TOOLS+=		autoconf automake autoreconf
USE_LIBTOOL=		yes
USE_PKGLOCALEDIR=	yes

GCONF_SCHEMAS+=	cheese.schemas

pre-configure:
	cd ${WRKSRC} && autoreconf -vi # -f breaks it
	cd ${WRKSRC} && autoheader -f

.include "options.mk"

BUILDLINK_API_DEPENDS.GConf+=	GConf>=2.16.0
.include "../../devel/GConf/schemas.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
BUILDLINK_API_DEPENDS.glib2+=	glib2>=2.16.0
.include "../../devel/glib2/buildlink3.mk"
BUILDLINK_API_DEPENDS.libgnomeui+=	libgnomeui>=2.20.0
.include "../../devel/libgnomeui/buildlink3.mk"
BUILDLINK_API_DEPENDS.pango+=		pango>=1.18.0
.include "../../devel/pango/buildlink3.mk"
BUILDLINK_API_DEPENDS.cairo+=		cairo>=1.4.0
.include "../../graphics/cairo/buildlink3.mk"
BUILDLINK_API_DEPENDS.librsvg+=		librsvg>=2.18.0
.include "../../graphics/librsvg/buildlink3.mk"
.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
BUILDLINK_API_DEPENDS.evolution-data-server+=	evolution-data-server>=1.12.0
.include "../../mail/evolution-data-server/buildlink3.mk"
.include "../../multimedia/gst-plugins0.10-base/buildlink3.mk"
.include "../../multimedia/gst-plugins0.10-good/buildlink3.mk"
BUILDLINK_API_DEPENDS.gstreamer0.10+=	gstreamer0.10>=0.10.20
.include "../../multimedia/gstreamer0.10/buildlink3.mk"
BUILDLINK_API_DEPENDS.dbus+=	dbus>=1.0
.include "../../sysutils/dbus/buildlink3.mk"
BUILDLINK_API_DEPENDS.dbus-glib+=	dbus-glib>=0.70
.include "../../sysutils/dbus-glib/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
BUILDLINK_API_DEPENDS.gnome-vfs+=	gnome-vfs>=2.18.0
.include "../../sysutils/gnome-vfs/buildlink3.mk"
.include "../../textproc/gnome-doc-utils/buildlink3.mk"
BUILDLINK_API_DEPENDS.gtk2+=	gtk2+>=2.12.0
.include "../../x11/gtk2/buildlink3.mk"
.include "../../x11/libXxf86vm/buildlink3.mk"
.include "../../mk/omf-scrollkeeper.mk"
.include "../../mk/bsd.pkg.mk"
