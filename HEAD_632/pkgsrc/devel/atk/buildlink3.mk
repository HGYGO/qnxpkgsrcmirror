# $NetBSD: buildlink3.mk,v 1.13 2006/07/08 23:10:41 jlam Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
ATK_BUILDLINK3_MK:=	${ATK_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	atk
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Natk}
BUILDLINK_PACKAGES+=	atk
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}atk

.if !empty(ATK_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.atk+=		atk>=1.11.4
BUILDLINK_ABI_DEPENDS.atk+=	atk>=1.11.4
BUILDLINK_PKGSRCDIR.atk?=	../../devel/atk
.endif	# ATK_BUILDLINK3_MK

.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
