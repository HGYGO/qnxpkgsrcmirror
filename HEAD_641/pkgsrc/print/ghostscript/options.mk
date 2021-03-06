# $NetBSD: options.mk,v 1.8 2008/09/03 21:31:12 markd Exp $

PKG_OPTIONS_VAR=	PKG_OPTIONS.ghostscript
PKG_SUPPORTED_OPTIONS=	x11 cups fontconfig
PKG_SUGGESTED_OPTIONS=	x11 fontconfig

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mx11)
CONFIGURE_ARGS+=	--with-x
.include "../../x11/libX11/buildlink3.mk"
.include "../../x11/libXt/buildlink3.mk"
.include "../../x11/libXext/buildlink3.mk"
.else
CONFIGURE_ARGS+=	--without-x
.endif

PLIST_VARS+=		cups
.if !empty(PKG_OPTIONS:Mcups)
CONFIGURE_ARGS+=	--enable-cups
PLIST.cups=		yes
INSTALL_TARGET+=	install-cups

CUPS_CONFDIR?=	${PKG_SYSCONFBASEDIR}/cups
CUPS_EGDIR=	${PREFIX}/share/examples/cups
CONF_FILES+=	${CUPS_EGDIR}/pstoraster.convs ${CUPS_CONFDIR}/pstoraster.convs

SUBST_CLASSES+=		cupsetc
SUBST_STAGE.cupsetc=	post-extract
SUBST_MESSAGE.cupsetc=	Fixing CUPS etc directory path to install as example
SUBST_FILES.cupsetc=	cups/cups.mak
SUBST_SED.cupsetc=	-e 's|$$(CUPSSERVERROOT)|${CUPS_EGDIR}|g'

.include "../../print/cups/buildlink3.mk"
.else
CONFIGURE_ARGS+=	--disable-cups
.endif

.if !empty(PKG_OPTIONS:Mfontconfig)
.include "../../fonts/fontconfig/buildlink3.mk"
.else
CONFIGURE_ARGS+=	--disable-fontconfig
.endif
