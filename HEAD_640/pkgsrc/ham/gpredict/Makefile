# $NetBSD: Makefile,v 1.14 2008/06/20 01:09:23 joerg Exp $

DISTNAME=	gpredict-0.8.0
PKGREVISION=	1
CATEGORIES=	ham
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=groundstation/}

MAINTAINER=	wulf@NetBSD.org
HOMEPAGE=	http://groundstation.sourceforge.net/
COMMENT=	Gnome satellite tracking program

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LANGUAGES=	c c++
USE_TOOLS+=	gmake msgfmt pkg-config intltool
USE_PKGLOCALEDIR=yes
GNU_CONFIGURE=	yes

.include "../../devel/GConf/buildlink3.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
#.include "../../ham/hamlib/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
