# $NetBSD: Makefile,v 1.4 2008/10/14 08:19:07 markd Exp $
#

CATEGORIES=		math
MASTER_SITES=		${MASTER_SITE_R_CRAN:=contrib/}

MAINTAINER=		mchittur@cs.nmsu.edu
HOMEPAGE=		${R_HOMEPAGE_BASE}/geoR/
COMMENT=		Geostatistical analysis including likelihood-based and Bayesian methods

R_PKGNAME=		geoR
R_PKGVER=		1.6-21

DEPENDS+=		R-sp>=0.9.26:../../math/R-sp

.include "../../math/R/Makefile.extension"
.include "../../mk/bsd.pkg.mk"
