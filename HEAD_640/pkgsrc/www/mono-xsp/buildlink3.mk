# $NetBSD: buildlink3.mk,v 1.2 2008/10/07 13:25:12 kefren Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
MONO_XSP_BUILDLINK3_MK:=	${MONO_XSP_BUILDLINK3_MK}+

.if ${BUILDLINK_DEPTH} == "+"
BUILDLINK_DEPENDS+=	mono-xsp
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nmono-xsp}
BUILDLINK_PACKAGES+=	mono-xsp
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}mono-xsp

.if ${MONO_XSP_BUILDLINK3_MK} == "+"
BUILDLINK_API_DEPENDS.mono-xsp+=	mono-xsp>=2.0
BUILDLINK_PKGSRCDIR.mono-xsp?=	../../www/mono-xsp
.endif	# MONO_XSP_BUILDLINK3_MK

.include "../../databases/sqlite3/buildlink3.mk"
.include "../../lang/mono/buildlink3.mk"

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH:S/+$//}
