# $NetBSD: Makefile,v 1.2 2009/08/03 13:39:45 joerg Exp $
#

DISTNAME=	flactag-1.1
CATEGORIES=	audio
MASTER_SITES=	http://software.gently.org.uk/flactag-1.1/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://software.gently.org.uk/flactag-1.1/
COMMENT=	Tagger for flac album files
LICENSE=	gnu-gpl-v2

USE_LANGUAGES=	c++
USE_TOOLS=	gmake
PKG_DESTDIR_SUPPORT= user-destdir

INSTALLATION_DIRS=	bin

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/flactag ${DESTDIR}${PREFIX}/bin
# the "discid" program doesn't do more, don't install for namespace sanity

.include "../../audio/flac/buildlink3.mk"
.include "../../audio/libdiscid/buildlink3.mk"
.include "../../www/neon/buildlink3.mk"
.include "../../graphics/jpeg/buildlink3.mk"
.include "../../textproc/unac/buildlink3.mk"
.include "../../audio/libmusicbrainz/buildlink3.mk"
.include "../../devel/libslang/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
