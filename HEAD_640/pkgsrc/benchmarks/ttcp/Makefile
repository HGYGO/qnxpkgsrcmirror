# $NetBSD: Makefile,v 1.15 2007/10/28 15:29:58 joerg Exp $

DISTNAME=	ttcp
PKGNAME=	${DISTNAME}-1.12
PKGREVISION=	2
CATEGORIES=	benchmarks net
MASTER_SITES=	http://www.ccci.com/tools/ttcp/
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	thorpej@NetBSD.org
HOMEPAGE=	http://www.ccci.com/tools/ttcp/
COMMENT=	TCP testing and performance measuring tool

PKG_INSTALLATION_TYPES=	overwrite pkgviews
PKG_DESTDIR_SUPPORT=	user-destdir

USE_BSD_MAKEFILE=	yes
WRKSRC=			${WRKDIR}

.include "../../mk/bsd.prefs.mk"

MANCOMPRESSED_IF_MANZ=	YES

#.if (${OPSYS} == Darwin)
#CFLAGS+=	"-Din_addr_t=\"unsigned long\""
#MAKE_FLAGS+=	CFLAGS=${CFLAGS:Q}
#.endif

INSTALLATION_DIRS=	bin ${PKGMANDIR}/cat1 ${PKGMANDIR}/man1

.if (${OPSYS} == SunOS)
do-build:
	cd ${WRKSRC} && \
	${CC} ttcp.c ${CFLAGS} ${LDFLAGS} -lsocket -lnsl -o ttcp && \
	nroff -man ttcp.1 >ttcp.cat1
.endif

.include "../../mk/bsd.pkg.mk"
