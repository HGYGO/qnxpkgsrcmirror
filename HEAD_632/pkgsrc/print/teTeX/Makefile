# $NetBSD: Makefile,v 1.45 2007/10/25 22:01:05 jlam Exp $
#

DISTNAME=	teTeX-3.0
PKGREVISION=	1
CATEGORIES=	print meta-pkgs
MASTER_SITES=	# empty
DISTFILES=	# empty

MAINTAINER=	kei@NetBSD.org
HOMEPAGE=	http://www.tug.org/tetex/
COMMENT=	Thomas Esser's TeX distribution for UNIX compatible systems, version 2

PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=	texi2html>=1.52:../../textproc/texi2html

CONFLICTS+=	teTeX2-[0-9]*

EXTRACT_ONLY=	# empty
NO_CHECKSUM=	yes
NO_CONFIGURE=	yes
NO_BUILD=	yes
PLIST_SRC=	# empty

do-install:	# do nothing

.include "../../mk/tex.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
