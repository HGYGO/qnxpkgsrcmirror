# $NetBSD: Makefile,v 1.1.1.1 2009/07/09 19:44:50 drochner Exp $
#

DISTNAME=	lensfun-0.2.3
CATEGORIES=	graphics
MASTER_SITES=	http://download.berlios.de/lensfun/ \
		http://download2.berlios.de/lensfun/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://lensfun.berlios.de/
COMMENT=	Library for rectifying defects introduced by photographic equipment
LICENSE=	gnu-lgpl-v3

BUILD_DEPENDS+=	doxygen>=1.5.7.1:../../devel/doxygen
BUILD_DEPENDS+=	makedepend-[0-9]*:../../devel/makedepend

HAS_CONFIGURE=		yes
CONFIGURE_ARGS+=	--prefix=${PREFIX} --libdir=${PREFIX}/lib
CONFIG_SHELL=		${PYTHONBIN}
MAKE_FILE=		GNUmakefile
PYTHON_FOR_BUILD_ONLY=	yes
REPLACE_PYTHON=		configure
USE_LANGUAGES=		c c++
USE_TOOLS+=		gmake pkg-config
PKGCONFIG_OVERRIDE=	libs/lensfun/lensfun.pc.in
PKG_DESTDIR_SUPPORT=	user-destdir

.include "../../devel/glib2/buildlink3.mk"
# png: for test programs only
.include "../../graphics/png/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../lang/python/application.mk"
.include "../../mk/bsd.pkg.mk"
