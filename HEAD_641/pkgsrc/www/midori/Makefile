# $NetBSD: Makefile,v 1.15 2009/08/12 02:31:23 obache Exp $

DISTNAME=	midori-0.1.9
PKGREVISION=	2
CATEGORIES=	www
MASTER_SITES=	http://archive.xfce.org/src/apps/midori/0.1/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.twotoasts.de/index.php?/pages/midori_summary.html
COMMENT=	Lightweight web browser using WebKit
EXTRACT_SUFX=	.tar.bz2

HAS_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	gmake intltool msgfmt pkg-config

PKG_DESTDIR_SUPPORT=	user-destdir
CONFIGURE_ARGS+=	--prefix=${PREFIX:Q}

REPLACE_PYTHON=		waf wscript docs/api/wscript_build
REPLACE_PYTHON+=	katze/wscript_build extensions/wscript_build
REPLACE_PYTHON+=	icons/wscript_build midori/wscript_build

BUILD_DEPENDS+=		${PYPKGPREFIX}-docutils>=0.4:../../textproc/py-docutils
BUILD_DEPENDS+=		librsvg>=2.18:../../graphics/librsvg

DEPENDS+=		gnome-themes-[0-9]*:../../x11/gnome-themes

EGDIR=			${PREFIX}/share/examples/midori
OWN_DIRS=		${PKG_SYSCONFDIR}/xdg/midori
CONF_FILES=		${EGDIR}/search ${PKG_SYSCONFDIR}/xdg/midori/search

PRIVILEGED_STAGES+=	clean

# XXX stupid hack. python has a marshal.h that gets included before
# the local marshal.h
SUBST_CLASSES+=		marshal marshal2
SUBST_STAGE.marshal=	pre-configure
SUBST_MESSAGE.marshal=	Gross hack (part one) in progress
SUBST_FILES.marshal=	midori/midori-locationaction.c midori/midori-panel.c
SUBST_FILES.marshal+=	midori/midori-view.c midori/midori-searchaction.c
SUBST_FILES.marshal+=	midori/midori-browser.c
SUBST_FILES.marshal+=	katze/katze-array.c katze/katze-arrayaction.c
SUBST_SED.marshal=	-e 's/"marshal/"marshallocal/'
SUBST_STAGE.marshal2=	pre-configure
SUBST_MESSAGE.marshal2=	Gross hack (part two) in progress
SUBST_FILES.marshal2=	midori/wscript_build katze/wscript_build
SUBST_SED.marshal2=	-e s/\'marshal/\'marshallocal/

pre-configure:
	${MV} ${WRKSRC}/midori/marshal.list ${WRKSRC}/midori/marshallocal.list
	${MV} ${WRKSRC}/katze/marshal.list ${WRKSRC}/katze/marshallocal.list

.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/libidn/buildlink3.mk"
.include "../../devel/libsexy/buildlink3.mk"
.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../lang/python/application.mk"
BUILDLINK_API_DEPENDS.libsoup24+=libsoup24>=2.26.0
.include "../../net/libsoup24/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../www/webkit-gtk/buildlink3.mk"
.include "../../x11/libunique/buildlink3.mk"
.include "../../sysutils/libnotify/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
