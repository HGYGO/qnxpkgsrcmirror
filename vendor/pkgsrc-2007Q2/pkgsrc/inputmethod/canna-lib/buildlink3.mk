# $NetBSD: buildlink3.mk,v 1.6 2006/07/08 23:10:53 jlam Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
CANNA_LIB_BUILDLINK3_MK:=	${CANNA_LIB_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	Canna-lib
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:NCanna-lib}
BUILDLINK_PACKAGES+=	Canna-lib
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}Canna-lib

.if !empty(CANNA_LIB_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.Canna-lib+=	Canna-lib>=3.6pl4
BUILDLINK_PKGSRCDIR.Canna-lib?=	../../inputmethod/canna-lib

.endif	# CANNA_LIB_BUILDLINK3_MK

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH:S/+$//}
