# $NetBSD: Makefile,v 1.13 2009/08/05 17:29:56 drochner Exp $
#

DISTNAME=		MayaVi-1.5
PKGREVISION=		3
CATEGORIES=		graphics
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=mayavi/}

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://mayavi.sourceforge.net/
COMMENT=		Scientific data visualizer written in Python

PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=		vtk-python>=4.2:../../graphics/vtk-python

PY_PATCHPLIST=		yes
PYDISTUTILSPKG=		yes

# vtk-python is for 23 only
PYTHON_VERSIONS_ACCEPTED=	23

.include "../../lang/python/application.mk"
.include "../../lang/python/extension.mk"
.include "../../x11/py-Tk/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
