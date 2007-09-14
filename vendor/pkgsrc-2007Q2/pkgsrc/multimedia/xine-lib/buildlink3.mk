# $NetBSD: buildlink3.mk,v 1.21 2007/02/07 20:04:00 drochner Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
XINE_LIB_BUILDLINK3_MK:=	${XINE_LIB_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	xine-lib
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nxine-lib}
BUILDLINK_PACKAGES+=	xine-lib
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}xine-lib

.if !empty(XINE_LIB_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.xine-lib+=	xine-lib>=1rc3c
BUILDLINK_ABI_DEPENDS.xine-lib+=xine-lib>=1.0.3a
BUILDLINK_ABI_DEPENDS.xine-lib?=	xine-lib>=1.1.3nb1
BUILDLINK_PKGSRCDIR.xine-lib?=	../../multimedia/xine-lib
.endif	# XINE_LIB_BUILDLINK3_MK

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH:S/+$//}
