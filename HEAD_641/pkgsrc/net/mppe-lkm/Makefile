# $NetBSD: Makefile,v 1.4 2006/02/16 22:04:07 cube Exp $

DISTNAME=	kernel_ppp_mppe-0.0.4-src
PKGNAME=	mppe-lkm-0.0.4
PKGREVISION=	2
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=poptop/}
EXTRACT_SUFX=	.tgz

MAINTAINER=	cube@NetBSD.org
COMMENT=	NetBSD kernel module for MPPE compression with PPP

NO_CONFIGURE=	yes

ONLY_FOR_PLATFORM=	NetBSD-*-*
MAKE_ENV+=	KMODDIR=${PREFIX}/lkm
WRKSRC=		${WRKDIR}/mppe-lkm
KPM_SRC=	${WRKDIR}/${DISTNAME:C/-src$//}

INSTALLATION_DIRS=	lkm

post-extract:
	@${CP} -R ${FILESDIR} ${WRKSRC}
	@${CHMOD} -R u+w ${KPM_SRC}
	@${CP} -p ${KPM_SRC}/ppp-comp-local.h ${KPM_SRC}/ppp_mppe_compress.c \
		${WRKSRC}

.include "../../mk/bsd.pkg.mk"
