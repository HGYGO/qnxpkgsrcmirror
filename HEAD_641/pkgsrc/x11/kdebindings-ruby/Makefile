# $NetBSD: Makefile,v 1.13 2009/06/30 00:07:25 joerg Exp $

DISTNAME=	kdebindings-${_KDE_VERSION}
PKGNAME=	kdebindings-ruby-${_KDE_VERSION}
PKGREVISION=	1
CATEGORIES=	x11
COMMENT=	Ruby bindings for the KDE integrated X11 desktop

PKG_DESTDIR_SUPPORT=	user-destdir

MAKE_JOBS_SAFE=		no

.include "../../meta-pkgs/kde3/Makefile.kde3"

USE_TOOLS+=	pkg-config

CONFIGURE_ARGS+=	--without-java
CONFIGURE_ARGS+=	--without-pythondir
CONFIGURE_ENV+=		DO_NOT_COMPILE="dcopperl python kjsembed qtsharp"

.include "../../lang/ruby/buildlink3.mk"
.include "../../meta-pkgs/kde3/kde3.mk"
.include "../../x11/kdebase3/buildlink3.mk"
.include "../../x11/kdelibs3/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
