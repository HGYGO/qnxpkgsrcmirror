# $NetBSD: Makefile,v 1.9 2006/06/04 12:10:49 joerg Exp $

DISTNAME=	JapaneseCodecs-1.4.11
PKGNAME=	${PYPKGPREFIX}-jpCodecs-1.4.11
PKGREVISION=	1
CATEGORIES=	converters python
MASTER_SITES=	http://www.python.jp/Zope/download/JapaneseCodecs/ \
		http://www.asahi-net.or.jp/~rd6t-kjym/python/JapaneseCodecs/dist/

MAINTAINER=	tsarna@NetBSD.org
HOMEPAGE=	http://www.asahi-net.or.jp/~rd6t-kjym/python/
COMMENT=	Python Unicode codecs for Japanese charsets

PYDISTUTILSPKG=	yes
PYBINMODULE=	yes
PYTHON_VERSIONS_ACCEPTED= 24 23 22 21

.include "../../lang/python/extension.mk"
.include "../../mk/bsd.pkg.mk"
