# $NetBSD: Makefile,v 1.20 2009/02/09 22:56:22 joerg Exp $
#

DISTNAME=	eric-3.8.1
PKGREVISION=		1
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=eric-ide/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.die-offenbachs.de/detlev/eric.html
COMMENT=	Python IDE

DEPENDS+=	${PYPKGPREFIX}-qt3-modules>=3.11:../../x11/py-qt3-modules
DEPENDS+=	${PYPKGPREFIX}-qt3-qscintilla>=3.11:../../x11/py-qt3-qscintilla

NO_BUILD=		yes
USE_LANGUAGES=

PY_PATCHPLIST=		yes

CONFIGURE_ARGS+=	-b ${PREFIX:Q}/bin
CONFIGURE_ARGS+=	-d ${PREFIX:Q}/${PYSITELIB:Q}

do-install:
	(cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} \
		${PYTHONBIN} install.py ${CONFIGURE_ARGS})
	${PYTHONBIN} -c "import sitecustomize"

.include "../../lang/python/extension.mk"
.include "../../textproc/py-xml/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
