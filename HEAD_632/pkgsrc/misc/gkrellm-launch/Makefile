# $NetBSD: Makefile,v 1.12 2006/04/17 13:46:40 wiz Exp $
#

DISTNAME=	gkrellmlaunch-0.5
PKGNAME=	${DISTNAME:S/gkrellm/gkrellm-/}
PKGREVISION=	5
CATEGORIES=	misc
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gkrellmlaunch/}

MAINTAINER=	cube@NetBSD.org
HOMEPAGE=	http://gkrellmlaunch.sourceforge.net/
COMMENT=	GKrellM plugin to allow quick launch of applications

BUILD_TARGET=	gkrellmlaunch.so

USE_TOOLS+=		pkg-config
INSTALLATION_DIRS=	lib/gkrellm2/plugins

do-install:
	${INSTALL_DATA} ${WRKSRC}/gkrellmlaunch.so ${PREFIX}/lib/gkrellm2/plugins

.include "../../sysutils/gkrellm/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
