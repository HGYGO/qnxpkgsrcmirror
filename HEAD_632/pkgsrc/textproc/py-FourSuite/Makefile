# $NetBSD: Makefile,v 1.13 2006/06/29 12:47:19 joerg Exp $
#

DISTNAME=	4Suite-0.12.0a3
PKGNAME=	${PYPKGPREFIX}-FourSuite-0.12.0a3
PKGREVISION=	2
CATEGORIES=	textproc python
MASTER_SITES=	ftp://ftp.fourthought.com/pub/4Suite/

MAINTAINER=	drochner@NetBSD.org
HOMEPAGE=	http://4suite.org/
COMMENT=	XML processing tools

CONFLICTS+=	${PYPKGPREFIX}-4Suite-*

PYDISTUTILSPKG=	yes
PY_PATCHPLIST=	yes
PYTHON_VERSIONS_ACCEPTED=	24 23 22 21

#pyxml is needed at runtime to get pyexpat
#.include "../../textproc/py-xml/buildlink3.mk"
.include "../../lang/python/extension.mk"
.include "../../mk/bsd.pkg.mk"
