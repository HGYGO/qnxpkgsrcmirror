# $NetBSD: Makefile,v 1.63 2007/12/02 12:05:00 wiz Exp $

DISTNAME=	freetype-2.3.5
PKGNAME=	${DISTNAME:S/-/2-/}
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=freetype/} \
		ftp://ring.aist.go.jp/pub/graphics/freetype/freetype2/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	rh@NetBSD.org
HOMEPAGE=	http://www.freetype.org/
COMMENT=	Font rendering engine and library API

PKG_INSTALLATION_TYPES=	overwrite pkgviews
PKG_DESTDIR_SUPPORT=	user-destdir

USE_LIBTOOL=		yes
USE_TOOLS+=		grep gmake
GNU_CONFIGURE=		yes
CONFIGURE_DIRS=		${WRKSRC}/builds/unix
BUILD_DIRS=		${WRKSRC}
CONFIGURE_ARGS+=	--includedir=${PREFIX}/include
CONFIGURE_ENV+=		ac_cv_path_GREP=${GREP:Q} ac_cv_path_EGREP=${EGREP:Q}

.if exists(/System/Library/Frameworks/Carbon.framework)
LDFLAGS+=	-framework Carbon
.endif

PKGCONFIG_OVERRIDE=	builds/unix/freetype2.in

.include "../../mk/bsd.prefs.mk"
.include "../../mk/compiler.mk"

PKG_OPTIONS_VAR=	PKG_OPTIONS.freetype2
PKG_SUPPORTED_OPTIONS=	truetype subpixel

.include "../../mk/bsd.options.mk"

###
### This builds freetype2 with the TrueType bytecode interpreter.  Note
### that there are important patent issues related to the use of the
### interpreter:
###
###	http://www.freetype.org/patents.html
###
.if !empty(PKG_OPTIONS:Mtruetype)
CFLAGS+=	-DTT_CONFIG_OPTION_BYTECODE_INTERPRETER
.endif

# subpixel (lcd) rendering, also patent issues
.if !empty(PKG_OPTIONS:Msubpixel)
CFLAGS+=	-DFT_CONFIG_OPTION_SUBPIXEL_RENDERING
.endif

# source code breaks strict aliasing in gcc>=2.95
.if !empty(CC_VERSION:Mgcc-[3-9]*) || !empty(CC_VERSION:Mgcc-2.95*)
CFLAGS+=	-fno-strict-aliasing
.endif

# tell configure not to use unix-specific version of ftsystem.c on OpenBSD
.if ${OPSYS} == "OpenBSD"
CONFIGURE_ENV+=		ac_cv_func_mmap_fixed_mapped=no
.endif

.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])
CONFIGURE_ENV+=		CC_BUILD=${NATIVE_CC:Q}
.endif

post-configure:
	cd ${WRKSRC} && ${LN} -s builds/unix/unix.mk config.mk
.if ${OPSYS} == "IRIX"
	${MKDIR} ${WRKSRC}/.libs
.endif

.include "../../devel/zlib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
