# $NetBSD: Makefile,v 1.7 2009/02/16 19:03:18 joerg Exp $
#

DISTNAME=		qlogtools-3.1
CATEGORIES=		sysutils
MASTER_SITES=		${HOMEPAGE}

MAINTAINER=		zuntum@NetBSD.org
HOMEPAGE=		http://untroubled.org/qlogtools/
COMMENT=		Tools useful in analyzing logs from qmail and other pkgs

PKG_DESTDIR_SUPPORT=	user-destdir

DJB_RESTRICTED=		NO
DJB_MAKE_TARGETS=	NO

SUBST_FILES.djbware+=	qfilelog.c

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1

post-configure:
	${ECHO} ${DESTDIR}${DJB_CONFIG_PREFIX}/bin > ${WRKSRC}/conf-bin
	${ECHO} ${DESTDIR}${DJB_CONFIG_PREFIX}/${PKGMANDIR} > ${WRKSRC}/conf-man

do-install:
	${_PKG_SILENT}${_PKG_DEBUG}cd ${WRKSRC};			\
	./installer;							\
	./instcheck

.include "../../mk/djbware.mk"
.include "../../mk/bsd.pkg.mk"
