# $NetBSD: Makefile,v 1.7 2014/01/27 18:41:14 wiz Exp $

DISTNAME=		luasec-0.4.1
PKGNAME=		${LUA_PKGPREFIX}-${DISTNAME:S/lua//}
CATEGORIES=		security
MASTER_SITES=		https://github.com/brunoos/luasec/archive/

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		https://github.com/brunoos/luasec/
COMMENT=		Lua binding for OpenSSL library
LICENSE=		mit

.include "../../mk/bsd.prefs.mk"

DEPENDS+=		${LUA_PKGPREFIX}-socket>=2.0:../../net/lua-socket

USE_TOOLS+=		gmake

WRKSRC=			${WRKDIR}/luasec-${DISTNAME}
INSTALLATION_DIRS+=	${LUA_CDIR} ${LUA_LDIR}

.if ${OPSYS} == "SunOS"
BUILD_TARGET=		solaris
.else
BUILD_TARGET=		bsd
.endif

INSTALL_ENV+=		LUA_CDIR=${LUA_CDIR}
INSTALL_ENV+=		LUA_LDIR=${LUA_LDIR}

.include "../../lang/lua/module.mk"
.include "../../security/openssl/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
