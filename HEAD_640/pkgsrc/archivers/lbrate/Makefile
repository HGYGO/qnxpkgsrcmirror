# $NetBSD: Makefile,v 1.12 2006/06/18 07:04:16 rillig Exp $

DISTNAME=	lbrate-1.1
PKGREVISION=	1
CATEGORIES=	archivers
MASTER_SITES=	ftp://ftp.ibiblio.org/pub/Linux/utils/compress/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://rus.members.beeb.net/lbrate.html
COMMENT=	Extract/decompress CP/M LBR archives

PKG_INSTALLATION_TYPES=	overwrite pkgviews

MAKE_FLAGS+=	PREFIX=${PREFIX:Q}
LBRATE_DOCSDIR=	${PREFIX}/share/doc/lbrate

post-install:
	${INSTALL_DATA_DIR} ${LBRATE_DOCSDIR}
.for f in COPYING ChangeLog README TODO
	${INSTALL_DATA} ${WRKSRC}/${f} ${LBRATE_DOCSDIR}
.endfor

.include "../../mk/bsd.pkg.mk"
