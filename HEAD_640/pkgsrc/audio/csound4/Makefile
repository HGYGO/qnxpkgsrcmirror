# $NetBSD: Makefile,v 1.13 2006/12/15 14:34:19 wiz Exp $
#

DISTNAME=		csound-4.23f13gbs.0
PKGNAME=		csound4-4.23.13.0
PKGREVISION=		2
CATEGORIES=		audio
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=csound/}

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://sourceforge.net/projects/csound/
COMMENT=		Software synthesizer and sequencer

DIST_SUBDIR=		csound
CONFLICTS+=		csound-bath-4*
CONFLICTS+=		csound-dev-4*
USE_LANGUAGES=		c c++
USE_TOOLS+=		gmake makeinfo
GNU_CONFIGURE=		yes
TEXINFO_REQD=		4.2
CONFIGURE_ARGS+=	--enable-debug
CONFIGURE_ARGS+=	--bindir=${PREFIX}/lib/csound4
CFLAGS+=		-g
INFO_FILES=		# PLIST

NOT_FOR_PLATFORM=	*-*-alpha *-*-sparc64	# Severe LP64 problems

post-install:
	cd ${PREFIX} && ${LN} -s ../lib/csound4/csound bin/csound4

.include "../../x11/fltk/buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
