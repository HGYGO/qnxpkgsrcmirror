# $NetBSD: Makefile,v 1.26 2008/07/14 12:56:14 joerg Exp $
#

DISTNAME=	kazehakase-0.5.4
CATEGORIES=	www
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE_JP:=kazehakase/30219/}

MAINTAINER=	tonnerre@NetBSD.org
HOMEPAGE=	http://kazehakase.sourceforge.jp/
COMMENT=	Web browser with multiple layout engines support

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=		yes
USE_DIRS+=		xdg-1.2
USE_TOOLS+=		gmake intltool msgfmt pkg-config
USE_LANGUAGES=		c c++
USE_LIBTOOL=		yes
USE_PKGLOCALEDIR=	yes

.include "options.mk"

CONFIGURE_ARGS+=	--sysconfdir=${PKG_SYSCONFDIR}

PKG_SYSCONFSUBDIR=	kazehakase
EGDIR=		${PREFIX}/share/examples/kazehakase
EGFILES=	bookmarkbar.xml bookmarks.xml kz-ui-beginner.xml	\
		kz-ui-bookmarks.xml kz-ui-expert.xml kz-ui-medium.xml	\
		kzrc proxyrc smartbookmarks.xml
.for f in ${EGFILES}
CONF_FILES+=	${EGDIR}/${f} ${PKG_SYSCONFDIR}/${f}
.endfor

MAKE_DIRS+=	${PKG_SYSCONFDIR}/mozilla
CONF_FILES+=	${EGDIR}/mozilla/encodings.xml ${PKG_SYSCONFDIR}/mozilla/encodings.xml

.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
BUILDLINK_API_DEPENDS.gtk2+=	gtk2+>=2.12.0
.include "../../x11/gtk2/buildlink3.mk"
.include "../../www/seamonkey/gecko-depends.mk"
.include "../../mk/bsd.pkg.mk"
