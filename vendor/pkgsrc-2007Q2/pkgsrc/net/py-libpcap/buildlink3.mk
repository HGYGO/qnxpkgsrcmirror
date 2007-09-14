# $NetBSD: buildlink3.mk,v 1.5 2006/07/08 23:11:04 jlam Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
PYLIBPCAP_BUILDLINK3_MK:=	${PYLIBPCAP_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	pylibpcap
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Npylibpcap}
BUILDLINK_PACKAGES+=	pylibpcap
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}pylibpcap

.if !empty(PYLIBPCAP_BUILDLINK3_MK:M+)

.include "../../lang/python/pyversion.mk"

BUILDLINK_API_DEPENDS.pylibpcap+=	${PYPKGPREFIX}-libpcap>=0.5.0
BUILDLINK_ABI_DEPENDS.pylibpcap?=	${PYPKGPREFIX}-libpcap>=0.5nb1
BUILDLINK_PKGSRCDIR.pylibpcap?=	../../net/py-libpcap

.endif	# PYLIBPCAP_BUILDLINK3_MK

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
