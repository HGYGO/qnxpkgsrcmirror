# $NetBSD: Makefile,v 1.18 2013/04/06 20:27:24 rodent Exp $

DISTNAME=	blitz-0.8
PKGNAME=	blitz++-0.8
PKGREVISION=	2
CATEGORIES=	math devel
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=blitz/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.oonumerics.org/blitz/
COMMENT=	C++ template class library providing array objects

USE_LANGUAGES=		c c++ fortran77
USE_LIBTOOL=		yes
USE_TOOLS+=		gmake
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--disable-doxygen
INFO_FILES=		yes

.include "../../mk/bsd.pkg.mk"
