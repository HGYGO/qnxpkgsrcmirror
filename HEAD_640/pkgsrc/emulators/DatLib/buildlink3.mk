# $NetBSD: buildlink3.mk,v 1.8 2007/02/26 00:00:32 wiz Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
DATLIB_BUILDLINK3_MK:=	${DATLIB_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	DatLib
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:NDatLib}
BUILDLINK_PACKAGES+=	DatLib
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}DatLib

.if !empty(DATLIB_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.DatLib+=	DatLib>=2.20
BUILDLINK_PKGSRCDIR.DatLib?=	../../emulators/DatLib
.endif	# DATLIB_BUILDLINK3_MK

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
