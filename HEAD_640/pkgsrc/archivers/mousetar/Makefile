# $NetBSD: Makefile,v 1.17 2008/03/02 03:48:36 jlam Exp $
#

DISTNAME=	mousetar-20021217
CATEGORIES=	sysutils
MASTER_SITES=	ftp://sparkle.rodents.montreal.qc.ca/pub/mouse/ftp.netbsd.org/tar/
DISTFILES=	tar.c tar.man

MAINTAINER=	pkgsrc-users@NetBSD.org
#HOMEPAGE=	none
COMMENT=	der Mouse's version of tar program

PKG_INSTALLATION_TYPES=	overwrite pkgviews
PKG_DESTDIR_SUPPORT=	user-destdir

NOT_FOR_PLATFORM+=	Interix-*-* # no sys/mtio.h tape support

WRKSRC=		${WRKDIR}

.include "../../mk/bsd.prefs.mk"

.if ${MACHINE_PLATFORM:MNetBSD-[2-9].*-*} != ""
CPPFLAGS+=	-DTAR_INODE_INTERNAL
.endif

.if ${OPSYS} == "Linux"
CPPFLAGS+=	-DLINUX_NAMLEN
.endif

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1

do-extract:
	for f in ${DISTFILES}; do					\
		${CP} ${DISTDIR}/$$f ${WRKDIR};				\
	done

do-build:
	cd ${WRKSRC}; ${CC} ${CPPFLAGS} ${CFLAGS} tar.c -o mousetar

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mousetar ${DESTDIR}${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/tar.man \
		${DESTDIR}${PREFIX}/${PKGMANDIR}/man1/mousetar.1

.include "../../mk/bsd.pkg.mk"
