# $NetBSD: buildlink3.mk,v 1.7 2006/08/05 18:49:29 wiz Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
UIM_BUILDLINK3_MK:=	${UIM_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	uim
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nuim}
BUILDLINK_PACKAGES+=	uim
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}uim

.if !empty(UIM_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.uim+=		uim>=0.4.6
BUILDLINK_ABI_DEPENDS.uim?=	uim>=1.2.0
BUILDLINK_PKGSRCDIR.uim?=	../../inputmethod/uim
.endif  # UIM_BUILDLINK3_MK

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
