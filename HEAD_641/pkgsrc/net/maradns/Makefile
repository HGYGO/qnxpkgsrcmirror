# $NetBSD: Makefile,v 1.20 2008/03/19 22:55:21 tonnerre Exp $

DISTNAME=	maradns-1.2.12.06
PKGREVISION=	1
CATEGORIES=	net
MASTER_SITES=	http://www.maradns.org/download/1.2/${DISTNAME:S/maradns-//}/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.maradns.org/
COMMENT=	Secure DNS server for *NIX systems

PKG_DESTDIR_SUPPORT=	user-destdir

HAS_CONFIGURE=		yes
PTHREAD_OPTS+=		require
PTHREAD_AUTO_VARS=	yes
MAKE_ENV+=		LANGUAGE="en" PKGMANDIR=${PKGMANDIR:Q}

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1 ${PKGMANDIR}/man5 \
			${PKGMANDIR}/man8 sbin share/examples

.include "../../mk/pthread.buildlink3.mk"
LDFLAGS+=	${PTHREAD_LIBS}

post-patch:
	@${SED} -e s,@@PKGSYSCONFDIR@@,${PKG_SYSCONFDIR},			\
	    ${WRKSRC}/parse/ParseMaraRc.c > ${WRKSRC}/parse/ParseMaraRc.sed
	@${MV} ${WRKSRC}/parse/ParseMaraRc.sed ${WRKSRC}/parse/ParseMaraRc.c

post-install:
	cd ${DESTDIR}${PREFIX}/share/doc/maradns && ${MV} examples ../../examples/maradns

.include "../../mk/bsd.pkg.mk"
