# $NetBSD: Makefile,v 1.16 2007/06/01 15:25:04 schmonz Exp $
#

DISTNAME=	qmhandle-1.2.3
PKGNAME=	${DISTNAME:S/h/H/}
CATEGORIES=	mail
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=qmhandle/}

MAINTAINER=	schmonz@NetBSD.org
HOMEPAGE=	http://qmhandle.sourceforge.net/
COMMENT=	Tool to view and manage the qmail message queue

WRKSRC=		${WRKDIR}
USE_TOOLS+=	perl:run
REPLACE_PERL=	qmHandle
NO_BUILD=	YES

SUBST_CLASSES+=		config
SUBST_STAGE.config=	do-configure
SUBST_FILES.config=	qmHandle
SUBST_SED.config=	-e 's|/var/qmail/queue/|${QMAIL_QUEUE_DIR}/|g'
SUBST_SED.config+=	-e 's|/etc/init.d/qmail|${RCD_SCRIPTS_DIR}/qmail|g'
.if exists(/usr/bin/pgrep)
SUBST_SED.config+=	-e 's|pidof|/usr/bin/pgrep|g'
.endif

INSTALLATION_DIRS=	bin
BUILD_DEFS+=		QMAIL_QUEUE_DIR

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/qmHandle ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/qmHandle
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/qmHandle

.include "../../mk/bsd.pkg.mk"
