# $NetBSD: Makefile,v 1.78 2007/10/16 23:49:00 tnn Exp $

DISTNAME=	libxslt-1.1.22
CATEGORIES=	textproc
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/libxslt/1.1/} \
		ftp://xmlsoft.org/libxslt/

MAINTAINER=	recht@NetBSD.org
HOMEPAGE=	http://xmlsoft.org/XSLT/
COMMENT=	XSLT parser library from the GNOME project

PKG_INSTALLATION_TYPES=	overwrite pkgviews
PKG_DESTDIR_SUPPORT=	user-destdir

USE_TOOLS+=		gmake perl
USE_LIBTOOL=		yes
PKGCONFIG_OVERRIDE=	libxslt.pc.in
PKGCONFIG_OVERRIDE+=	libexslt.pc.in

GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--with-libxml-prefix=${BUILDLINK_PREFIX.libxml2}
CONFIGURE_ARGS+=	--without-python

TEST_TARGET=		check

.include "../../mk/bsd.prefs.mk"
.if ${OPSYS} == "IRIX"
CPPFLAGS+=	-Dsocklen_t=int
.endif

BUILDLINK_API_DEPENDS.libxml2+=	libxml2>=2.6.27

.include "../../security/libgcrypt/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
