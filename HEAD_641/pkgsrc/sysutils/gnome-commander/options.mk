# $NetBSD: options.mk,v 1.1.1.1 2009/07/23 15:29:23 drochner Exp $
#

PKG_OPTIONS_VAR=	PKG_OPTIONS.gnome-commander
PKG_SUPPORTED_OPTIONS=	python exif id3 chm gsf pdf
PKG_SUGGESTED_OPTIONS=	python exif id3 chm gsf pdf

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mpython)
.include "../../lang/python/application.mk"
PLIST_SRC+=		${PKGDIR}/PLIST.python
.endif

.if !empty(PKG_OPTIONS:Mexif)
.include "../../graphics/exiv2/buildlink3.mk"
.endif

.if !empty(PKG_OPTIONS:Mid3)
.include "../../audio/taglib/buildlink3.mk"
.endif

.if !empty(PKG_OPTIONS:Mchm)
.include "../../devel/chmlib/buildlink3.mk"
.endif

.if !empty(PKG_OPTIONS:Mgsf)
.include "../../devel/libgsf/buildlink3.mk"
.endif

.if !empty(PKG_OPTIONS:Mpdf)
.include "../../print/poppler/buildlink3.mk"
.include "../../print/poppler-includes/buildlink3.mk"
.endif
