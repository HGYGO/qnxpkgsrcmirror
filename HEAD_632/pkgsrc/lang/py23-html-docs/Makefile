# $NetBSD: Makefile,v 1.5 2006/03/04 21:29:55 jlam Exp $
#

DISTNAME=	html-2.3.3
PKGNAME=	py23-html-docs-2.3.3
CATEGORIES=	lang python
MASTER_SITES=	http://www.python.org/ftp/python/doc/2.3.3/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.python.org/doc/
COMMENT=	HTML Documentation for Python

WRKSRC=		${WRKDIR}/Python-Docs-2.3.3/
DIST_SUBDIR=	python

NO_CONFIGURE=	yes
NO_BUILD=	yes

HTMLDIR=	share/doc/html/python2.3
PLIST_SRC=	${WRKDIR}/.PLIST_SRC

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${HTMLDIR}
	${CAT} ${PKGDIR}/PLIST.pre >${PLIST_SRC}
	cd ${WRKSRC} && ${PAX} -rw -pe [a-z]* ${PREFIX}/${HTMLDIR}
	cd ${PREFIX} && ${FIND} ${HTMLDIR} -type f -print >>${PLIST_SRC}
	cd ${PREFIX} && ${FIND} -d ${HTMLDIR} -type d -print | \
	${SED} -e "s/^/@dirrm /" >>${PLIST_SRC}

.include "../../mk/bsd.pkg.mk"
