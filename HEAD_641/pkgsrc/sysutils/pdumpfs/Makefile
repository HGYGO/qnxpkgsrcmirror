# $NetBSD: Makefile,v 1.9 2009/07/10 09:00:41 obache Exp $
#

DISTNAME=	pdumpfs-${VER}
PKGREVISION=	1
CATEGORIES=	sysutils
MASTER_SITES=	http://0xcc.net/pdumpfs/

MAINTAINER=	obache@NetBSD.org
HOMEPAGE=	http://0xcc.net/pdumpfs/
COMMENT=	Simple daily backup system similar to Plan9's dumpfs
LICENSE=	gnu-gpl-v2

PKG_DESTDIR_SUPPORT=	user-destdir

USE_TOOLS+=	pax

VER=		1.3
BUILD_TARGET=	pdumpfs

REPLACE_RUBY=	pdumpfs.in

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man8 ${PKGMANDIR}/ja_JP.EUC/man8 \
			share/doc/pdumpfs

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/pdumpfs ${DESTDIR}${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/man/man8/pdumpfs.8 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man8
	${INSTALL_MAN} ${WRKSRC}/man/ja/man8/pdumpfs.8 ${DESTDIR}${PREFIX}/${PKGMANDIR}/ja_JP.EUC/man8
	cd ${WRKSRC}/doc && \
		pax -rw -pp -pm . ${DESTDIR}${PREFIX}/share/doc/pdumpfs

.include "../../lang/ruby/modules.mk"
.include "../../mk/bsd.pkg.mk"
