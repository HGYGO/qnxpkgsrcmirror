# $NetBSD: Makefile,v 1.14 2008/11/10 17:21:35 wiz Exp $

DISTNAME=		xjump_2.7.5.orig
PKGNAME=		xjump-2.7.5
PKGREVISION=		4
CATEGORIES=		games
MASTER_SITES=		ftp://ftp.freebsd.org/pub/FreeBSD/ports/distfiles/\
			http://www.gtlib.cc.gatech.edu/pub/debian/pool/main/x/xjump/

MAINTAINER=		pancake@phreaker.net
HOMEPAGE=		http://www.gtlib.cc.gatech.edu/pub/debian/pool/main/x/xjump/
COMMENT=		Jumping game for X

PKG_DESTDIR_SUPPORT=	user-destdir

WRKSRC=			${WRKDIR}/xjump-2.7.5.orig
BUILD_TARGET=		xjump
INSTALLATION_DIRS=	bin
MAKE_ENV+=		VARBASE=${VARBASE:Q}

SETGIDGAME=		yes
SPECIAL_PERMS=		bin/xjump ${SETGID_GAMES_PERMS}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/xjump ${DESTDIR}${PREFIX}/bin/xjump

.include "../../x11/libXaw/buildlink3.mk"
.include "../../x11/libXpm/buildlink3.mk"
.include "../../x11/libXt/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
