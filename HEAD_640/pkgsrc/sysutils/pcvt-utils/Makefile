# $NetBSD: Makefile,v 1.11 2008/02/28 11:58:49 rillig Exp $
#

DISTNAME=	netbsd-pcvt-20000611
PKGNAME=	pcvt-utils-20000611
PKGREVISION=	1
CATEGORIES=	sysutils
MASTER_SITES=	${MASTER_SITE_LOCAL}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://cvsweb.NetBSD.org/bsdweb.cgi/src/sys/arch/i386/isa/pcvt/
COMMENT=	Useful leftovers from pcvt: playvt and two font editors

PKG_DESTDIR_SUPPORT=	user-destdir

ONLY_FOR_PLATFORM= 	NetBSD-*-*
USE_BSD_MAKEFILE=	yes
WRKSRC=			${WRKDIR}/pcvt/Util

AUTO_MKDIRS=			yes

do-install:
	${INSTALL_PROGRAM} \
		${WRKSRC}/demo/playvt \
		${WRKSRC}/fed/fed \
		${WRKSRC}/fontedit/fontedit \
		${DESTDIR}${PREFIX}/bin
	${INSTALL_DATA} \
		${WRKSRC}/demo/*.vt \
		${DESTDIR}${PREFIX}/share/playvt

.include "../../mk/bsd.pkg.mk"
