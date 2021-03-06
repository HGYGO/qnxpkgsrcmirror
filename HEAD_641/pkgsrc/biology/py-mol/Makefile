# $NetBSD: Makefile,v 1.4 2009/07/08 15:40:54 joerg Exp $

DISTNAME=	pymol-0_98-src
PKGNAME=	${PYPKGPREFIX}-mol-0.98
PKGREVISION=	4
CATEGORIES=	biology
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pymol/}
EXTRACT_SUFX=	.tgz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://pymol.sourceforge.net/
COMMENT=	Molecular Visualization System

PKG_DESTDIR_SUPPORT=	user-destdir

WRKSRC=		${WRKDIR}/pymol-0.98
PYDISTUTILSPKG=	yes
PYSETUP=	setup.py

CONFLICTS=	pymol-[0-9]*

REPLACE_PYTHON=	test/cyg test/run test/show test/win.py

INSTALLATION_DIRS=	bin

post-install:
	cd ${WRKSRC} && env ${MAKE_ENV} PYTHONPATH=${DESTDIR}${PREFIX}/${PYSITELIB} ${PYTHONBIN} setup2.py
	${INSTALL_SCRIPT} ${WRKSRC}/pymol.com ${DESTDIR}${PREFIX}/bin/pymol

.include "../../devel/zlib/buildlink3.mk"
.include "../../graphics/glu/buildlink3.mk"
.include "../../graphics/glut/buildlink3.mk"
.include "../../graphics/png/buildlink3.mk"
.include "../../math/py-Numeric/buildlink3.mk"
.include "../../lang/tcl/buildlink3.mk"
.include "../../x11/tk/buildlink3.mk"
.include "../../x11/py-Tk/buildlink3.mk"
.include "../../x11/py-Pmw/buildlink3.mk"

# Note that the website claims this package needs "freeglut", which
# would mean:
#  .include "../../graphics/freeglut/buildlink3.mk"
# However, the package seems to link with "glut" and not with "freeglut",
# and no other pkgsrc packages seem to use freeglut.

.include "../../lang/python/application.mk"
.include "../../lang/python/extension.mk"
.include "../../mk/bsd.pkg.mk"
