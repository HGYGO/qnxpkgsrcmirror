# $NetBSD: Makefile,v 1.15 2008/06/20 01:09:23 joerg Exp $
#
PKG_DESTDIR_SUPPORT=	user-destdir

.include "../../lang/sablevm-classpath/Makefile.common"

PKGNAME=	${DISTNAME:S/classpath/classpath-gui/}
PKGREVISION=	2
COMMENT+=	(GUI libraries)

DEPENDS+=	sablevm-classpath>=1.13nb1:../../lang/sablevm-classpath

USE_TOOLS+=	pkg-config

BUILD_DIRS=	native/jni/classpath
BUILD_DIRS+=	native/jni/gtk-peer
INSTALL_DIRS=	native/jni/gtk-peer

PRINT_PLIST_AWK+= \
	/^@dirrm java\/sablevm\/lib\/sablevm-classpath$$/ \
		{ print "@comment in sablevm-classpath: "$$0; next; }

BUILDLINK_DEPMETHOD.libXt?=	build

.include "../../devel/glib2/buildlink3.mk"
.include "../../graphics/libart/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../x11/libXt/buildlink3.mk"
.include "../../x11/libXtst/buildlink3.mk"
.include "../../mk/java-env.mk"
.include "../../mk/bsd.pkg.mk"
