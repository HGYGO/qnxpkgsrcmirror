# $NetBSD: Makefile,v 1.5 2008/09/18 12:17:59 ghen Exp $

DISTNAME=		easyh10-1.5
PKGREVISION=		1
CATEGORIES=		audio
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=easyh10/}

MAINTAINER=		ghen@NetBSD.org
HOMEPAGE=		http://easyh10.sourceforge.net/
COMMENT=		Database tool for the iRiver H10 digital audio player

PKG_DESTDIR_SUPPORT=	user-destdir

USE_TOOLS+=		gmake

GNU_CONFIGURE=		yes

CONFIGURE_ARGS+=	--with-id3tag-library=${BUILDLINK_PREFIX.libid3tag}/lib
CONFIGURE_ARGS+=	--with-iconv-library=${BUILDLINK_PREFIX.iconv}/lib

.include "../../audio/libid3tag/buildlink3.mk"
.include "../../converters/libiconv/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
