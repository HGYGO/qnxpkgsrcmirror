# $NetBSD: Makefile,v 1.22 2009/02/16 14:15:28 joerg Exp $
#

DISTNAME=	whiteBOX-0.5
PKGREVISION=	6
CATEGORIES=	wm x11
MASTER_SITES=	http://whitebox.sourceforge.net/dist/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://whitebox.sourceforge.net/
COMMENT=	Multi-purpose configuration tool for Blackbox

PKG_DESTDIR_SUPPORT=	user-destdir

USE_TOOLS+=	gmake
GNU_CONFIGURE=	YES
USE_LIBTOOL=	YES

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1 share/whiteBOX/pixmaps share/whiteBOX/plugins

# this prevents us from build-depending on autoconf and automake
pre-install:
	${RM} -f ${WRKSRC}/mkinstalldirs
	${ECHO} "#!${SH}" > ${WRKSRC}/mkinstalldirs
	${ECHO} "${ECHO}" >> ${WRKSRC}/mkinstalldirs
	${CHMOD} 755  ${WRKSRC}/mkinstalldirs

.include "../../graphics/gdk-pixbuf/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
