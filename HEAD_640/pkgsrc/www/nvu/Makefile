# $NetBSD: Makefile,v 1.4 2008/03/04 11:02:26 rillig Exp $
#

DISTNAME=	nvu-1.0-sources
PKGNAME=	nvu-1.0
CATEGORIES=	www
MASTER_SITES=	http://cvs.nvu.com/download/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.nvu.com/
COMMENT=	Web Authoring System

BUILD_DEPENDS+=	zip-[0-9]*:../../archivers/zip

BROKEN_IN=		pkgsrc-2006Q4

WRKSRC=		${WRKDIR}/mozilla
GNU_CONFIGURE=	yes
CONFIGURE_ENV+=	ORBIT_CONFIG=orbit2-config
USE_TOOLS+=	gmake perl pkg-config unzip
USE_LANGUAGES=	c c++

PKGCONFIG_OVERRIDE+=	build/unix/mozilla-gtkmozembed.pc.in
PKGCONFIG_OVERRIDE+=	build/unix/mozilla-js.pc.in
PKGCONFIG_OVERRIDE+=	build/unix/mozilla-nspr.pc.in
PKGCONFIG_OVERRIDE+=	build/unix/mozilla-nss.pc.in
PKGCONFIG_OVERRIDE+=	build/unix/mozilla-plugin.pc.in
PKGCONFIG_OVERRIDE+=	build/unix/mozilla-xpcom.pc.in

CPPFLAGS+=	-I${BUILDLINK_PREFIX.libIDL}/include/libIDL-2.0
BUILDLINK_TRANSFORM+=	l:IDL:IDL-2

.include "../../net/libIDL/buildlink3.mk"
.include "../../net/ORBit2/buildlink3.mk"
.include "../../x11/gtk/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
