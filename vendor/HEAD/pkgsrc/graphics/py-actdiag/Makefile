# $NetBSD: Makefile,v 1.10 2014/01/25 10:30:09 wiz Exp $

DISTNAME=	actdiag-0.5.1
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	graphics
MASTER_SITES=	http://pypi.python.org/packages/source/a/actdiag/

MAINTAINER=	obache@NetBSD.org
HOMEPAGE=	http://blockdiag.com/actdiag/build/html/
COMMENT=	Simple activity-diagram image generator
LICENSE=	apache-2.0

DEPENDS+=	${PYPKGPREFIX}-blockdiag>=1.3.1:../../graphics/py-blockdiag

PYTHON_SELF_CONFLICT=		yes

USE_LANGUAGES=	# none

INSTALLATION_DIRS+=	${PKGMANDIR}/man1

post-install:
	${INSTALL_MAN} ${WRKSRC}/actdiag.1 \
		${DESTDIR}${PREFIX}/${PKGMANDIR}/man1

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
