# $NetBSD: Makefile,v 1.8 2007/04/22 12:59:12 obache Exp $

DISTNAME=	less-358
PKGNAME=	ja-${DISTNAME}
PKGREVISION=	2
CATEGORIES=	japanese misc
MASTER_SITES=	${MASTER_SITE_GNU:=less/}

PATCH_SITES=	http://www25.big.jp/~jam/less/
PATCHFILES=	less-358-iso254.patch.gz
PATCH_DIST_STRIP= -p1

MAINTAINER=	komine@cc.meisei-u.ac.jp
HOMEPAGE=	http://www25.big.jp/~jam/less/
COMMENT=	Less + zcat + ISO-2022 - a pager similar to more and pg

GNU_CONFIGURE=	yes

.include "../../mk/bsd.pkg.mk"
