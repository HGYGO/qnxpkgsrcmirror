# $NetBSD: Makefile,v 1.13 2006/03/04 21:30:21 jlam Exp $
#

DISTNAME=	nsca-1.1.0
PKGREVISION=	3
CATEGORIES=	net
MASTER_SITES=	http://netsaint.sourceforge.net/download/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://netsaint.sourceforge.net/docs/0_0_6/addons.html\#nsca
COMMENT=	Submit passive NetSaint checks results to another server

DEPENDS+=	netsaint-base-[0-9]*:../../net/netsaint-base

GNU_CONFIGURE=	YES

EGDIR=		${PREFIX}/share/examples/nsca

INSTALLATION_DIRS=	sbin

do-install:
	${INSTALL_DATA_DIR} ${EGDIR}
.for prg in nsca send_nsca
	${INSTALL_PROGRAM} ${WRKSRC}/src/${prg} ${PREFIX}/sbin
	${INSTALL_DATA} ${WRKSRC}/${prg}.cfg ${EGDIR}
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nsca
.for doc in Changelog README SECURITY
	${INSTALL_DATA} ${WRKSRC}/${doc} ${PREFIX}/share/doc/nsca
.endfor

.include "../../mk/bsd.pkg.mk"
