# $NetBSD: Makefile,v 1.20 2008/06/20 01:09:10 joerg Exp $
#

DISTNAME=		nss_ldap-260
CATEGORIES=		databases
MASTER_SITES=		http://www.padl.com/download/

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://www.padl.com/OSS/nss_ldap.html
COMMENT=		LDAP client for nsswitch

PKG_DESTDIR_SUPPORT=	user-destdir

# needs nsswitch
ONLY_FOR_PLATFORM=	NetBSD-[3-9]*-*

GNU_CONFIGURE=		yes
USE_TOOLS+=		gmake

CONFIGURE_ARGS+= --with-ldap-conf-file=${PKG_SYSCONFDIR}/nss_ldap.conf
CONFIGURE_ARGS+= --with-ldap-secret-file=${PKG_SYSCONFDIR}/nss_ldap.secret
CONFIGURE_ARGS+= --sysconfdir=${PKG_SYSCONFDIR:Q}
CONFIGURE_ARGS+= --enable-schema-mapping
MAKE_FLAGS+=		INST_UID=${BINOWN} INST_GID=${BINGRP}

EGDIR=			${PREFIX}/share/examples/${PKGBASE}
INSTALL_MAKE_FLAGS=	${MAKE_FLAGS} sysconfdir=${EGDIR}

CONF_FILES=	${EGDIR}/nss_ldap.conf ${PKG_SYSCONFDIR}/nss_ldap.conf

pre-build:
	${CP} ${FILESDIR}/netbsd.c  ${FILESDIR}/netbsd.h ${WRKSRC}
	${LN} -fs /usr/include/nsswitch.h ${BUILDLINK_DIR}/include/nss.h

.include "../../databases/openldap-client/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
