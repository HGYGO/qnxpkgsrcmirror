# $NetBSD: Makefile,v 1.45 2009/05/20 00:58:07 wiz Exp $
#

DISTNAME=		libgeda-${PKGVERSION}
PKGREVISION=		1
CATEGORIES=		cad

MAINTAINER=		dmcmahill@NetBSD.org
HOMEPAGE=		http://www.geda.seul.org/
COMMENT=		Library of shared modules for gEDA

PKG_DESTDIR_SUPPORT=	user-destdir

CONFLICTS+=		gEDA<19991011

.include "../../cad/geda/Makefile.common"

DEPENDS+=               gettext-tools>=0.14.6:../../devel/gettext-tools

GNU_CONFIGURE=		YES
USE_LIBTOOL=		YES
USE_TOOLS+=		bash intltool msgfmt pkg-config
CONFIGURE_ARGS+=	--disable-update-mime-database

REPLACE_BASH=		icon-theme-installer

.include "../../databases/shared-mime-info/mimedb.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../graphics/gd/buildlink3.mk"
.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../lang/guile/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
