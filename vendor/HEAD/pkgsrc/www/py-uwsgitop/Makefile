# $NetBSD: Makefile,v 1.3 2014/01/12 10:46:55 wiz Exp $

DISTNAME=	uwsgitop-0.6.2
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	python www
MASTER_SITES=	https://pypi.python.org/packages/source/u/uwsgitop/

MAINTAINER=	rodent@NetBSD.org
HOMEPAGE=	http://projects.unbit.it/uwsgi/wiki/StatsServer
COMMENT=	Command to interface with the uWSGI stats server
LICENSE=	mit

USE_LANGUAGES=	# none

DEPENDS+=	${PYPKGPREFIX}-uwsgi-[0-9]*:../../www/py-uwsgi
DEPENDS+=	${PYPKGPREFIX}-simplejson-[0-9]*:../../converters/py-simplejson
DEPENDS+=	${PYPKGPREFIX}-curses-[0-9]*:../../devel/py-curses
.include "../../lang/python/distutils.mk"
.include "../../mk/bsd.pkg.mk"
