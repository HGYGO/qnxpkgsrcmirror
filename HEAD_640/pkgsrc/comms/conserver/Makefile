# $NetBSD: Makefile,v 1.20 2006/03/04 21:29:04 jlam Exp $
#

DISTNAME=	conserver-7.2.7
PKGREVISION=	3
CATEGORIES=	comms
MASTER_SITES=	ftp://ftp.conserver.com/conserver/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.conserver.com/
COMMENT=	Application that allows multiple users to watch serial consoles

PKG_INSTALLATION_TYPES=	overwrite pkgviews

GNU_CONFIGURE=	YES
CONFLICTS+=	conserver8-[0-9]*

CONFIGURE_ARGS+=	--sysconfdir=${PKG_SYSCONFDIR:Q}
CONFIGURE_ARGS+=	--with-master=${CONSERVER_DEFAULTHOST:Q}
CONFIGURE_ARGS+=	--with-port=${CONSERVER_DEFAULTPORT:Q}
CONFIGURE_ARGS+=	--with-regex
CONFIGURE_ARGS+=	--with-libwrap
CONFIGURE_ARGS+=	--with-logfile=${VARBASE}/log/conserver

.if ${MACHINE_ARCH} == alpha || ${MACHINE_ARCH} == sparc64 || \
	${MACHINE_ARCH} == x86_64
CONFIGURE_ARGS+=	--with-64bit
.endif

BUILD_DEFS+=	CONSERVER_DEFAULTPORT CONSERVER_DEFAULTHOST

RCD_SCRIPTS=	conserver

TEST_TARGET=	test

EGDIR=		${PREFIX}/share/examples/conserver
CONF_FILES=	${EGDIR}/conserver.cf.example ${PKG_SYSCONFDIR}/conserver.cf
CONF_FILES+=	${EGDIR}/conserver.passwd.example ${PKG_SYSCONFDIR}/conserver.passwd
OWN_DIRS=	${VARBASE}/consoles

SUBST_CLASSES+=		conf
SUBST_STAGE.conf=	post-patch
SUBST_FILES.conf=	conserver.cf/conserver.cf
SUBST_SED.conf=		-e s,/var/consoles,${VARBASE}/consoles,

pre-install:
	${INSTALL_DATA_DIR} ${EGDIR}

.include "../../security/tcp_wrappers/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
