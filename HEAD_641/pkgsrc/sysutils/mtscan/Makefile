# $NetBSD: Makefile,v 1.11 2009/04/09 00:48:16 joerg Exp $

DISTNAME=	mtscan-20050129
PKGREVISION=	1
CATEGORIES=	sysutils
MASTER_SITES=	# empty
DISTFILES=	# empty

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://mail-index.NetBSD.org/port-i386/2005/01/29/0011.html
COMMENT=	Magtape scanner - reports record and file-mark structure

NOT_FOR_PLATFORM=	Interix-*-* # no local tape ioctls

PKG_DESTDIR_SUPPORT=	user-destdir

CPPFLAGS+=	-DMTIO

INSTALLATION_DIRS=	bin

do-extract:
	${CP} -R ${FILESDIR} ${WRKSRC}

do-build:
	cd ${WRKSRC} && ${CC} ${CFLAGS} ${CPPFLAGS} -o mtscan mtscan.c	\
		${LDFLAGS} ${BUILDLINK_LDADD.termcap}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mtscan ${DESTDIR}${PREFIX}/bin

.include "../../mk/termcap.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
