# $NetBSD: Makefile,v 1.5 2006/06/07 13:03:24 joerg Exp $
#

DISTNAME=		python-pslib_0.2.0.orig
PKGNAME=		${PYPKGPREFIX}-pslib-0.2.0
PKGREVISION=		2
CATEGORIES=		print
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=pslib/}

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://pslib.sourceforge.net/
COMMENT=		Python bindings for pslib

WRKSRC=		${WRKDIR}/python-pslib-0.2.0
PYDISTUTILSPKG=	yes
PYTHON_VERSIONS_ACCEPTED=	24 23

.include "../../lang/python/extension.mk"
.include "../../print/pslib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
