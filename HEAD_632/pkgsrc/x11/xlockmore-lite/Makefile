# $NetBSD: Makefile,v 1.10 2006/05/08 19:29:22 hubertf Exp $

.include "../../x11/xlockmore/Makefile.common"

PKGNAME=	${DISTNAME:S/-/-lite-/}
COMMENT=	"lite" version of xlockmore

CONFIGURE_ARGS+=	--without-xpm
CONFIGURE_ARGS+=	--without-gltt
CONFIGURE_ARGS+=	--without-ttf
CONFIGURE_ARGS+=	--without-glftgl
CONFIGURE_ARGS+=	--without-freetype
CONFIGURE_ARGS+=	--without-opengl
CONFIGURE_ARGS+=	--without-mesa
CONFIGURE_ARGS+=	--without-rplay
CONFIGURE_ARGS+=	--without-esound
CONFIGURE_ARGS+=	--without-gtk2
CONFIGURE_ARGS+=	--without-gtk

PLIST_SUBST+=    LITE="@comment Not in lite version: "

.include "../../mk/bsd.pkg.mk"
