# $NetBSD: Makefile,v 1.9 2008/06/12 02:14:42 joerg Exp $
#

DISTNAME=	SpreadModule-1.4
PKGNAME=	${PYPKGPREFIX}-${DISTNAME:S/SpreadModule/spreadmodule/}
PKGREVISION=	2
CATEGORIES=	net python
MASTER_SITES=	http://www.python.org/other/spread/
EXTRACT_SUFX=	.tgz

MAINTAINER=	recht@NetBSD.org
HOMEPAGE=	http://www.python.org/other/spread/
COMMENT=	Python bindings for the Spread messaging service

PKG_DESTDIR_SUPPORT=	user-destdir

PYDISTUTILSPKG=	YES

PYTHON_VERSIONS_ACCEPTED=	25 24 23 21

SUBST_CLASSES+=		setup
SUBST_STAGE.setup=	post-patch
SUBST_FILES.setup=	setup.py
SUBST_SED.setup=	-e 's,/usr/local,${PREFIX},g'

.include "../../net/spread/buildlink3.mk"
.include "../../lang/python/extension.mk"
.include "../../mk/bsd.pkg.mk"
