# $NetBSD: Makefile,v 1.22 2009/01/04 18:01:00 wiz Exp $

DISTNAME=		gnucash-docs-2.2.0
CATEGORIES=		finance
MASTER_SITES=		http://www.gnucash.org/pub/gnucash/sources/stable/ \
			${MASTER_SITE_SOURCEFORGE:=gnucash/}

DEPENDS+=		yelp-[0-9]*:../../misc/yelp

MAINTAINER=		jdolecek@NetBSD.org
HOMEPAGE=		http://www.gnucash.org/
COMMENT=		Documentation for GnuCash - personal double-entry accounting program

PKG_DESTDIR_SUPPORT=	user-destdir

USE_DIRS+=		gnome2-1.5
USE_TOOLS+=		gmake
GNU_CONFIGURE=		YES

.include "../../textproc/rarian/omf.mk"
.include "../../mk/bsd.pkg.mk"
