# $NetBSD: Makefile,v 1.1.1.1 2007/11/30 21:50:22 wiz Exp $

DISTNAME=	ilmbase-1.0.1
CATEGORIES=	graphics
MASTER_SITES=	http://savannah.nongnu.org/download/openexr/

MAINTAINER=	adam@NetBSD.org
HOMEPAGE=	http://www.openexr.com/
COMMENT=	High dynamic-range (HDR) image file format library and tools

USE_TOOLS+=		gmake
USE_LANGUAGES=		c c++
USE_LIBTOOL=		yes
GNU_CONFIGURE=		yes
TEST_TARGET=		check

PKGCONFIG_OVERRIDE=	IlmBase.pc.in
PTHREAD_OPTS=		require

CONFLICTS=		openexr<1.6

.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
