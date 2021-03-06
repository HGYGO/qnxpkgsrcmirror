# $NetBSD: Makefile,v 1.29 2007/07/29 05:19:26 jlam Exp $

DISTNAME=	linuxq3apoint-1.32b.x86
PKGREVISION=	3
PKGNAME=	quake3arena-1.32b
CATEGORIES=	games x11
MASTER_SITES=	ftp://ftp.idsoftware.com/idstuff/quake3/linux/ \
		ftp://mirrors.xmission.com/idsoftware/quake3/linux/
EXTRACT_SUFX=	.run

MAINTAINER=	jmcneill@NetBSD.org
HOMEPAGE=	http://www.quake3arena.com/
COMMENT=	Quake 3 Arena -- first person shooter (binary only, no data files)

CONFLICTS=	quake3arena-demo-[0-9]*

EMUL_PLATFORMS=		linux-i386
EMUL_MODULES.linux=	base x11 glx

NO_SRC_ON_FTP=	no
NO_BIN_ON_FTP=	no

USE_TOOLS+=	gtar gunzip tail

# The distfile is a self-extracting shell script.  "266" is a magic
# number that's taken from the distfile itself.
#
EXTRACT_CMD=	tail +266 ${DOWNLOADED_DISTFILE} | gunzip | gtar -xf -

DISTBINNAME=	quake3.x86
BINNAME=	quake3arena

WRKSRC=		${WRKDIR}
LIBDIR=		${PREFIX}/lib/lokigames/${BINNAME}
SHAREDIR=	${PREFIX}/share/doc/lokigames

INSTALLATION_DIRS=	bin

do-build:
	${SED} -e 's#@@PREFIX@@#${PREFIX}#g' \
	       -e 's#@@LIBDIR@@#${LIBDIR}#g' \
	       -e 's#@@BINNAME@@#${BINNAME}#g' \
	    <${FILESDIR}/wrapper.sh >${WRKDIR}/${BINNAME}.sh

# The executable must be in the same directory as the data.
do-install:
	${INSTALL_PROGRAM_DIR} ${LIBDIR}
	${INSTALL_DATA_DIR} ${SHAREDIR}
	${INSTALL_SCRIPT} ${WRKDIR}/${BINNAME}.sh ${PREFIX}/bin/${BINNAME}
	${INSTALL_PROGRAM} ${WRKSRC}/bin/x86/${DISTBINNAME} \
		${LIBDIR}/${BINNAME}
	${INSTALL_DATA} ${WRKSRC}/README-linux.txt ${SHAREDIR}/${BINNAME}-README

	cd ${WRKSRC} && ${PAX} -rw baseq3 ${LIBDIR}

# Some platforms, e.g. FreeBSD, need to "brand" the ELF binaries to
# the correct type.
#
post-install:
	${BRANDELF:D${BRANDELF} -t Linux ${PREFIX}/bin/${BINNAME}:U${TRUE}}

.include "../../mk/bsd.pkg.mk"
