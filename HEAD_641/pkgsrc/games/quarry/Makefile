# $NetBSD: Makefile,v 1.5 2009/07/22 09:01:29 wiz Exp $
#

DISTNAME=	quarry-0.2.0
CATEGORIES=	games
MASTER_SITES=	http://download.gna.org/quarry/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://home.gna.org/quarry/index.html
COMMENT=	Multi-purpose GUI for several board games

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=		yes
USE_PKGLOCALEDIR=	yes
USE_TOOLS+=		gmake pkg-config

.include "../../databases/shared-mime-info/mimedb.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../graphics/librsvg/buildlink3.mk"
.include "../../mk/omf-scrollkeeper.mk"
.include "../../mk/bsd.pkg.mk"
