# $NetBSD: Makefile,v 1.7 2009/07/22 09:01:33 wiz Exp $
#

PKGNAME=	pornview-0.2.0pre1
DISTNAME=	pornview_0.2pre1.orig
PKGREVISION=	2
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_DEBIAN:=pool/main/p/pornview/}

MAINTAINER=	dhowland@users.sourceforge.net
HOMEPAGE=	http://pornview.sourceforge.net/
COMMENT=	GTK+ image viewer

PKG_DESTDIR_SUPPORT=	user-destdir

WRKSRC=			${WRKDIR}/pornview-0.2.0pre1

GNU_CONFIGURE=		yes
USE_LIBTOOL=		yes
USE_PKGLOCALEDIR=	yes

USE_TOOLS+=		intltool msgfmt perl:run
REPLACE_PERL+=		src/scripts/helloworld

.include "options.mk"

.include "../../graphics/jpeg/buildlink3.mk"
.include "../../graphics/png/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
