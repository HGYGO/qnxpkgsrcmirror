# $NetBSD: Makefile,v 1.32 2007/08/22 17:28:09 jlam Exp $
#

DISTNAME=		pvs-${VERSION}
PKGNAME=		${EMACS_PKGNAME_PREFIX}${DISTNAME}
PKGREVISION=		1
CATEGORIES=		devel lang
MASTER_SITES=		ftp://pvs.csl.sri.com/pub/pvs/pvs${VERSION}/ \
			ftp://ftp.cs.york.ac.uk/pub/pvs/pvs${VERSION}/ \
			ftp://ftp.informatik.uni-ulm.de/pub/KI/pvs/pvs${VERSION}/
EXTRACT_SUFX=		.tgz
DISTFILES=		${DISTNAME}-${MAINFILEEXT}${EXTRACT_SUFX} \
			pvs-${VERSION}-system${EXTRACT_SUFX} \
			pvs-${VERSION}-libraries${EXTRACT_SUFX}

LICENSE=		pvs-license
# not quite sure about this, but to be on the safe side:
RESTRICTED=		Redistribution not permitted - see ${HOMEPAGE}license.html
NO_SRC_ON_CDROM=	${RESTRICTED}
NO_SRC_ON_FTP=		${RESTRICTED}
NO_BIN_ON_CDROM=	${RESTRICTED}
NO_BIN_ON_FTP=		${RESTRICTED}

MAINTAINER=		jschauma@NetBSD.org
HOMEPAGE=		http://pvs.csl.sri.com/
COMMENT=		The PVS Specification and Verification System

DEPENDS+=		tk>=8.0:../../x11/tk

EMUL_PLATFORMS+=	linux-i386 solaris-sparc

WRKSRC=			${WRKDIR}
VERSION=		3.2
INFO_FILES=		# PLIST
TEX_ACCEPTED=		teTeX3

MESSAGE_SRC=		${PKGDIR}/MESSAGE.${EMUL_PLATFORM}
MAINFILEEXT=		${EMUL_OPSYS}

INSTALLATION_DIRS=	bin

do-build:
	${SED} -e "s|@PREFIX@|${PREFIX}|" ${WRKSRC}/pvs > ${WRKSRC}/pvs.tmp
	${MV} -f ${WRKSRC}/pvs.tmp ${WRKSRC}/pvs
	${RM} -f ${WRKSRC}/pvs.orig
	${RM} -f ${WRKSRC}/doc/release-notes/pvs-release-notes.info.orig

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/pvs ${PREFIX}/bin/pvs
	${INSTALL_PROGRAM_DIR} ${PREFIX}/pvs
	cd ${WRKSRC} && ${PAX} -s ,^./[.].*,, -rw . ${PREFIX}/pvs
	${CHMOD} 755 ${PREFIX}/pvs/pvs

.include "../../mk/tex.buildlink3.mk"
.include "../../mk/emacs.mk"
.include "../../mk/bsd.pkg.mk"
