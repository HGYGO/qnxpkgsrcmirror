# $NetBSD: Makefile,v 1.3 2008/07/14 12:55:59 joerg Exp $
#

PKG_DESTDIR_SUPPORT=	user-destdir

.include "../../cad/wcalc/Makefile.common"
PKGNAME=	lib${DISTNAME}
PKGREVISION=	1

COMMENT=	Library for Transmission Line Analysis/Synthesis

# Disable all the frontends so we only build/install the libwcalc
# portion
CONFIGURE_ARGS+=	--disable-cgi
CONFIGURE_ARGS+=	--disable-gtk1
CONFIGURE_ARGS+=	--disable-gtk2
CONFIGURE_ARGS+=	--disable-htdocs
CONFIGURE_ARGS+=	--enable-libwcalc
CONFIGURE_ARGS+=	--disable-stdio
CONFIGURE_ARGS+=	--without-matlab
CONFIGURE_ARGS+=	--without-octave
CONFIGURE_ARGS+=	--without-scilab

USE_PKGLOCALEDIR=	yes

PKGCONFIG_OVERRIDE=	libwcalc/wcalc.pc.in

pre-build:
	${MV} ${WRKSRC}/libwcalc/wcalc-config ${WRKSRC}/libwcalc/wcalc-config.bak
	${SED} 's;^RPATH.*;RPATH_FLAG="${COMPILER_RPATH_FLAG}";g' ${WRKSRC}/libwcalc/wcalc-config.bak > \
		${WRKSRC}/libwcalc/wcalc-config
	${CHMOD} 755 ${WRKSRC}/libwcalc/wcalc-config

.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
