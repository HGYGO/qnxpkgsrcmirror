# $NetBSD: Makefile,v 1.43 2008/06/12 02:14:57 joerg Exp $
#

DISTNAME=	XmHTML-1.1.7
PKGREVISION=	6
CATEGORIES=	x11
MASTER_SITES=	http://www.xs4all.nl/~ripley/XmHTML/dist/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.xs4all.nl/~ripley/XmHTML/
COMMENT=	Motif Widget capable of displaying HTML 3.2 conforming text

PKG_DESTDIR_SUPPORT=	user-destdir

USE_X11BASE=	YES
USE_TOOLS+=	gmake
USE_LIBTOOL=	YES

INSTALLATION_DIRS=	include/XmHTML lib

do-install:
	${LIBTOOL} ${LIBTOOL_FLAGS} ${INSTALL_LIB} \
		${WRKSRC}/lib/libXmHTML.la ${DESTDIR}${PREFIX}/lib
	${INSTALL_DATA} ${WRKSRC}/include/XmHTML/*.h ${DESTDIR}${PREFIX}/include/XmHTML

.include "../../graphics/jpeg/buildlink3.mk"
.include "../../graphics/png/buildlink3.mk"
.include "../../x11/libXpm/buildlink3.mk"
.include "../../mk/motif.buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
