# $NetBSD: Makefile,v 1.22 2009/07/23 09:23:28 markd Exp $
#

DISTNAME=	raptor-1.4.19
CATEGORIES=	textproc
MASTER_SITES=	http://download.librdf.org/source/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://librdf.org/raptor/
COMMENT=	RDF Parser Toolkit written in C
LICENSE=	gnu-lgpl-v2.1 OR apache-2.0

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LIBTOOL=	YES
GNU_CONFIGURE=	YES

PKGCONFIG_OVERRIDE+=	raptor.pc.in
CONFIGURE_ARGS+=	--with-html-dir=${PREFIX}/share/doc

TEST_TARGET=		check

.include "../../devel/glib2/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../textproc/libxslt/buildlink3.mk"
.include "../../www/curl/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
