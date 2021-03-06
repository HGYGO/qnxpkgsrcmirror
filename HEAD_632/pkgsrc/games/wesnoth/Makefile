# $NetBSD: Makefile,v 1.42 2007/11/29 12:42:48 wiz Exp $

DISTNAME=	wesnoth-1.2.8
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=wesnoth/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	wiz@NetBSD.org
HOMEPAGE=	http://www.wesnoth.org/
COMMENT=	Fantasy turn-based strategy game

USE_TOOLS+=		pkg-config
USE_LANGUAGES=		c c++
GNU_CONFIGURE=		yes

UNLIMIT_RESOURCES+=	datasize

REPLACE_PERL+=		utils/wmlxgettext
REPLACE_PERL+=	data/tools/unit_tree/units.pl
REPLACE_PERL+=	data/tools/unit_tree/TeamColorizer.pl
USE_TOOLS+=		perl:run msgfmt

SUBST_CLASSES+=		python
SUBST_STAGE.python=	post-build
SUBST_FILES.python=	data/ais/sample.py
SUBST_MESSAGE.python=	Fixing path to python.
# XXX: Best we can do without pulling in a python dependency.
SUBST_SED.python+=	-e 's,WPY,${PREFIX}/bin/python2.4,'

.include "../../mk/bsd.prefs.mk"

# unit_types.cpp causes gcc to segfault at least on NetBSD 3.
# If you see this on other platforms, add them to the list.
# XXX: should we check for gcc versions?  which ones?
.if !empty(MACHINE_PLATFORM:MNetBSD-3.[0-9]*)
MAKE_ENV+=		ICE_NO_OPT=-O
.endif

BUILDLINK_API_DEPENDS.SDL+=		SDL>=1.2.7
BUILDLINK_API_DEPENDS.SDL_mixer+=	SDL_mixer>=1.2.5nb3

.include "../../audio/SDL_mixer/buildlink3.mk"
.include "../../converters/fribidi/buildlink3.mk"
.include "../../devel/SDL/buildlink3.mk"
# configure script in 0.9.0 requests explicitly to
# use included SDL_ttf library
#.include "../../devel/SDL_ttf/buildlink3.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../graphics/SDL_image/buildlink3.mk"
.include "../../graphics/freetype2/buildlink3.mk"
.include "../../graphics/png/buildlink3.mk"
.include "../../net/SDL_net/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
