# $NetBSD: Makefile,v 1.36 2014/01/25 08:59:57 wiz Exp $

DISTNAME=	qgis-1.7.4
PKGREVISION=	20
CATEGORIES=	geography
MASTER_SITES=	http://qgis.org/downloads/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	brook@nmsu.edu
HOMEPAGE=	http://www.qgis.org/
COMMENT=	Geographic Information System (GIS)
LICENSE=	gnu-gpl-v2

USE_CMAKE=		yes
USE_LANGUAGES=		c c++ fortran77
USE_LIBTOOL=		yes
USE_PKGLOCALEDIR=	yes
USE_TOOLS+=		bison perl

.include "options.mk"

pre-configure:
	cd ${WRKSRC} && ${RM} -f cmake/FindGDAL.cmake

.include "../../geography/gdal-lib/buildlink3.mk"
.include "../../geography/proj/buildlink3.mk"
.include "../../graphics/tiff/buildlink3.mk"
.include "../../math/gsl/buildlink3.mk"
.include "../../textproc/expat/buildlink3.mk"
.include "../../www/fcgi/buildlink3.mk"
.include "../../x11/qt4-libs/buildlink3.mk"
BUILDLINK_DEPMETHOD.qt4-tools=	full
.include "../../x11/qt4-tools/buildlink3.mk"
.include "../../x11/qwt-qt4/buildlink3.mk"
.include "../../mk/pgsql.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
