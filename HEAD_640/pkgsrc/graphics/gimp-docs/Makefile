# $NetBSD: Makefile,v 1.11 2008/06/20 01:09:21 joerg Exp $

DISTNAME=	gimp-help-2.4.0
PKGNAME=	gimp-docs-2.4.0
CATEGORIES=	graphics
MASTER_SITES=	ftp://ftp.gimp.org/pub/gimp/help/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.gimp.org/
COMMENT=	Documentation package for The Gimp image manipulation software

PKG_DESTDIR_SUPPORT=	user-destdir

BUILD_DEPENDS+=	docbook-xsl-[0-9]*:../../textproc/docbook-xsl
# Only xsltproc is needed.
BUILD_DEPENDS+=	libxslt-[0-9]*:../../textproc/libxslt

USE_TOOLS+=		gmake
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--without-gimp

.include "../../mk/bsd.pkg.mk"
