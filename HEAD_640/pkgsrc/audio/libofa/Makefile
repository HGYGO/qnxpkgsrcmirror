# $NetBSD: Makefile,v 1.5 2008/07/14 12:55:57 joerg Exp $
#

DISTNAME=		libofa-0.9.3
PKGREVISION=		2
CATEGORIES=		audio
MASTER_SITES=		http://www.musicip.com/dns/files/

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://www.musicip.com/dns/index.jsp
COMMENT=		Open Fingerprint Architecture library

PKG_DESTDIR_SUPPORT=	user-destdir

USE_PKGLOCALEDIR=	yes
USE_LANGUAGES=		c c++
USE_LIBTOOL=		yes
USE_TOOLS+=		pkg-config
GNU_CONFIGURE=		yes

PKGCONFIG_OVERRIDE+=	libofa.pc.in

.include "../../math/fftw/buildlink3.mk"
# next two only needed for examples
.include "../../textproc/expat/buildlink3.mk"
.include "../../www/curl/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
