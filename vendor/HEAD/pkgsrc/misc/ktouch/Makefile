# $NetBSD: Makefile,v 1.20 2014/02/01 02:20:50 markd Exp $

DISTNAME=	ktouch-${_KDE_VERSION}
CATEGORIES=	misc
COMMENT=	KDE touch typing tutor

.include "../../meta-pkgs/kde4/Makefile.kde4"

.include "../../meta-pkgs/kde4/kde4.mk"

.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../x11/kdelibs4/buildlink3.mk"
.include "../../x11/libxkbfile/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
