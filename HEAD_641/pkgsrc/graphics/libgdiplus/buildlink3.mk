# $NetBSD: buildlink3.mk,v 1.25 2009/03/20 19:24:41 joerg Exp $

BUILDLINK_TREE+=	libgdiplus

.if !defined(LIBGDIPLUS_BUILDLINK3_MK)
LIBGDIPLUS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libgdiplus+=	libgdiplus>=2.0
BUILDLINK_ABI_DEPENDS.libgdiplus?=	libgdiplus>=2.0
BUILDLINK_PKGSRCDIR.libgdiplus?=	../../graphics/libgdiplus

.include "../../devel/glib2/buildlink3.mk"
.include "../../graphics/freetype2/buildlink3.mk"
.include "../../graphics/glitz/buildlink3.mk"
.include "../../graphics/jpeg/buildlink3.mk"
.include "../../graphics/libungif/buildlink3.mk"
.include "../../graphics/png/buildlink3.mk"
.include "../../graphics/tiff/buildlink3.mk"
.include "../../x11/libXft/buildlink3.mk"
.include "../../x11/libXrender/buildlink3.mk"
.endif # LIBGDIPLUS_BUILDLINK3_MK

BUILDLINK_TREE+=	-libgdiplus
