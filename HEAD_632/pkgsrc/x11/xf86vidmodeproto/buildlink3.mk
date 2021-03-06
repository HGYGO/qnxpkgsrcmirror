# $NetBSD: buildlink3.mk,v 1.1.1.1 2006/11/14 15:01:55 joerg Exp $

BUILDLINK_DEPMETHOD.xf86vidmodeproto?=	build

BUILDLINK_DEPTH:=			${BUILDLINK_DEPTH}+
XF86VIDMODEPROTO_BUILDLINK3_MK:=	${XF86VIDMODEPROTO_BUILDLINK3_MK}+

.if ${BUILDLINK_DEPTH} == "+"
BUILDLINK_DEPENDS+=	xf86vidmodeproto
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nxf86vidmodeproto}
BUILDLINK_PACKAGES+=	xf86vidmodeproto
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}xf86vidmodeproto

.if ${XF86VIDMODEPROTO_BUILDLINK3_MK} == "+"
BUILDLINK_API_DEPENDS.xf86vidmodeproto+=	xf86vidmodeproto>=2.2.1
BUILDLINK_PKGSRCDIR.xf86vidmodeproto?=	../../x11/xf86vidmodeproto
.endif	# XF86VIDMODEPROTO_BUILDLINK3_MK

.include "../../x11/xproto/buildlink3.mk"

BUILDLINK_DEPTH:=			${BUILDLINK_DEPTH:S/+$//}
