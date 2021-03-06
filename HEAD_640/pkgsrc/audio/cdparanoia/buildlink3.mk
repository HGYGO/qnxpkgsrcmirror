# $NetBSD: buildlink3.mk,v 1.9 2006/07/08 23:10:35 jlam Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
CDPARANOIA_BUILDLINK3_MK:=	${CDPARANOIA_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	cdparanoia
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Ncdparanoia}
BUILDLINK_PACKAGES+=	cdparanoia
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}cdparanoia

.if !empty(CDPARANOIA_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.cdparanoia+=		cdparanoia>=3.0
BUILDLINK_ABI_DEPENDS.cdparanoia?=	cdparanoia>=3.0.9.8nb5
BUILDLINK_PKGSRCDIR.cdparanoia?=	../../audio/cdparanoia
.endif	# CDPARANOIA_BUILDLINK3_MK

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH:S/+$//}
