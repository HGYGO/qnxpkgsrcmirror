# $NetBSD: Makefile,v 1.21 2007/09/15 11:45:57 joerg Exp $

DISTNAME=	openal-0.0.8
PKGREVISION=	2
CATEGORIES=	audio
MASTER_SITES=	http://www.openal.org/openal_webstf/downloads/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.openal.org/
COMMENT=	3D positional spatialized sound library

USE_TOOLS+=		gmake makeinfo
USE_LIBTOOL=		yes
GNU_CONFIGURE=		yes

PTHREAD_AUTO_VARS=	yes

INFO_FILES=		# PLIST
INSTALLATION_DIRS=	${PKGINFODIR} include/AL
PKGCONFIG_OVERRIDE=	admin/pkgconfig/openal.pc.in
LIBS+=			${LIBOSSAUDIO}

.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/oss.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
