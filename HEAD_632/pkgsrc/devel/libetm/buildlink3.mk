# $NetBSD: buildlink3.mk,v 1.5 2006/07/08 23:10:44 jlam Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
LIBETM_BUILDLINK3_MK:=	${LIBETM_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	libetm
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nlibetm}
BUILDLINK_PACKAGES+=	libetm
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}libetm

.if !empty(LIBETM_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.libetm+=	libetm>=1.09
BUILDLINK_PKGSRCDIR.libetm?=	../../devel/libetm
BUILDLINK_DEPMETHOD.libetm?=	build
.endif	# LIBETM_BUILDLINK3_MK

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
