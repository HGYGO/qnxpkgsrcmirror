# $NetBSD: Makefile,v 1.11 2009/07/22 09:36:31 wiz Exp $
# FreeBSD: ports/www/plone/Makefile,v 1.25 2007/02/17 08:32:54 rafan Exp
#

DISTNAME=	Plone-${PLONE3_VERSION}
PKGNAME=	${PLONE_PKG_PREFIX}-${PLONE3_VERSION}
PKGREVISION=	1
CATEGORIES=	www python
MASTER_SITES=	http://launchpad.net/plone/3.1/${PLONE3_VERSION}/+download/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://plone.org/
COMMENT=	User friendly CMS written on top of ZOPE

PKG_DESTDIR_SUPPORT=	user-destdir

PLONE_VERSION=			3
PYTHON_VERSIONS_ACCEPTED=	24
ZOPE_VERSION_ACCEPTED=		210

ZOPE_PRODUCT_NAME=	plone
ZOPE_PRODUCT_VER=	${PLONE3_VERSION}
ZOPE_BUILD_METHOD=	zope-force-build
ZOPE_PRODUCT_SRCDIR=	${WRKSRC}/Products

USE_TOOLS+=		msgfmt pax
PRIVILEGED_STAGES+=	clean
CONFLICTS=		zope25-BTreeFolder2-[0-9]* zope25-CMF-[0-9]* \
			zope25-CMFPlone-[0-9]*
PLIST_SRC=		${WRKDIR}/PLIST

REPLACE_PYTHON_DIRS=	${WRKSRC}/Products/kupu ${WRKSRC}/lib/python/wicked
REPLACE_PYTHON_PAT=	*.cgi *.py

PLONE_PODIRS=		PlacelessTranslationService/locales PloneTranslations

pre-build:
	${RM} -rf ${WRKSRC}/Products/ATContentTypes/utilities
	${RM} -f ${WRKSRC}/Products/CMFCore/tests/fake_skins/fake_skin/.test1.py

post-build:
	${CP} ${PKGDIR}/PLIST ${WRKDIR}/PLIST
	cd ${WRKSRC}/Products; \
		${FIND} ${PLONE_PODIRS} -xdev -type f -name '*.po' -print | \
		while read f; do \
			mo=`${ECHO} $$f | ${SED} -e 's|\\.po$$|.mo|'`; \
			${TEST} -f $$mo || msgfmt -o $$mo $$f; \
			${ECHO} "${PLONE_BASE}/$$mo" >> ${WRKDIR}/PLIST; \
		done

post-install:
	cd ${WRKSRC}/lib; pax -rw . ${DESTDIR}${ZOPE_DIR}/lib

.include "../../www/plone/ploneversion.mk"
.include "../../www/zope/replace.mk"
.include "../../textproc/py-elementtree/buildlink3.mk"
.include "../../textproc/py-libxml2/buildlink3.mk"
.include "../../graphics/py-imaging/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
