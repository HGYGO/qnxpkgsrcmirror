# $NetBSD: Makefile,v 1.25 2008/05/19 13:47:45 tnn Exp $

DISTNAME=	glitz-0.5.6
PKGREVISION=	2
CATEGORIES=	graphics
MASTER_SITES=	http://cairographics.org/snapshots/

MAINTAINER=	adam@NetBSD.org
HOMEPAGE=	http://freedesktop.org/Software/glitz
COMMENT=	OpenGL 2D graphics library and a backend for gl output in cairo

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LANGUAGES+=		c99
USE_LIBTOOL=		yes
GNU_CONFIGURE=		yes
PKGCONFIG_OVERRIDE=	src/agl/glitz-agl.pc.in src/glx/glitz-glx.pc.in \
			src/glitz.pc.in

PLIST_VARS+=		agl
.if exists(/System/Library/Frameworks/AGL.framework)
PLIST.agl=		yes
CONFIGURE_ENV+=		AGL_LIBS="-framework AGL"
.endif

.include "../../mk/bsd.prefs.mk"

# This is for the benefit of the configure test; libglitz-glx already
# links against libpthread.
.if ${OPSYS} == "IRIX"
BUILDLINK_TRANSFORM+=	l:GL:GL:pthread
.endif

.include "options.mk"

.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
