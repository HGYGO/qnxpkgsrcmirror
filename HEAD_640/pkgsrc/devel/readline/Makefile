# $NetBSD: Makefile,v 1.46 2008/08/13 11:11:38 he Exp $
#

DISTNAME=	readline-5.2
PKGREVISION=	2
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=readline/}

#PATCH_SITES=	${MASTER_SITE_GNU:=readline/readline-5.1-patches/}
#PATCHFILES=	readline51-001

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://cnswww.cns.cwru.edu/php/chet/readline/rltop.html
COMMENT=	GNU library that can recall and edit previous input
#LICENSE=	gnu-gpl-v2

PKG_INSTALLATION_TYPES=	overwrite pkgviews
PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=		yes
USE_LIBTOOL=		yes
INFO_FILES=		# PLIST

BUILD_TARGET=		all-libtool
INSTALL_TARGET=		install-libtool

.include "../../mk/termcap.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
