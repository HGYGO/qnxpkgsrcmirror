# $NetBSD: Makefile,v 1.5 2006/03/04 21:30:53 jlam Exp $
#

DISTNAME=		jday-1.3
CATEGORIES=		time
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=jday/}

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://jday.sourceforge.net/
COMMENT=		Julian date calculator

GNU_CONFIGURE=		yes
USE_LIBTOOL=		yes

do-test:
	@(cd ${WRKSRC} && ./RunTest)
	@(cd ${WRKSRC} && ./Testdbd)

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/jday
	${INSTALL_DATA} ${WRKSRC}/CalDate.inc ${PREFIX}/share/jday
	${INSTALL_DATA} ${WRKSRC}/CalDate.pm ${PREFIX}/share/jday
	${INSTALL_DATA} ${WRKSRC}/J2D.pl ${PREFIX}/share/jday
	${INSTALL_DATA} ${WRKSRC}/Jday.php ${PREFIX}/share/jday
	${INSTALL_DATA} ${WRKSRC}/Jday.pl ${PREFIX}/share/jday
	${INSTALL_DATA} ${WRKSRC}/dbd.awk ${PREFIX}/share/jday
	${INSTALL_DATA} ${WRKSRC}/jday.awk ${PREFIX}/share/jday

.include "../../mk/bsd.pkg.mk"
