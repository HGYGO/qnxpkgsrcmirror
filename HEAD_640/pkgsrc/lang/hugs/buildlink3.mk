# $NetBSD: buildlink3.mk,v 1.2 2007/03/07 12:51:16 jmmv Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
HUGS98_BUILDLINK3_MK:=	${HUGS98_BUILDLINK3_MK}+

.if ${BUILDLINK_DEPTH} == "+"
BUILDLINK_DEPENDS+=	hugs98
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nhugs98}
BUILDLINK_PACKAGES+=	hugs98

.if ${HUGS98_BUILDLINK3_MK} == "+"
BUILDLINK_API_DEPENDS.hugs98+=	hugs98>=200609
BUILDLINK_PKGSRCDIR.hugs98?=	../../lang/hugs
.endif	# HUGS98_BUILDLINK3_MK

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
