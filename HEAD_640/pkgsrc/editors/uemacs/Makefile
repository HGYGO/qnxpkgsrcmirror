# $NetBSD: Makefile,v 1.10 2008/05/25 14:45:17 tron Exp $

DISTNAME=	ue400dev
PKGNAME=	uemacs-4.0
PKGREVISION=	1
CATEGORIES=	editors
MASTER_SITES=	ftp://aquest.com/pub/uemacs400/disk2/
EXTRACT_SUFX=	.zip

MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	"emacs" key sequences compatible full screen editor

WRKSRC=		${WRKDIR}

post-extract:
	${CP} -r ${WRKSRC}/freebsd ${WRKSRC}/netbsd

post-patch:
	for FILE in ${WRKSRC}/src/*.c ${WRKSRC}/h/*.h; do \
	  ${MV} $${FILE} $${FILE}.old; \
	  ${SED} -e "s|%%PREFIX%%|${PREFIX}|g" <$${FILE}.old >$${FILE}; \
	done

.include "../../mk/bsd.pkg.mk"
