# $NetBSD: Makefile,v 1.3 2006/03/04 21:29:01 jlam Exp $
#

DISTNAME=	forkbomb-1.4
CATEGORIES=	benchmarks
MASTER_SITES=	http://home.tiscali.cz:8080/~cz210552/distfiles/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://home.tiscali.cz:8080/~cz210552/forkbomb.html
COMMENT=	Classic Unix fork() bomber

INSTALLATION_DIRS+=	bin man/man8

do-build:
	${CC} ${CFLAGS} ${CPPFLAGS} ${WRKSRC}/forkbomb.c -o \
		${WRKSRC}/forkbomb

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/forkbomb ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/forkbomb.8 ${PREFIX}/${PKGMANDIR}/man8

.include "../../devel/libgetopt/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
