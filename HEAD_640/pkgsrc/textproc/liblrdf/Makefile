# $NetBSD: Makefile,v 1.2 2008/01/18 05:09:45 tnn Exp $
#

DISTNAME=	liblrdf-0.4.0
PKGREVISION=	1
CATEGORIES=	textproc
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=lrdf/}

MAINTAINER=	heinz@NetBSD.org
HOMEPAGE=	http://lrdf.sourceforge.net/
COMMENT=	Library for easy manipulation of LADSPA plugin RDF descriptions

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=		yes
USE_LIBTOOL=		yes
USE_TOOLS+=		pkg-config
USE_LANGUAGES=		c

PKGCONFIG_OVERRIDE+=	lrdf.pc.in

.include "../../audio/ladspa/buildlink3.mk"
.include "../../textproc/raptor/buildlink3.mk"
.include "../../textproc/libxslt/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
