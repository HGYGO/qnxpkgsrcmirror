# $NetBSD: Makefile,v 1.3 2007/02/22 19:01:15 wiz Exp $
#

.include "../../cad/wcalc/Makefile.common"
PKGNAME=	gtk1-${DISTNAME}
PKGREVISION=	1

COMMENT=	GTK Based Transmission Line Analysis/Synthesis Calculator

CONFLICTS+=	gtk2-wcalc-[0-9]*

# Only enable the gtk frontend
CONFIGURE_ARGS+=	--disable-cgi
CONFIGURE_ARGS+=	--enable-gtk1
CONFIGURE_ARGS+=	--disable-gtk2
CONFIGURE_ARGS+=	--disable-htdocs
CONFIGURE_ARGS+=	--disable-libwcalc
CONFIGURE_ARGS+=	--disable-stdio
CONFIGURE_ARGS+=	--without-matlab
CONFIGURE_ARGS+=	--without-octave
CONFIGURE_ARGS+=	--without-scilab

.include "../../cad/libwcalc/buildlink3.mk"
.include "../../x11/gtk/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
