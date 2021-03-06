# $NetBSD: buildlink3.mk,v 1.6 2006/07/08 23:10:49 jlam Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
PLIB_BUILDLINK3_MK:=	${PLIB_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	plib
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nplib}
BUILDLINK_PACKAGES+=	plib
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}plib

.if !empty(PLIB_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.plib+=	plib>=1.6.0
BUILDLINK_ABI_DEPENDS.plib?=	plib>=1.6.0nb3
BUILDLINK_PKGSRCDIR.plib?=	../../games/plib
BUILDLINK_DEPMETHOD.plib?=	build
.endif	# PLIB_BUILDLINK3_MK

.include "../../graphics/Mesa/buildlink3.mk"

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
