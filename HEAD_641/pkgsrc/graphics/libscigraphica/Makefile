# $NetBSD: Makefile,v 1.9 2009/02/09 22:56:24 joerg Exp $
#

DISTNAME=	libscigraphica-2.1.1
PKGREVISION=	2
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=scigraphica/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://scigraphica.sourceforge.net/
COMMENT=	Scientific data visualization and analysis library

PKG_DESTDIR_SUPPORT=	user-destdir

USE_PKGLOCALEDIR=	yes
USE_LIBTOOL=		yes
USE_TOOLS+=		pkg-config gmake intltool
GNU_CONFIGURE=		yes

PKGCONFIG_OVERRIDE+=	libscigraphica-2.0.pc.in

pre-configure:
	ln -s ${PYTHONBIN} ${TOOLS_DIR}/bin/python

.include "../../lang/python/extension.mk"
.include "../../math/py-numarray/buildlink3.mk"
.include "../../graphics/libart/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../x11/gtk2+extra/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
