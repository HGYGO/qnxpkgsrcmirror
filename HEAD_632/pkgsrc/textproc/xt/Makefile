# $NetBSD: Makefile,v 1.19 2006/09/19 21:13:12 joerg Exp $
#

DISTNAME=	xt
PKGNAME=	XT-19991105
PKGREVISION=	1
CATEGORIES=	textproc www
MASTER_SITES=	ftp://ftp.jclark.com/pub/xml/
EXTRACT_SUFX=	.zip

MAINTAINER=	jwise@NetBSD.org
HOMEPAGE=	http://www.jclark.com/xml/
COMMENT=	James Clark's Java implementation of XSLT

DEPENDS+=	XP-[0-9]*:../../textproc/xp

EXTRACT_ONLY=	# empty
USE_JAVA=	run
USE_TOOLS+=	unzip pax
NO_CONFIGURE=	yes
NO_BUILD=	yes

post-extract:
	cd ${WRKDIR} && unzip -x ${DISTDIR}/${DISTNAME}${EXTRACT_SUFX}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/java
	${INSTALL_DATA} ${WRKDIR}/xt.jar ${PREFIX}/lib/java
	${INSTALL_DATA} -c ${WRKDIR}/sax.jar ${PREFIX}/lib/java
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/java/xt
	${INSTALL_DATA} -c ${WRKDIR}/copying.txt ${PREFIX}/share/doc/java/xt
	${INSTALL_DATA} -c ${WRKDIR}/xt.htm ${PREFIX}/share/doc/java/xt
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/java/xt
	cd ${WRKDIR}/demo && pax -rw -pp . ${PREFIX}/share/examples/java/xt

.include "../../mk/java-vm.mk"
.include "../../mk/bsd.pkg.mk"
