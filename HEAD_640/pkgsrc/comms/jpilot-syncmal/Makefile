# $NetBSD: Makefile,v 1.40 2008/07/14 12:56:00 joerg Exp $

DISTNAME=		jpilot-syncmal-0.80
CATEGORIES=		comms
MASTER_SITES=		http://jasonday.home.att.net/code/syncmal/

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://jasonday.home.att.net/code/syncmal/syncmal.html
COMMENT=		MAL synchronization plugin for J-Pilot

PKG_DESTDIR_SUPPORT=	user-destdir

BUILDLINK_DEPMETHOD.jpilot=	full

USE_TOOLS+=		gmake pkg-config

USE_LIBTOOL=		yes
SHLIBTOOL_OVERRIDE=	# empty

GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--enable-gtk2
CONFIGURE_ARGS+=	--with-plugin-prefix=${BUILDLINK_PREFIX.jpilot}/include/jpilot
CONFIGURE_ARGS+=	--with-pilot-prefix=${BUILDLINK_PREFIX.pilot-link-libs}
CONFIGURE_ARGS+=	--with-libmal=${BUILDLINK_PREFIX.libmal}
MAKE_ENV+=		PILOT_LINK_DIR=${BUILDLINK_PREFIX.pilot-link-libs}
CFLAGS+=		-D__unix__=1

PLUGINSDIR=		${PREFIX}/lib/jpilot/plugins
PLIST_SUBST+=		PLUGINSDIR=${PLUGINSDIR:S/${PREFIX}\///}

.include "../../comms/jpilot/buildlink3.mk"
.include "../../comms/libmal/buildlink3.mk"
.include "../../comms/pilot-link-libs/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
