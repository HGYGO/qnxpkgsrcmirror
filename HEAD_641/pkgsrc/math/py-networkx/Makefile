# $NetBSD: Makefile,v 1.3 2009/05/14 13:22:34 he Exp $
#

DISTNAME=	networkx-0.37
PKGREVISION=	1
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	math python
MASTER_SITES=	https://networkx.lanl.gov/download/networkx/ \
		http://cheeseshop.python.org/pypi/networkx/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://networkx.lanl.gov/
COMMENT=	Python package for creating and manipulating graphs and networks

PKG_DESTDIR_SUPPORT=	user-destdir
PYTHON_VERSIONS_ACCEPTED=	25 24
PYDISTUTILSPKG=	yes

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
