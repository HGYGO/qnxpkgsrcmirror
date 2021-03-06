# $NetBSD: buildlink3.mk,v 1.1 2008/07/30 10:36:27 schmonz Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
LIBTAI_BUILDLINK3_MK:=	${LIBTAI_BUILDLINK3_MK}+

.if ${BUILDLINK_DEPTH} == "+"
BUILDLINK_DEPENDS+=	libtai
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nlibtai}
BUILDLINK_PACKAGES+=	libtai
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}libtai

.if ${LIBTAI_BUILDLINK3_MK} == "+"
BUILDLINK_API_DEPENDS.libtai+=	libtai>=0.60nb1
BUILDLINK_PKGSRCDIR.libtai?=	../../devel/libtai
BUILDLINK_DEPMETHOD.libtai?=	build
.endif	# LIBTAI_BUILDLINK3_MK

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
