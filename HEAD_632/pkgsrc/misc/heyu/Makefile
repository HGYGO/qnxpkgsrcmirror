# $NetBSD: Makefile,v 1.12 2007/01/08 04:12:35 rillig Exp $
#

DISTNAME=	heyu-1.35
PKGREVISION=	1
CATEGORIES=	misc
MASTER_SITES=	http://heyu.tanj.com/
DISTFILES=	x10_heyu.tgz

MAINTAINER=	damon@brodiefamily.org
HOMEPAGE=	http://heyu.tanj.com/
COMMENT=	Home Automation Software for the X10 CM11A

DIST_SUBDIR=	${PKGNAME_NOREV}
WRKSRC=		${WRKDIR}/heyu.dir

CONFIGURE_SCRIPT=	./Configure
MAKE_ENV+=	DEFAULT_SERIAL_DEVICE=${DEFAULT_SERIAL_DEVICE:Q}
MAKE_FLAGS+=	MAN=${PREFIX}/${PKGMANDIR}/man1
MAKE_FLAGS+=	MAN5=${PREFIX}/${PKGMANDIR}/man5

REPLACE_SH+=	makesched
USE_TOOLS+=	sh:run

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/heyu

.include "../../mk/bsd.pkg.mk"
