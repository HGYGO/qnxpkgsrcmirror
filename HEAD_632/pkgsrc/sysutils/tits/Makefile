# $NetBSD: Makefile,v 1.19 2007/02/22 19:27:12 wiz Exp $
#

DISTNAME=	tits-1.2.2
PKGREVISION=	1
CATEGORIES=	sysutils
MASTER_SITES=	http://www.mctavish.co.uk/tits/

MAINTAINER=	scw@NetBSD.org
COMMENT=	Server which provides telnet(1) access to one or more tty ports

BINDIR=		${PREFIX}/sbin
MANDIR=		${PREFIX}/man
MAKE_ENV+=	BINDIR=${BINDIR:Q} MANDIR=${MANDIR:Q}
MAKE_ENV+=	BINOWN=${BINOWN} BINGRP=${BINGRP}
MAKE_ENV+=	MANOWN=${MANOWN} MANGRP=${MANGRP}
RCD_SCRIPTS=	tits

MANCOMPRESSED_IF_MANZ=	yes

pre-install:
	${INSTALL_MAN_DIR} ${MANDIR}/cat8

post-patch:
	${MV} ${WRKSRC}/tits.8 ${WRKSRC}/tits.8.in
	${SED} -e 's|/usr/local/etc|${PKG_SYSCONFDIR}|g'	\
	   -e 's|/usr/local|${PREFIX}|g'			\
	   ${WRKSRC}/tits.8.in > ${WRKSRC}/tits.8

post-install:
	${INSTALL_DATA} ${WRKSRC}/tits.conf ${PREFIX}/share/examples/

.include "../../mk/bsd.pkg.mk"
