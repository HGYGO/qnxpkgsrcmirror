# $NetBSD: Makefile,v 1.75 2007/09/21 16:56:19 joerg Exp $

DISTNAME=	gd-2.0.35
CATEGORIES=	graphics
MASTER_SITES=	http://www.libgd.org/releases/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	adam@NetBSD.org
HOMEPAGE=	http://www.libgd.org/
COMMENT=	Graphics library for the dynamic creation of images

PKG_DESTDIR_SUPPORT=	user-destdir

# fails in test not finding libgd.a
MAKE_JOBS_SAFE=		no

PKG_INSTALLATION_TYPES=	overwrite pkgviews

USE_LIBTOOL=		yes
USE_TOOLS+=		perl:run
GNU_CONFIGURE=		yes
REPLACE_PERL+=		bdftogd
PTHREAD_AUTO_VARS=	yes

.include "../../devel/zlib/buildlink3.mk"
.include "../../graphics/freetype2/buildlink3.mk"
.include "../../graphics/jpeg/buildlink3.mk"
.include "../../graphics/png/buildlink3.mk"

.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
