# $NetBSD: Makefile,v 1.4 2007/10/09 19:19:15 martti Exp $
#

DISTNAME=	hunspell-1.1.12-2
PKGNAME=	${DISTNAME:C/-([0-9]+)$/.\1/}
PKGREVISION=	1
CATEGORIES=	textproc
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=hunspell/}

MAINTAINER=	adam.hoka@gmail.com
HOMEPAGE=	http://hunspell.sourceforge.net/
COMMENT=	Improved spellchecker

WRKSRC=			${WRKDIR}/${DISTNAME:C/-[0-9]+$//}
GNU_CONFIGURE=		yes
USE_LIBTOOL=		yes
USE_TOOLS+=		pkg-config
USE_PKGLOCALEDIR=	yes
USE_LANGUAGES=		c c++

CONFIGURE_ARGS+=	--with-ui

PKGCONFIG_OVERRIDE+=	hunspell.pc.in

SUBST_CLASSES+=		paths
SUBST_MESSAGE.paths=	Fixing default path to dictionaries.
SUBST_STAGE.paths=	pre-configure
SUBST_FILES.paths=	man/hunspell.1 man/hu/hunspell.1 src/tools/hunspell.cxx
SUBST_SED.paths+=	-e 's,/usr/share/hunspell,${PREFIX}/share/hunspell,g'
# Trailing slash important to not change hunspell.cxx
SUBST_SED.paths+=	-e 's,/usr/share/myspell/,${PREFIX}/share/hunspell/,g'

.include "options.mk"

.include "../../converters/libiconv/buildlink3.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
