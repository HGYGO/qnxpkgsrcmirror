# $NetBSD: Makefile,v 1.5 2009/02/05 13:43:06 taca Exp $

DISTNAME=	squid-2.7.STABLE6
PKGNAME=	${DISTNAME:S/STABLE//}
CATEGORIES=	www
MASTER_SITES=	http://www.squid-cache.org/Versions/v2/2.7/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	taca@NetBSD.org
HOMEPAGE=	http://www.squid-cache.org/
COMMENT=	Post-Harvest_cached WWW proxy cache and accelerator

USE_TOOLS+=		perl
GNU_CONFIGURE=		yes
PKG_DESTDIR_SUPPORT=	destdir

.include "../../www/squid/Makefile.squid"
.include "../../www/squid/options.mk"
.include "../../mk/bsd.pkg.mk"
