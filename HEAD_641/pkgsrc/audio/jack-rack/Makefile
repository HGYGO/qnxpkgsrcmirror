# $NetBSD: Makefile,v 1.2 2009/07/22 09:01:18 wiz Exp $
#

DISTNAME=	jack-rack-1.4.7
CATEGORIES=	audio
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=jack-rack/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	bjs@NetBSD.org
HOMEPAGE=	http://jack-rack.sourceforge.net/
COMMENT=	Effects "rack" for JACK

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=		yes
USE_LIBTOOL=		yes
USE_PKGLOCALEDIR=	yes
USE_TOOLS+=		gmake msgfmt pkg-config

CONFIGURE_ARGS+=	--disable-aseq
CONFIGURE_ARGS+=	--disable-lash

BUILD_DEFS+=		LADSPA_PLUGIN_PATH
EGDIR=			${PREFIX}/share/examples/${PKGBASE}
###
### NOTE: this is a colon-delimited list like e.g. PATH.
###
LADSPA_PLUGIN_PATH?=		${PREFIX}/lib/ladspa

###
### XXX This package will not find the headers it wants otherwise.
###
CPPFLAGS+=	-I${BUILDLINK_PREFIX.glib2}/include/glib
CPPFLAGS+=	-DLADSPA_PATH="\"${LADSPA_PLUGIN_PATH}\""

post-install:
	${INSTALL_DATA_DIR} ${DESTDIR}${EGDIR}
	${INSTALL_DATA} ${WRKSRC}/ecarack ${DESTDIR}${EGDIR}/ecarack.py

.include "../../textproc/xmlcatmgr/catalogs.mk"

.include "../../audio/jack/buildlink3.mk"
.include "../../audio/ladspa/buildlink3.mk"
.include "../../devel/libgnomeui/buildlink3.mk"
.include "../../textproc/liblrdf/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
