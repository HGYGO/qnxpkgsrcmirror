# $NetBSD: Makefile,v 1.18 2009/01/25 07:05:14 rillig Exp $
#

DISTNAME=	aria2c-0.16.2
PKGNAME=	${DISTNAME:S/+/./:S/2c-/2-/}
PKGREVISION=	2
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=aria2/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	bjs@NetBSD.org
HOMEPAGE=	http://aria2.sourceforge.net/
COMMENT=	Multi-threaded, multi-protocol, flexible download accelerator

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=		yes
USE_LANGUAGES=		c c++
USE_PKGLOCALEDIR=	yes

CONFIGURE_ARGS+=	--enable-bittorrent
CONFIGURE_ARGS+=	--enable-metalink
CONFIGURE_ARGS+=	--with-included-gettext=no
CONFIGURE_ARGS+=	--with-libexpat
CONFIGURE_ARGS+=	--without-libxml2

GCC_REQD+=		3.4
TEST_TARGET=		check
USE_FEATURES=		getopt_long snprintf

.include "../../mk/compiler.mk"

.if !empty(PKGSRC_RUN_TEST:M[Yy][Ee][Ss])
BUILDLINK_DEPMETHOD.cppunit?=	build
BUILDLINK_API_DEPENDS.cppunit+=	cppunit>=1.10.2
.  include "../../devel/cppunit/buildlink3.mk"
.else
CONFIGURE_ARGS+=	--disable-xmltest
.endif

.include "options.mk"

.include "../../devel/zlib/buildlink3.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../textproc/expat/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
