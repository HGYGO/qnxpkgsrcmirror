# $NetBSD: Makefile,v 1.2 2008/05/26 02:13:16 joerg Exp $
#

# TODO: gnupg support, ssl support, others

DISTNAME=	tkabber-0.10.0
CATEGORIES=	chat
MASTER_SITES=	http://files.jabber.ru/tkabber/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://tkabber.jabber.ru/en/
COMMENT=	Free and Open Source TCL/TK jabber client

DEPENDS+=	tcllib-[0-9]*:../../devel/tcllib
DEPENDS+=	bwidget>=1.8.0:../../x11/bwidget

NO_BUILD=	yes
USE_TOOLS+=	pax wish:run

EGDIR=		${PREFIX}/share/examples/tkabber
DATADIR=	${PREFIX}/share/tkabber
DOCDIR=		${PREFIX}/share/doc/tkabber

INSTALLATION_DIRS+=	${EGDIR} ${DATADIR} ${DOCDIR}

# XXX this is also in the tkabber's Makefile
SUBDIRS=	emoticons \
		ifacetk           \
		jabberlib-tclxml  \
		mclistbox         \
		msgs              \
		pixmaps           \
		plugins           \
		sounds            \
		trans

EXTRA_FILES=	AUTHORS README COPYING INSTALL ChangeLog

do-install:
	${INSTALL_DATA} ${WRKSRC}/*.tcl ${DATADIR} #${WRKSRC}/*.xrdb ${DATADIR}
	cd ${WRKSRC} && ${INSTALL_DATA} ${EXTRA_FILES} ${DOCDIR}
	cd ${WRKSRC}/examples && pax -rw -pm . ${EGDIR}
.for i in ${SUBDIRS}
	cd ${WRKSRC} && pax -rw -pm ${i} ${DATADIR}
.endfor
	# TODO This must be a CLASS
	${SED} -e "s,@WISH@,${WISH}," \
		-e "s,@DATADIR@,${DATADIR}," ${FILESDIR}/tkabber.sh \
		> ${WRKSRC}/tkabber
	${INSTALL_SCRIPT} ${WRKSRC}/tkabber ${PREFIX}/bin

.include "../../mk/bsd.pkg.mk"
