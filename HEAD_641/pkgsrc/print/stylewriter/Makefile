# $NetBSD: Makefile,v 1.21 2008/06/16 13:22:49 joerg Exp $
#

DISTNAME=	stylewriter
PKGNAME=	stylewriter-0.9.9
PKGREVISION=	3
CATEGORIES=	print
MASTER_SITES=	ftp://ftp.NetBSD.org/pub/NetBSD/packages/distfiles/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://homepage.mac.com/monroe/styl/
COMMENT=	Apple StyleWriter driver for un*x

DEPENDS+=	enscript>=1.6.3nb1:../../print/enscript

USE_TOOLS+=	gs:run
NO_CONFIGURE=	yes

INSTALLATION_DIRS=	sbin

PLIST_SRC=	${WRKDIR}/PLIST
FILTER_DIR=	libexec/stylewriter
FILTERS=	direct_stylpbm direct_stylps \
		stylascii stylascii.a4 \
		stylps stylps-color stylps-color.a4 stylps.a4
FILTER_SED=	-e "s,/usr/local/gnu/bin/gs,${LOCALBASE}/bin/gs,g" \
		-e "s,/usr/local,${PREFIX},g"
PRINTCAP_SED=	-e "s,/var/spool/stylps,/var/spool/lpd/stylps,g" \
		-e "s,/usr/local/sbin,${PREFIX}/libexec/stylewriter,g"

post-extract:
	${CP} ${FILESDIR}/Makefile ${WRKSRC}

post-install:
	${CP} ${PKGDIR}/PLIST ${PLIST_SRC}
	${INSTALL_DATA_DIR} ${PREFIX}/${FILTER_DIR}
	(cd ${WRKSRC}/scripts; \
	 for FILTER in ${FILTERS}; do \
		${SED} ${FILTER_SED} \
			< $${FILTER} > ${WRKDIR}/$${FILTER}; \
		${INSTALL_SCRIPT} ${WRKDIR}/$${FILTER} \
			${PREFIX}/${FILTER_DIR}/$${FILTER}; \
		${RM} ${WRKDIR}/$${FILTER}; \
	 done)

	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/stylewriter
	for FILE in README README.protocol README.troubleshooting; do \
		${INSTALL_DATA} ${WRKSRC}/$${FILE} \
			${PREFIX}/share/doc/stylewriter; \
	done

	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/stylewriter
	(cd ${WRKSRC}; \
	 for PRINTCAP in printcap printcap.a4; do \
		${SED} ${PRINTCAP_SED} \
			< $${PRINTCAP} > ${WRKDIR}/$${PRINTCAP}; \
		${INSTALL_DATA} ${WRKDIR}/$${PRINTCAP} \
			${PREFIX}/share/examples/stylewriter; \
		${RM} ${WRKDIR}/$${PRINTCAP}; \
	 done)
	${INSTALL_DATA} ${WRKSRC}/styl.ppd ${PREFIX}/share/examples/stylewriter
	${INSTALL_DATA_DIR} /var/spool/lpd/stylps

.include "../../mk/bsd.pkg.mk"
