# $NetBSD: Makefile,v 1.13 2007/07/28 00:23:13 joerg Exp $

DISTNAME=	Silva-0.9.2.2
PKGNAME=	zope25-Silva-0.9.2.2
PKGREVISION=	3
CATEGORIES=	www
MASTER_SITES=	http://www.zope.org/Members/infrae/Silva/
EXTRACT_SUFX=	.tgz
SIVLAFILES=	Silva-0.9.2.2 SilvaMetadata-0.7 ProxyIndex-1.1 \
		Annotations-0.4.1
DISTFILES=	${SIVLAFILES:S/$/.tgz/g}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.infrae.com/products/silva
COMMENT=	Browser based publication system

DEPENDS+=	zope25-Formulator>=1.4.2:../../www/zope25-Formulator
DEPENDS+=	zope25-ParsedXML>=1.3.1:../../www/zope25-ParsedXML
DEPENDS+=	zope25-XMLWidgets-[0-9]*:../../www/zope25-XMLWidgets
DEPENDS+=	zope25-FileSystemSite>=1.2:../../www/zope25-FileSystemSite

PRODNAMES=	Silva SilvaMetadata ProxyIndex Annotations

REPLACE_PYTHON+=	${WRKDIR}/Silva/utils/ZPTPrettyPrinter.py

.include "../../www/zope25/product.mk"
.include "../../mk/bsd.pkg.mk"
