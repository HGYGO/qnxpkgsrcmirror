# $NetBSD: Makefile,v 1.12 2008/03/04 18:12:59 jlam Exp $
#

DISTNAME=	grape4r1
PKGNAME=	gp-grape-4.1
PKGREVISION=	2
SVR4_PKGNAME=	gpgra
CATEGORIES=	math
MASTER_SITES=	http://www.maths.qmul.ac.uk/~leonard/grape4r1/
EXTRACT_SUFX=	.zoo

MAINTAINER=	cjep@NetBSD.org
HOMEPAGE=	http://www.gap-system.org/Share/grape.html
COMMENT=	GRAPE (GRape Algorithms using PErmutation groups)

PKG_DESTDIR_SUPPORT=	user-destdir

BUILD_TARGET=	bsd-gcc

WRKSRC=		${WRKDIR}/${GAP_PKG_NAME}
GAP_PKG_NAME=	grape

do-configure:
	cd ${WRKSRC} && ${SH} configure ${GAP_DIRECTORY}

do-install:
	${INSTALL_PROGRAM_DIR} ${DESTDIR}${GAP_PKG_DIRECTORY}
	@for I in COPYING bin doc grh htm init.g lib nauty20/read.me 	\
					prs; do				\
		${CP} -R ${WRKSRC}/$$I ${DESTDIR}${GAP_PKG_DIRECTORY};	\
	done

.include "../../math/gap/gap.package.mk"
.include "../../mk/bsd.pkg.mk"
