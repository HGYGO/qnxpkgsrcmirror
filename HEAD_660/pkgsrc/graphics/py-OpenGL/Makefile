# $NetBSD: Makefile,v 1.14 2013/06/04 22:16:25 tron Exp $

DISTNAME=	PyOpenGL-3.0.1
PKGNAME=	${PYPKGPREFIX}-${DISTNAME:S/^Py//}
PKGREVISION=	3
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pyopengl/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://pyopengl.sourceforge.net/
COMMENT=	Pyhton bindings for OpenGL

DEPENDS+=	${PYPKGPREFIX}-Tk-[0-9]*:../../x11/py-Tk

PYDISTUTILSPKG=	yes
#PY_PATCHPLIST=	YES

#.include "../../lang/python/egg.mk"
.include "../../lang/python/extension.mk"
.include "../../graphics/Mesa/buildlink3.mk"
.include "../../math/py-Numeric/buildlink3.mk"
.include "../../lang/tcl/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
