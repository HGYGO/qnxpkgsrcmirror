# $NetBSD: Makefile,v 1.14 2007/02/22 19:26:40 wiz Exp $
#

DISTNAME=	columba-unix-1.0_M2-bin
PKGNAME=	columba-1.0M2
PKGREVISION=	1
CATEGORIES=	mail
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=columba/}
EXTRACT_SUFX=	.zip

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://columba.sourceforge.net/
COMMENT=	Graphical Email Client written in JAVA (TM)

NO_BUILD=		yes
USE_JAVA2=		yes
PKG_JVMS_ACCEPTED=	sun-jdk13 sun-jdk14 jdk14

SUBST_CLASSES+=		columba
SUBST_STAGE.columba=	pre-configure
SUBST_MESSAGE.columba=	Fixing path to columba\'s executable.
SUBST_FILES.columba=	run.sh
SUBST_SED.columba=	-e 's,columba.jar,${PREFIX}/share/${PKGBASE}/columba.jar,'

INSTALLATION_DIRS=	bin

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/${PKGBASE}/lib
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${PKGBASE}
	${INSTALL_DATA} ${WRKSRC}/lib/* ${PREFIX}/share/${PKGBASE}/lib
	${INSTALL_DATA} ${WRKSRC}/columba.jar ${PREFIX}/share/${PKGBASE}
.for f in AUTHORS LICENSE CHANGES README
	${INSTALL_DATA} ${WRKSRC}/${f} ${PREFIX}/share/doc/${PKGBASE}
.endfor
	${INSTALL_SCRIPT} ${WRKSRC}/run.sh ${PREFIX}/bin/columba

.include "../../mk/java-vm.mk"
.include "../../mk/bsd.pkg.mk"
