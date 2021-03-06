# $NetBSD: buildlink3.mk,v 1.1.1.1 2009/01/18 12:46:39 obache Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
PFSTOOLS_BUILDLINK3_MK:=	${PFSTOOLS_BUILDLINK3_MK}+

.if ${BUILDLINK_DEPTH} == "+"
BUILDLINK_DEPENDS+=	pfstools
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Npfstools}
BUILDLINK_PACKAGES+=	pfstools
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}pfstools

.if ${PFSTOOLS_BUILDLINK3_MK} == "+"
BUILDLINK_API_DEPENDS.pfstools+=	pfstools>=1.7.0
BUILDLINK_PKGSRCDIR.pfstools?=	../../graphics/pfstools
.endif	# PFSTOOLS_BUILDLINK3_MK

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH:S/+$//}
