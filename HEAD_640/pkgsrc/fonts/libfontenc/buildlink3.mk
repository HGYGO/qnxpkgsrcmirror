# $NetBSD: buildlink3.mk,v 1.3 2007/06/30 03:06:58 joerg Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
LIBFONTENC_BUILDLINK3_MK:=	${LIBFONTENC_BUILDLINK3_MK}+

.if ${BUILDLINK_DEPTH} == "+"
BUILDLINK_DEPENDS+=	libfontenc
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nlibfontenc}
BUILDLINK_PACKAGES+=	libfontenc
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}libfontenc

.if ${LIBFONTENC_BUILDLINK3_MK} == "+"
BUILDLINK_API_DEPENDS.libfontenc+=	libfontenc>=0.99
BUILDLINK_PKGSRCDIR.libfontenc?=	../../fonts/libfontenc
.endif	# LIBFONTENC_BUILDLINK3_MK

.include "../../devel/zlib/buildlink3.mk"

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH:S/+$//}
