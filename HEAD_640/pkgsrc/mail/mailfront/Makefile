# $NetBSD: Makefile,v 1.9 2008/03/17 11:41:46 obache Exp $
#

DISTNAME=		mailfront-0.98.1
PKGREVISION=		1
CATEGORIES=		mail
MASTER_SITES=		${HOMEPAGE}archive/

MAINTAINER=		schmonz@NetBSD.org
HOMEPAGE=		http://untroubled.org/mailfront/
COMMENT=		Mail server network protocol front-ends

DEPENDS+=		cvm-[0-9]*:../../security/cvm
DEPENDS+=		daemontools-[0-9]*:../../sysutils/daemontools
DEPENDS_QMAIL=		qmail>=1.03nb8:../../mail/qmail
DEPENDS+=		${DEPENDS_QMAIL}

DJB_RESTRICTED=		NO
DJB_MAKE_TARGETS=	NO

RCD_SCRIPTS=		smtpfront

.include "../../mk/bsd.prefs.mk"

# Detect the PKG_SYSCONFDIR of the installed qmail, so we can create
# config files there and refer to them from rc.d scripts.
#
.if !defined(PKG_SYSCONFDIR.mailfront)
PKG_SYSCONFDIR.mailfront!=						\
	${PKG_INFO} -Q PKG_SYSCONFDIR					\
		${DEPENDS_QMAIL:C/:.*$//:Q} 2>/dev/null ||		\
	${ECHO} "PKG_SYSCONFDIR.mailfront_not_set"
.  if empty(PKG_SYSCONFDIR.mailfront:M*not_set)
MAKEVARS+=	PKG_SYSCONFDIR.mailfront
.  endif
.endif

.include "../../devel/bglibs/buildlink3.mk"
.include "../../security/cvm/buildlink3.mk"
.include "../../mk/djbware.mk"
.include "../../mk/bsd.pkg.mk"
