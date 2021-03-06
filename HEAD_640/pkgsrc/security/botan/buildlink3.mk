# $NetBSD: buildlink3.mk,v 1.5 2006/07/08 23:11:06 jlam Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
BOTAN_BUILDLINK3_MK:=	${BOTAN_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	botan
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nbotan}
BUILDLINK_PACKAGES+=	botan
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}botan

.if !empty(BOTAN_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.botan+=	botan>=1.4.11
BUILDLINK_PKGSRCDIR.botan?=	../../security/botan
.endif	# BOTAN_BUILDLINK3_MK

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
