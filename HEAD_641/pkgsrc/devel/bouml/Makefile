# $NetBSD: Makefile,v 1.6 2009/07/27 05:15:53 obache Exp $
#

DISTNAME=		bouml_${BOUMLVERSION}
PKGNAME=		bouml-${BOUMLVERSION}
CATEGORIES=		devel
MASTER_SITES=		http://bouml.free.fr/

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://bouml.free.fr/
COMMENT=		UML modeling tool, generates C++, JAVA, and IDL

PKG_DESTDIR_SUPPORT=	user-destdir

BOUMLVERSION=		4.5

USE_LIBTOOL=		YES
USE_TOOLS+=		gmake pax
USE_LANGUAGES=		c++
BUILD_TARGET=		compile

.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../x11/qt3-tools/buildlink3.mk"
.include "../../x11/qt3-libs/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
