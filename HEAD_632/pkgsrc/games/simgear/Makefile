# $NetBSD: Makefile,v 1.2 2007/07/28 15:51:24 drochner Exp $
#

DISTNAME=		SimGear-0.3.10
PKGNAME=		${DISTNAME:S/SimGear/simgear/}
CATEGORIES=		devel
MASTER_SITES=		ftp://ftp.simgear.org/pub/simgear/Source/

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		ftp://ftp.simgear.org/pub/simgear/Source/
COMMENT=		Simulator Construction Tools

USE_PKGLOCALEDIR=	yes
GNU_CONFIGURE=		yes
USE_LANGUAGES=		c c++

.include "../../audio/openal/buildlink3.mk"
.include "../../audio/freealut/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
BUILDLINK_API_DEPENDS.plib+= plib>=1.8.4
.include "../../games/plib/buildlink3.mk"
.include "../../graphics/jpeg/buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
