# $NetBSD: Makefile,v 1.17 2009/01/23 21:14:17 jschauma Exp $
#

DISTNAME=	bbappconf-0.0.2
PKGREVISION=	1
CATEGORIES=	misc x11 wm
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=bbtools/}

MAINTAINER=	pkgsrc-users@@NetBSD.org
HOMEPAGE=	http://bbtools.sourceforge.net/download.php?file=1
COMMENT=	Configure the behaviour of an application under Blackbox

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LANGUAGES=		c c++
USE_X11BASE=		YES
GNU_CONFIGURE=		YES

INSTALLATION_DIRS=	${PKGMANDIR}/man1

post-patch:
	${SED} -e 's,@PREFIX@,${PREFIX},' ${WRKSRC}/data/bbappconf.1.tmp > \
		${WRKSRC}/data/bbappconf.1
	${SED} -e 's,@PREFIX@,${PREFIX},' ${WRKSRC}/data/README.bbappconf > \
		${WRKSRC}/data/README.bbappconf.tmp
	${MV} ${WRKSRC}/data/README.bbappconf.tmp ${WRKSRC}/data/README.bbappconf

post-install:
	${INSTALL_MAN} ${WRKSRC}/data/bbappconf.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1

BUILDLINK_DEPMETHOD.libXt?=	build

.include "../../x11/libSM/buildlink3.mk"
.include "../../x11/libX11/buildlink3.mk"
.include "../../x11/libXt/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
