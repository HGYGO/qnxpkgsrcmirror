# $NetBSD: Makefile,v 1.17 2006/06/22 15:47:54 joerg Exp $
#

.include "../../games/nethack-lib/Makefile.common"

PKGNAME=		nethack-tty-${NETHACK_VERSION}
PKGREVISION=		1

COMMENT=		The tty/console based version of NetHack

DEPENDS+=		nethack-lib-${NETHACK_VERSION}nb1:../../games/nethack-lib

BUILD_TARGET=		nethack
INSTALL_TARGET=		binfiles
MAKE_ENV+=		GTYPE=-tty

DISTINFO_FILE?=		${.CURDIR}/../nethack-lib/distinfo
PATCHDIR=		${.CURDIR}/../nethack-lib/patches

.include "../../mk/bsd.pkg.mk"
