# $NetBSD: Makefile,v 1.1.1.1 2008/11/14 22:59:03 wiz Exp $
#

DISTNAME=	telepathy-mission-control-4.67
CATEGORIES=	chat
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mission-control/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://mission-control.sourceforge.net/
COMMENT=	Telepathy component providing abstractions for "end-user" applications

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	gmake pkg-config

PKGCONFIG_OVERRIDE+=	libmcclient.pc.in
PKGCONFIG_OVERRIDE+=	libmissioncontrol.pc.in
PKGCONFIG_OVERRIDE+=	mission-control.pc.in

.include "../../chat/libtelepathy/buildlink3.mk"
.include "../../chat/telepathy-glib/buildlink3.mk"
.include "../../devel/GConf/schemas.mk"
.include "../../devel/glib2/buildlink3.mk"
BUILDLINK_API_DEPENDS.gnome-keyring+=	gnome-keyring>=2.22
.include "../../lang/python/application.mk"
.include "../../security/gnome-keyring/buildlink3.mk"
.include "../../sysutils/dbus/buildlink3.mk"
.include "../../sysutils/dbus-glib/buildlink3.mk"
.include "../../textproc/libxslt/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
