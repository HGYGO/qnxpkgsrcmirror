# $NetBSD: Makefile,v 1.17 2007/02/22 19:01:14 wiz Exp $
#

DISTNAME=		libvisual-0.4.0
PKGREVISION=		1
CATEGORIES=		audio graphics
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=libvisual/}

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://localhost.nl/~synap/libvisual/
COMMENT=		Abstraction library between applications and audio visualisation plugins

USE_LANGUAGES=		c c++
USE_LIBTOOL=		yes
PKGCONFIG_OVERRIDE+=	${WRKSRC}/libvisual.pc.in
GNU_CONFIGURE=		yes
USE_TOOLS+=		pkg-config

.include "../../mk/bsd.prefs.mk"
.include "../../mk/compiler.mk"

.if ${MACHINE_ARCH} == "i386"
.  if !empty(CC_VERSION:Mgcc*)
CPPFLAGS+=		-mmmx
.  endif
.endif

.include "../../mk/bsd.pkg.mk"
