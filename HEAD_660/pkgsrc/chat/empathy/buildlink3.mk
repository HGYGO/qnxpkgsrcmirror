# $NetBSD: buildlink3.mk,v 1.29 2013/06/06 12:53:57 wiz Exp $

BUILDLINK_TREE+=	empathy

.if !defined(EMPATHY_BUILDLINK3_MK)
EMPATHY_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.empathy+=	empathy>=2.24.1nb1
BUILDLINK_ABI_DEPENDS.empathy+=	empathy>=2.34.0nb29
BUILDLINK_PKGSRCDIR.empathy?=	../../chat/empathy

.include "../../devel/glib2/buildlink3.mk"
.include "../../mail/evolution-data-server/buildlink3.mk"
.include "../../sysutils/dbus/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.endif # EMPATHY_BUILDLINK3_MK

BUILDLINK_TREE+=	-empathy
