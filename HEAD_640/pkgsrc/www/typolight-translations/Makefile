# $NetBSD: Makefile,v 1.19 2009/01/30 16:44:30 taca Exp $
#

DISTNAME=	typolight-translations-${VERS}
CATEGORIES=	www
MASTER_SITES=	http://www.typolight.org/download.html?file=tl_files/languages/ja/
DISTFILES=	${TL_DISTFILES}
EXTRACT_DIR=	${WRKSRC}

MAINTAINER=	taca@NetBSD.org
HOMEPAGE=	http://www.typolight.org/download-translations.html
COMMENT=	Language files for TYPOlight CMS

DEPENDS+=	typolight>=2.6.0:../../www/typolight

VERS=		20090128
USE_TOOLS=	pax
NO_BUILD=	yes
NO_CONFIGURE=	yes

PKG_DESTDIR_SUPPORT=	user-destdir

.include "options.mk"

pre-install:
	cd ${WRKSRC}; \
		${FIND} . -type f -name '*.orig' -print | ${XARGS} -- ${RM}

do-install:
	cd ${WRKSRC}; pax -rw . ${DESTDIR}${PREFIX}/${TL_WEBDIR}

.include "../../www/typolight/Makefile.common"
.include "../../lang/php/phpversion.mk"
.include "../../mk/bsd.pkg.mk"
