# $NetBSD: Makefile,v 1.18 2008/07/14 12:55:58 joerg Exp $
#

DISTNAME=	JESS-2.9.1
PKGNAME=	xmms-jess-2.9.1
PKGREVISION=	8
CATEGORIES=	xmms audio
MASTER_SITES=	http://arquier.free.fr/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://arquier.free.fr/
COMMENT=	XMMS plugin with Blur, image distortion, and others

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LIBTOOL=	YES
GNU_CONFIGURE=	YES

.include "../../audio/xmms/buildlink3.mk"
.include "../../devel/SDL/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
