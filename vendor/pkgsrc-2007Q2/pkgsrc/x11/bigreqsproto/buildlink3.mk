# $NetBSD: buildlink3.mk,v 1.1.1.1 2006/11/03 17:38:16 joerg Exp $

BUILDLINK_DEPMETHOD.bigreqsproto?=	build

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
BIGREQSPROTO_BUILDLINK3_MK:=	${BIGREQSPROTO_BUILDLINK3_MK}+

.if ${BUILDLINK_DEPTH} == "+"
BUILDLINK_DEPENDS+=	bigreqsproto
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nbigreqsproto}
BUILDLINK_PACKAGES+=	bigreqsproto
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}bigreqsproto

.if ${BIGREQSPROTO_BUILDLINK3_MK} == "+"
BUILDLINK_API_DEPENDS.bigreqsproto+=	bigreqsproto>=1.0
BUILDLINK_PKGSRCDIR.bigreqsproto?=	../../x11/bigreqsproto
.endif	# BIGREQSPROTO_BUILDLINK3_MK

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH:S/+$//}
