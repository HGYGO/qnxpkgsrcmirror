# $NetBSD: Makefile,v 1.51 2008/10/09 08:23:25 wiz Exp $
#

DISTNAME=		intltool-0.40.5
CATEGORIES=		textproc devel gnome
MASTER_SITES=		${MASTER_SITE_GNOME:=sources/intltool/0.40/}
EXTRACT_SUFX=		.tar.bz2

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://www.gnome.org/
COMMENT=		Toolbox for internationalisation

PKG_INSTALLATION_TYPES=	overwrite pkgviews
PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=		p5-XML-Parser>=2.34nb4:../../textproc/p5-XML-Parser

CONFLICTS=		xml-i18n-tools-[0-9]*

USE_TOOLS+=		gmake perl:run
GNU_CONFIGURE=		YES
CHECK_INTERPRETER_SKIP=	share/intltool/*.in
TEST_TARGET=		check

.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../converters/libiconv/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
