# $NetBSD: Makefile,v 1.6 2007/09/18 20:30:00 adrianp Exp $
#

DISTNAME=		httping-1.2.5
CATEGORIES=		net
MASTER_SITES=		http://www.vanheusden.com/httping/
EXTRACT_SUFX=		.tgz

MAINTAINER=		adrianp@NetBSD.org
HOMEPAGE=		http://www.vanheusden.com/httping/
COMMENT=		Like 'ping' but for http-requests

.include "../../mk/bsd.prefs.mk"

LDFLAGS.SunOS=		-lnsl -lsocket

.if (${OPSYS} == "NetBSD" && !empty(OS_VERSION:M[123]*)) || ${OPSYS} == "Darwin"
.else
CFLAGS+=	-DHAVE_STRNDUP
.endif

do-install:
	${INSTALL_MAN} ${WRKSRC}/httping.1 ${PREFIX}/${PKGMANDIR}/man1
	${INSTALL_PROGRAM} ${WRKSRC}/httping ${PREFIX}/bin

.include "../../security/openssl/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
