# $NetBSD: Makefile,v 1.12 2007/02/22 19:27:07 wiz Exp $
#

DISTNAME=	mirrordir-0.10.49
PKGREVISION=	1
CATEGORIES=	security net
MASTER_SITES=	${MASTER_SITE_LOCAL}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	# http://mirrordir.sourceforge.net/
COMMENT=	Directory mirroring tool

CONFLICTS=	qmail>=1.03nb7 netqmail>=1.05

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes

EGDIR=		${PREFIX}/share/examples/mirrordir

CONF_FILES=	${EGDIR}/secure-mcservusers ${PKG_SYSCONFDIR}/secure-mcservusers

.include "../../mk/bsd.pkg.mk"
