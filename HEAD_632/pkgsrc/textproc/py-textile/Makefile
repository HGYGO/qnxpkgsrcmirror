# $NetBSD: Makefile,v 1.7 2007/08/09 13:29:33 joerg Exp $
#

DISTNAME=		textile-2
PKGNAME=		${PYPKGPREFIX}-textile-2.0
PKGREVISION=		1
CATEGORIES=		textproc python
MASTER_SITES=		http://dealmeida.net/code/

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://dealmeida.net/projects/textile/
COMMENT=		XHTML generator using a simple markup

PKG_DESTDIR_SUPPORT=	user-destdir

PYDISTUTILSPKG=		yes
NO_CONFIGURE=		yes
PYTHON_VERSIONS_ACCEPTED= 24 23 22

.include "../../lang/python/extension.mk"
.include "../../mk/bsd.pkg.mk"
