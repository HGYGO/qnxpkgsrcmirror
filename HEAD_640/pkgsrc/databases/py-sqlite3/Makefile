# $NetBSD: Makefile,v 1.1.1.1 2008/08/27 00:28:57 epg Exp $

PKGNAME=	${PYPKGPREFIX}-sqlite3-0
CATEGORIES=	databases python

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.python.org/
COMMENT=	Built-in sqlite support for Python 2.5 and up

PKG_DESTDIR_SUPPORT=	user-destdir

USE_TOOLS+=		patch

EXTRACT_ELEMENTS=	${PYSUBDIR}/Modules/_sqlite

PYBINMODULE=		yes
PYDISTUTILSPKG=		yes
PYTHON_VERSIONS_ACCEPTED=25
PY_SETUP_SUBST+= 	SQLITE_PREFIX=${BUILDLINK_PREFIX.sqlite3}

# ignore errors due to missing files (EXTRACT_ELEMENTS!)
do-patch:
	set -e;								\
	cd ${WRKSRC};							\
	for f in ${PATCHDIR}/patch-*; do				\
		${PATCH} --batch < "$$f" || ${TRUE};			\
	done

BUILDLINK_API_DEPENDS.python25+=	python25>=2.5.2nb2

.include "../../databases/sqlite3/buildlink3.mk"
.include "../../lang/python/extension.mk"
.include "../../lang/python/srcdist.mk"
.include "../../mk/bsd.pkg.mk"
