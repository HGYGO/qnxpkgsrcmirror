# $NetBSD: Makefile,v 1.19 2008/07/01 08:34:37 agc Exp $
#

DISTNAME=	dpkg_1.13.25
PKGNAME=	dpkg-1.13.25
CATEGORIES=	misc
MASTER_SITES=	${MASTER_SITE_DEBIAN:=pool/main/d/dpkg/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://packages.debian.org/dpkg
COMMENT=	Package maintenance system for Debian

PKG_DESTDIR_SUPPORT=	user-destdir

BUILD_DEPENDS+=		po4a>=0:../../textproc/po4a

WRKSRC=		${WRKDIR}/${PKGNAME_NOREV}
BUILD_DEFS+=	VARBASE

USE_PKGLOCALEDIR=	yes
GNU_CONFIGURE=		yes
USE_LANGUAGES=		c c++
USE_TOOLS+=		gmake msgfmt perl
USE_NCURSES=		yes	# needs tigetstr()

REPLACE_PERL=		scripts/*.pl

CONFIGURE_ARGS+=	--with-zlib
CONFIGURE_ARGS+=	--with-start-stop-daemon=no
CONFIGURE_ARGS+=	--with-sgml-doc=no
CONFIGURE_ARGS+=	--with-admindir=${VARBASE}/db/dpkg
CONFIGURE_ARGS+=	--sysconfdir=${PREFIX}/share/dpkg

.include "../../mk/bsd.prefs.mk"

.if ${OPSYS} == "Darwin"
CONFIGURE_ARGS+=	--enable-linker-optimisations=no
.endif

post-extract:
	cd ${FILESDIR} && cp obstack.* ${WRKSRC}/lib/

.include "../../archivers/bzip2/buildlink3.mk"
.include "../../converters/libiconv/buildlink3.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/ncurses/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
