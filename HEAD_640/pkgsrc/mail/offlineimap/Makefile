# $NetBSD: Makefile,v 1.15 2008/04/25 20:39:10 joerg Exp $
#

DISTNAME=	offlineimap_${_OFFLINEIMAP_VER}
PKGNAME=	offlineimap-${_OFFLINEIMAP_VER}
CATEGORIES=	mail
MASTER_SITES=	http://software.complete.org/offlineimap/static/download_area/${_OFFLINEIMAP_VER}/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://software.complete.org/offlineimap
COMMENT=	Powerful IMAP/Maildir synchronization and reader support

WRKSRC=		${WRKDIR}/offlineimap

# This is only to placate pkglint
_OFFLINEIMAP_VER=	4.0.16

PYDISTUTILSPKG=			yes
PYTHON_PATCH_SCRIPTS=		bin/offlineimap
PLIST_SUBST+=			PYSITELIB=${PYSITELIB:Q}

INSTALLATION_DIRS=	${PKGMANDIR}/man1 share/examples/offlineimap

post-install:
.for _f_ in offlineimap.conf offlineimap.conf.minimal
	${INSTALL_DATA} ${WRKSRC}/${_f_} ${PREFIX}/share/examples/offlineimap/${_f_}
.endfor
	${INSTALL_MAN} ${WRKSRC}/offlineimap.1 ${PREFIX}/${PKGMANDIR}/man1/offlineimap.1

.include "../../devel/py-cursespanel/buildlink3.mk"
.include "../../devel/py-curses/buildlink3.mk"
.include "../../lang/python/extension.mk"
.include "../../lang/python/application.mk"
.include "../../mk/bsd.pkg.mk"
