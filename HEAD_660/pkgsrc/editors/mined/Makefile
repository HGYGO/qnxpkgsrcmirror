# $NetBSD: Makefile,v 1.22 2013/02/01 22:21:07 wiz Exp $
#

DISTNAME=	mined-2000.15
CATEGORIES=	editors
MASTER_SITES=	http://towo.net/mined/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://towo.net/mined/
COMMENT=	Html-aware editor

MAKE_FILE=	makefile
USE_TOOLS+=	gmake

post-install:
		${CHMOD} -x ${DESTDIR}${PREFIX}/share/mined/conf_user/xinitrc.mined

.include "../../mk/compiler.mk"
.if !empty(PKGSRC_COMPILER:Mclang)
CFLAGS+=	-Wno-invalid-source-encoding
.endif

MAKE_FLAGS+=	OPT=${CFLAGS:Q}

.include "../../devel/ncurses/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
