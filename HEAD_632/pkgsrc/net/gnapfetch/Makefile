# $NetBSD: Makefile,v 1.9 2006/03/04 21:30:19 jlam Exp $

DISTNAME=	gnapfetch-0.3
CATEGORIES=	net
MASTER_SITES=	http://entropy.atlantic.net/gnapfetch/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://entropy.atlantic.net/gnapfetch/
COMMENT=	Update/maintain opennap servers for gnapster/TekNap

USE_TOOLS+=		perl:run
INSTALLATION_DIRS=	bin

do-build:
	${SED} -e "s,/usr/bin/perl,${PERL5},g" \
		< ${WRKSRC}/gnapfetch > ${WRKDIR}/gnapfetch

do-install:
	${INSTALL_SCRIPT} ${WRKDIR}/gnapfetch ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gnapfetch
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/gnapfetch

.include "../../mk/bsd.pkg.mk"
