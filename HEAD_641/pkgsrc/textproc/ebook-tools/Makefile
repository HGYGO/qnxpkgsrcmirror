# $NetBSD: Makefile,v 1.1.1.1 2009/01/10 22:20:23 wiz Exp $
#

DISTNAME=	ebook-tools-0.1.1
CATEGORIES=	textproc
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ebook-tools/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://ebook-tools.sourceforge.net/
COMMENT=	Tools for accessing and converting various ebook file formats

DEPENDS+=	convertlit-[0-9]*:../../textproc/convertlit
DEPENDS+=	zip-[0-9]*:../../archivers/zip

USE_CMAKE=	yes
USE_LANGUAGES=	c c++
USE_TOOLS+=	bash:run

REPLACE_BASH=	src/tools/lit2epub

.include "../../archivers/libzip/buildlink3.mk"
.include "../../devel/cmake/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
