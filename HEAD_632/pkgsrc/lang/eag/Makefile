# $NetBSD: Makefile,v 1.8 2007/03/06 20:32:14 wiz Exp $

DISTNAME=		eag-2.3
PKGREVISION=		2
CATEGORIES=		lang
MASTER_SITES=		ftp://ftp.cs.ru.nl/pub/eag/
EXTRACT_SUFX=		.tgz

MAINTAINER=		jaapb@kerguelen.org
HOMEPAGE=		http://www.cs.ru.nl/~kees/eag/
COMMENT=		Transducer generator using affix grammars

PKG_INSTALLATION_TYPES=	overwrite pkgviews

USE_LIBTOOL=		yes
GNU_CONFIGURE=		yes

.include "../../x11/libXaw/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
