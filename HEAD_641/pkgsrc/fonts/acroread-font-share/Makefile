# $NetBSD: Makefile,v 1.10 2008/08/26 12:54:51 joerg Exp $
#

DISTNAME=	font-share
PKGREVISION=	2
CATEGORIES=	fonts
DISTFILES=	korfont${EXTRACT_SUFX}

MAINTAINER=	tech-pkg-ja@jp.NetBSD.org
COMMENT=	Asian Font Packs for Acrobat Reader 4.0 (common base)

WRKSRC=		${WRKDIR}/KORKIT
TAR_FILE=	${WRKSRC}/LANGCOM.TAR

PLIST_SUBST+=	MKDIR=${MKDIR:Q} CHOWN=${CHOWN:Q} CHMOD=${CHMOD:Q} \
		SHAREOWN=${SHAREOWN:Q} SHAREGRP=${SHAREGRP:Q} \
		PKGDIRMODE=${PKGDIRMODE:Q}

INSTALLATION_DIRS=	Acrobat4/Resource/CIDFont

.include "./Makefile.common"
