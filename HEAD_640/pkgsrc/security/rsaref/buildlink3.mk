# $NetBSD: buildlink3.mk,v 1.10 2006/07/08 23:11:08 jlam Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
RSAREF_BUILDLINK3_MK:=	${RSAREF_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	rsaref
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nrsaref}
BUILDLINK_PACKAGES+=	rsaref
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}rsaref

.if !empty(RSAREF_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.rsaref+=	rsaref>=2.0p3
BUILDLINK_ABI_DEPENDS.rsaref+=	rsaref>=2.0p3nb1
BUILDLINK_PKGSRCDIR.rsaref?=	../../security/rsaref
.endif	# RSAREF_BUILDLINK3_MK

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
