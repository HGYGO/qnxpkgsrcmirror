# $NetBSD: Makefile,v 1.12 2007/11/20 05:11:30 phil Exp $
#

DISTNAME=	yaz-2.1.56
PKGREVISION=	1
CATEGORIES=	net
MASTER_SITES=	http://ftp.indexdata.dk/pub/yaz/

MAINTAINER=	phil@NetBSD.org
HOMEPAGE=	http://indexdata.dk/yaz/
COMMENT=	C/C++ toolkit for the development of Z39.50v3/SRW clients and servers

USE_LIBTOOL=	YES
GNU_CONFIGURE=	YES

PTHREAD_OPTS+=	native optional

.include "../../textproc/libxml2/buildlink3.mk"
CONFIGURE_ARGS+=	--with-xml2=${BUILDLINK_PREFIX.libxml2}

.include "../../security/openssl/buildlink3.mk"
CONFIGURE_ARGS+=	--with-openssl=${BUILDLINK_PREFIX.openssl}

.include "../../converters/libiconv/buildlink3.mk"
CONFIGURE_ARGS+=	--with-iconv=${BUILDLINK_PREFIX.libiconv}

.include "../../mk/pthread.buildlink3.mk"
.if defined(PTHREAD_TYPE) && ${PTHREAD_TYPE} == "none"
PLIST_SUBST+=	YAZTHREAD="@comment "
.else
PLIST_SUBST+=	YAZTHREAD=""
.endif

.include "../../mk/bsd.pkg.mk"
