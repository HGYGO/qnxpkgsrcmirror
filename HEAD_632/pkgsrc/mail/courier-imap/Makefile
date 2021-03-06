# $NetBSD: Makefile,v 1.66 2007/10/15 15:37:20 jlam Exp $

DISTNAME=	courier-imap-4.2.1
CATEGORIES=	mail
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=courier/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	jlam@pkgsrc.org
COMMENT=	IMAP server for access to maildir-style mailboxes
HOMEPAGE=	http://www.courier-mta.org/imap/

DEPENDS+=	courier-maildir>=0.57.1:../../mail/courier-maildir
DEPENDS+=	couriertcpd>=0.57.1:../../net/couriertcpd

USE_TOOLS+=		env gmake openssl:run perl
USE_LANGUAGES=		c c++
USE_LIBTOOL=		yes

PKG_OPTIONS_VAR=	PKG_OPTIONS.courier-imap
PKG_SUPPORTED_OPTIONS=	fam

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mfam)
.  include "../../mk/fam.buildlink3.mk"
.endif

.include "../../mail/courier-mta/Makefile.common"

CONFIGURE_ARGS+=	--datadir=${DATADIR:Q}
CONFIGURE_ARGS+=	--libexecdir=${LIBEXECDIR:Q}

CONFIGURE_ARGS+=	--with-mailuser=${ROOT_USER:Q}
CONFIGURE_ARGS+=	--with-piddir=${COURIER_STATEDIR:Q}/tmp
CONFIGURE_ARGS+=	--program-transform-name='s/\.rc$$//'
CONFIGURE_ENV+=		OPENSSL=${TOOLS_OPENSSL:Q}

# The rfc1035 and tcpd bits are built and installed by net/couriertcpd.
# However, we still need to build in these directories because there
# are some convenience libraries built and used by other parts of the
# imap code.  We configure without IPv6 support because those necessary
# convenience libraries don't have any IPv6 code, and we want to avoid
# breakage due to IPv6 mis-detection.
#
CONFIGURE_ARGS+=	--without-ipv6

INSTALL_AM_MAKEFLAGS=	sysconfdir=${EGDIR:Q}
INSTALL_MAKE_FLAGS=	${MAKE_FLAGS} AM_MAKEFLAGS=${INSTALL_AM_MAKEFLAGS:Q}

REQD_DIRS+=		${DATADIR} ${DOCDIR} ${EGDIR} ${LIBEXECDIR}
MAKE_DIRS+=		${COURIER_STATEDIR}
MAKE_DIRS_PERMS+=	${COURIER_STATEDIR}/tmp				\
			${COURIER_USER} ${COURIER_GROUP} 0770

.for _file_ in		imapd.cnf imapd.dist imapd-ssl.dist		\
			pop3d.cnf pop3d.dist pop3d-ssl.dist
CONF_FILES_PERMS+=	${EGDIR}/${_file_}				\
			${PKG_SYSCONFDIR}/${_file_:S/.dist$//}		\
			${COURIER_FILE_PERMS}
.endfor
RCD_SCRIPTS=		courierimap courierimaps courierpop courierpops

SUBST_CLASSES+=		courier
SUBST_FILES.courier=	imap/imapd-ssl.dist.in imap/imapd.8.in		\
			imap/imapd.cnf.in imap/imapd.dist.in		\
			imap/mkimapdcert.8.in imap/mkimapdcert.html.in	\
			imap/mkimapdcert.in imapd-ssl.rc.in imapd.rc.in
SUBST_FILES.courier+=	imap/courierpop3d.8.in imap/mkpop3dcert.8.in	\
			imap/mkpop3dcert.html.in imap/mkpop3dcert.in	\
			imap/pop3d-ssl.dist.in imap/pop3d.cnf.in	\
			imap/pop3d.dist.in pop3d-ssl.rc.in pop3d.rc.in
SUBST_SED.courier=	-e "s|^IMAPDSTART=.*|IMAPDSTART=YES|g"		\
			-e "s|^IMAPDSSLSTART=.*|IMAPDSSLSTART=YES|g"	\
			-e "s|^POP3DSTART=.*|POP3DSTART=YES|g"		\
			-e "s|^POP3DSSLSTART=.*|POP3DSSLSTART=YES|g"	\
			-e "s|@datadir@/imapd.pem|@sysconfdir@/imapd.pem|g" \
			-e "s|@datadir@/imapd.rand|@sysconfdir@/imapd.rand|g" \
			-e "s|@datadir@/pop3d.pem|@sysconfdir@/pop3d.pem|g" \
			-e "s|@datadir@/pop3d.rand|@sysconfdir@/pop3d.rand|g" \
			-e "s|@libexecdir@/couriertcpd|@sbindir@/couriertcpd|g" \
			-e "s|@sbindir@/imaplogin|@libexecdir@/imaplogin|g" \
			-e "s|@sbindir@/pop3login|@libexecdir@/courierpop3login|g" \
			-e "s|@bindir@/pop3d|@libexecdir@/courierpop3d|g"
SUBST_STAGE.courier=	pre-configure

.include "../../security/courier-authlib/buildlink3.mk"

post-install:
	${INSTALL_DATA_DIR} ${EGDIR}
	${INSTALL_DATA_DIR} ${DOCDIR}/imap
	${INSTALL_DATA} ${WRKSRC}/imap/BUGS.html ${DOCDIR}/imap
	${INSTALL_DATA} ${WRKSRC}/imap/README.html ${DOCDIR}/imap
	${INSTALL_DATA} ${WRKSRC}/imap/README.proxy.html ${DOCDIR}/imap
	${INSTALL_DATA} ${WRKSRC}/imap/courierpop3d.html ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/imap/imapd.html ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/imap/mkimapdcert.html ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/imap/mkpop3dcert.html ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/imap/imapd.pam ${EGDIR}/imap.authpam
	${INSTALL_DATA} ${WRKSRC}/imap/pop3d.pam ${EGDIR}/pop3.authpam

.include "../../mk/bsd.pkg.mk"
