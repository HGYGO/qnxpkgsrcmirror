# $NetBSD: Makefile,v 1.56 2009/01/03 19:45:29 adam Exp $

DISTNAME=	fontforge_full-${VERSION}
PKGNAME=	fontforge-${VERSION}
CATEGORIES=	fonts editors
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=fontforge/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	adam@NetBSD.org
HOMEPAGE=	http://fontforge.sourceforge.net/
COMMENT=	Postscript font editor

VERSION=	20081224

PKG_DESTDIR_SUPPORT=	user-destdir

MAKE_ENV+=	PKGLOCALEDIR=${PKGLOCALEDIR}

USE_LIBTOOL=		yes
USE_LANGUAGES=		c c++ fortran
USE_PKGLOCALEDIR=	yes
USE_TOOLS+=		gmake msgfmt
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--without-freetype-src
CONFIGURE_ARGS+=	--without-python
WRKSRC=			${WRKDIR}/${PKGNAME_NOREV}
BROKEN_GETTEXT_DETECTION=	yes

.include "options.mk"

.include "../../converters/libiconv/buildlink3.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/pango/buildlink3.mk"
.include "../../graphics/cairo/buildlink3.mk"
.include "../../graphics/freetype2/buildlink3.mk"
.include "../../graphics/jpeg/buildlink3.mk"
.include "../../graphics/libungif/buildlink3.mk"
.include "../../graphics/png/buildlink3.mk"
.include "../../graphics/tiff/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
