# $NetBSD: Makefile,v 1.50 2007/02/22 19:30:05 wiz Exp $
#

DISTNAME=		pan-0.14.2
PKGREVISION=		10
CATEGORIES=		news
MASTER_SITES=		http://pan.rebelbase.com/download/releases/${DISTNAME:C/pan-//}/SOURCE/
EXTRACT_SUFX=		.tar.bz2

MAINTAINER=		rh@NetBSD.org
HOMEPAGE=		http://pan.rebelbase.com/
COMMENT=		Newsreader for GTK2

USE_TOOLS+=		msgfmt perl pkg-config
USE_DIRS+=		gnome2-1.5
USE_LANGUAGES=		c c++
USE_PKGLOCALEDIR=	YES
GNU_CONFIGURE=		YES

.include "../../mk/bsd.prefs.mk"
.if (${OPSYS} != "Darwin" && ${OPSYS} != "SunOS" && ${OPSYS} != "Linux")
LIBS+=			-lcompat
.endif

.include "../../converters/libiconv/buildlink3.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../net/gnet/buildlink3.mk"
.include "../../textproc/gtkspell/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
