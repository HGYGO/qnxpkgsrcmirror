# $NetBSD: Makefile,v 1.38 2008/06/12 02:14:43 joerg Exp $

DISTNAME=	psutils-p17
PKGNAME=	psutils-1.17
PKGREVISION=	2
CATEGORIES=	print
MASTER_SITES=	http://gd.tuwien.ac.at/publishing/tex/tex-utils/psutils/

MAINTAINER=	dillo@NetBSD.org
HOMEPAGE=	http://www.go.dlr.de/wt/dv/ig/pdinfo_dv/psutils.html
COMMENT=	Utilities for manipulating PostScript documents

PKG_DESTDIR_SUPPORT=	user-destdir

WRKSRC=		${WRKDIR}/psutils
USE_TOOLS+=	perl:run

.include "../../mk/bsd.prefs.mk"
BUILD_DEFS+=	PAPERSIZE

.if !defined(PAPERSIZE)
PKG_FAIL_REASON+=	"PAPERSIZE must be defined by the pkgsrc user."
.else
.  if ${PAPERSIZE} != "A4" && ${PAPERSIZE} != "Letter"
PKG_FAIL_REASON+=	"Invalid PAPERSIZE (${PAPERSIZE}). Choose one of A4 or Letter."
.  endif
.endif

MAKE_ENV+=	PERL5=${PERL5:Q}
MAKE_FLAGS+=	PAPER=`${ECHO} ${PAPERSIZE} | ${TR} '[A-Z]' '[a-z]'`
MAKE_FLAGS+=	MANDIR=${DESTDIR}${PREFIX}/${PKGMANDIR}/man1
MAKE_FILE=	Makefile.unix

EGDIR=		${PREFIX}/share/examples/psutils
CONF_FILES=	${EGDIR}/psutils.cfg ${PKG_SYSCONFDIR}/psutils.cfg

SUBST_CLASSES+=		psu
SUBST_STAGE.psu=	pre-configure
SUBST_MESSAGE.psu=	Adjusting the installation prefix.
SUBST_FILES.psu=	psutil.c
SUBST_SED.psu=		-e "s|@prefix@|${PREFIX}|g"

INSTALLATION_DIRS=	${EGDIR}
INSTALL_MAKE_FLAGS=	PREFIX=${DESTDIR}${PREFIX}

post-install:
	low=`${ECHO} ${PAPERSIZE} | ${TR} '[A-Z]' '[a-z]'`		\
	&& ${ECHO} "PAPERSIZE=$$low" > ${DESTDIR}${EGDIR}/psutils.cfg

.include "../../mk/bsd.pkg.mk"
