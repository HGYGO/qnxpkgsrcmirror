# $NetBSD: Makefile,v 1.13 2008/10/24 13:25:50 gdt Exp $

DISTNAME=	gpsd-2.37
PKGREVISION=	1
CATEGORIES=	geography
MASTER_SITES=	http://download.berlios.de/gpsd/

MAINTAINER=	tsarna@NetBSD.org
# also gdt@NetBSD.org
HOMEPAGE=	http://gpsd.berlios.de/
COMMENT=	GPS information daemon

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=	YES
CONFIGURE_ARGS+=	--disable-python

USE_LIBTOOL=	yes
USE_LANGUAGES=	c c++
USE_NCURSES=	yes

INSTALLATION_DIRS=	sbin

# XXX This package should have an option for python to install gpsfake
# and gpsctl.

.include "../../devel/ncurses/buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
