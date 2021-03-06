# $NetBSD: buildlink3.mk,v 1.7 2008/01/07 13:59:36 tron Exp $

.include "../../mk/bsd.fast.prefs.mk"

BUILDLINK_DEPMETHOD.fixesproto?=	build

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
FIXESPROTO_BUILDLINK3_MK:=	${FIXESPROTO_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	fixesproto
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nfixesproto}
BUILDLINK_PACKAGES+=	fixesproto
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}fixesproto

.if !empty(FIXESPROTO_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.fixesproto+=	fixesproto>=3.0.0
BUILDLINK_PKGSRCDIR.fixesproto?=	../../x11/fixesproto
.endif	# FIXESPROTO_BUILDLINK3_MK

.include "../../x11/xextproto/buildlink3.mk"
.include "../../x11/xproto/buildlink3.mk"


BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
