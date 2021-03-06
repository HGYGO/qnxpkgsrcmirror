# $NetBSD: buildlink3.mk,v 1.1.1.1 2006/11/24 12:55:31 drochner Exp $

BUILDLINK_DEPTH:=			${BUILDLINK_DEPTH}+
PY_GNOME_MENUS_BUILDLINK3_MK:=	${PY_GNOME_MENUS_BUILDLINK3_MK}+

.if ${BUILDLINK_DEPTH} == "+"
BUILDLINK_DEPENDS+=	py-gnome-menus
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Npy-gnome-menus}
BUILDLINK_PACKAGES+=	py-gnome-menus
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}py-gnome-menus

.if ${PY_GNOME_MENUS_BUILDLINK3_MK} == "+"
BUILDLINK_API_DEPENDS.py-gnome-menus+=	${PYPKGPREFIX}-gnome-menus>=2.16.1
BUILDLINK_PKGSRCDIR.py-gnome-menus?=	../../sysutils/py-gnome-menus
.endif	# PY_GNOME_MENUS_BUILDLINK3_MK

BUILDLINK_DEPTH:=			${BUILDLINK_DEPTH:S/+$//}
