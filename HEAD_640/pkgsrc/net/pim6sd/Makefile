# $NetBSD: Makefile,v 1.18 2007/10/11 19:48:11 is Exp $

DISTNAME=	pim6sd-20031021a
PKGREVISION=	1
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.kame.net/pub/kame/misc/

MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	IPv6 PIM sparse mode daemon

WRKSRC=		${WRKDIR}/${DISTNAME}/pim6sd/
USE_TOOLS+=	lex yacc

INSTALLATION_DIRS=	sbin ${PKGMANDIR}/cat5 ${PKGMANDIR}/cat8 \
			${PKGMANDIR}/man1 ${PKGMANDIR}/man5 ${PKGMANDIR}/man8

CONFLICTS=	mcast-tools-*

post-install:
	${INSTALL_MAN} ${WRKSRC}/pim6stat.1 ${PREFIX}/${PKGMANDIR}/man1

PKG_OPTIONS_VAR=		PKG_OPTIONS.pim6sd
PKG_OPTIONS_REQUIRED_GROUPS=	inet6 # require inet6 capability
PKG_OPTIONS_GROUP.inet6=	inet6

.include "../../mk/bsd.options.mk"
.include "../../mk/bsd.pkg.mk"
