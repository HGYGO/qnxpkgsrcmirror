# $NetBSD: Makefile,v 1.23 2007/01/07 09:13:47 rillig Exp $

DISTNAME=	hint_unix_serial
PKGNAME=	hint.serial-98.06.12
CATEGORIES=	benchmarks
MASTER_SITES=	http://hint.byu.edu/pub/HINT/source/tar/
EXTRACT_SUFX=	.tar

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://hint.byu.edu/
COMMENT=	Scalable benchmark for testing CPU and memory performance

PKG_INSTALLATION_TYPES=	overwrite pkgviews

BUILD_TARGET=	DOUBLE INT

WRKSRC=		${WRKDIR}/unix

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1

post-extract:
	${CP} ${FILESDIR}/hint.1 ${WRKSRC}/hint.1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/DOUBLE ${PREFIX}/bin/hint-double
	${INSTALL_PROGRAM} ${WRKSRC}/INT ${PREFIX}/bin/hint-int
	${INSTALL_MAN} ${WRKSRC}/hint.1 ${PREFIX}/${PKGMANDIR}/man1

benchmark:
	cd ${WRKSRC} ; ${MKDIR} data ; ./DOUBLE | tee hint.out

results:
	@${MKDIR} /tmp/benches/`domainname`
	-@${CP} ${WRKSRC}/hint.out /tmp/benches/`domainname`/hint.`uname`-`uname -m`-`uname -r`.`hostname`

.include "../../mk/bsd.pkg.mk"
