# $NetBSD: Makefile,v 1.46 2009/05/19 08:59:38 wiz Exp $

DISTNAME=	gnustep-back-0.16.0
CATEGORIES=	x11 gnustep
MASTER_SITES=	${MASTER_SITE_GNUSTEP:=core/}

MAINTAINER=	rh@NetBSD.org
HOMEPAGE=	http://www.gnustep.org/
COMMENT=	X11 AppKit backend for GNUstep
LICENSE=	gnu-gpl-v3

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LANGUAGES=		objc
USE_TOOLS+=		pkg-config
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--exec-prefix=${PREFIX}/libexec/GNUstep
MAKE_FILE=		GNUmakefile
MAKE_JOBS_SAFE=		no

pre-install:
	${INSTALL_DATA_DIR} ${DESTDIR}${GNUSTEP_ROOT}/lib/GNUstep/Fonts

.include "../../graphics/MesaLib/buildlink3.mk"
.include "../../graphics/libart/buildlink3.mk"
.include "../../x11/gnustep-gui/buildlink3.mk"
.include "../../x11/libXext/buildlink3.mk"
.include "../../x11/libXmu/buildlink3.mk"
.include "../../x11/libXft/buildlink3.mk"
.include "../../x11/xextproto/buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
