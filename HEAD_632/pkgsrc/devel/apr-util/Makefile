# $NetBSD: Makefile,v 1.4 2007/10/11 09:12:25 tron Exp $

DISTNAME=	apr-util-1.2.10
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_APACHE:=apr/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://apr.apache.org/
COMMENT=	Apache Portable Runtime utilities

PKG_DESTDIR_SUPPORT=	user-destdir

PKG_INSTALLATION_TYPES=	overwrite pkgviews

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	pkg-config

PKGCONFIG_OVERRIDE+=	apr-util.pc.in

CONFIGURE_ARGS+= \
		--with-apr=${BUILDLINK_PREFIX.apr}/bin/apr-1-config \
		--with-expat=${BUILDLINK_PREFIX.expat} \
		--without-gdbm --without-sqlite3
MAKE_ENV+=      WRAPPER_DIR=${WRAPPER_DIR:Q}

.include "../../mk/bsd.prefs.mk"
.include "options.mk"

.include "../../converters/libiconv/buildlink3.mk"
.include "../../devel/apr/buildlink3.mk"
.include "../../textproc/expat/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
