# $NetBSD: Makefile,v 1.3 2009/01/30 16:42:38 taca Exp $
#

DISTNAME=	typolight-${TL_VERSION}
PKGNAME=	typolight-example-${TL_VERSION}
CATEGORIES=	www
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=typolight/}

MAINTAINER=	taca@NetBSD.org
HOMEPAGE=	http://www.typolight.org/
COMMENT=	Sample site data for TYPOlight

DEPENDS+=	typolight>=${TL_VERSION}:../../www/typolight

DISTINFO_FILE=	${.CURDIR}/../../www/typolight/distinfo

USE_TOOLS=	pax
NO_BUILD=	yes
NO_CONFIGURE=	yes

PKG_DESTDIR_SUPPORT=	destdir

WWW_EG_FILES=	music_academy.css tl_files/music_academy
WWW_FILE=	templates/example_website.sql

.for f in ${WWW_EG_FILES} ${WWW_FILE}
EXTRACT_ELEMENTS+=	${DISTNAME}/${f}
.endfor

PKG_GROUPS_VARS+=	APACHE_GROUP
PKG_USERS_VARS+=	APACHE_USER

do-install:
	cd ${WRKSRC}; \
		pax -rw -pm ${WWW_EG_FILES} ${DESTDIR}${PREFIX}/${TL_EGDIR}
	cd ${WRKSRC}; ${INSTALL_DATA} ${WWW_FILE} \
		${DESTDIR}${PREFIX}/${TL_WEBDIR}/templates

.include "../../www/typolight/Makefile.common"
.include "../../lang/php/phpversion.mk"
.include "../../mk/bsd.pkg.mk"
