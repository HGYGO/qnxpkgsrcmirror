# $NetBSD: Makefile,v 1.31 2007/07/24 13:58:35 joerg Exp $

DISTNAME=	dotfile-2.4.1
PKGREVISION=	2
CATEGORIES=	misc tk
MASTER_SITES=	http://www.blackie.dk/dotfile/download/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.blackie.dk/dotfile/
COMMENT=	GUI dotfile generator program to create .config files

DEPENDS+=	tk>=8.3.2:../../x11/tk

BUILD_DEFS+=	DOTFILE_LANG

.include "../../mk/bsd.prefs.mk"

# `english' or `japanese'
DOTFILE_LANG?=	english

GNU_CONFIGURE=	yes
NO_BUILD=	yes
MAKE_FLAGS+=	mandir=${PREFIX}/${PKGMANDIR}/man1

INSTALLATION_DIRS=	bin share/doc/${PKGNAME_NOREV}

pre-install:
	rm -f ${WRKSRC}/Generator/makeHelp.orig

post-install:
	cd ${WRKSRC:Q}/Doc && ${PAX} -rw . ${PREFIX}/share/doc/${PKGNAME_NOREV}
	${CHOWN} -R ${ROOT_USER}:${ROOT_GROUP} ${PREFIX}/share/doc/${PKGNAME_NOREV}

.include "../../mk/bsd.pkg.mk"
