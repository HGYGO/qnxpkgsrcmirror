# $NetBSD: Makefile,v 1.31 2007/07/29 05:19:25 jlam Exp $

DISTNAME=	linuxq3ademo-1_11-6_x86_gz
PKGREVISION=	3
PKGNAME=	quake3arena-demo-1.11.6
CATEGORIES=	games x11
MASTER_SITES=	ftp://ftp.idsoftware.com/idstuff/quake3/linux/ \
		ftp://mirrors.xmission.com/idsoftware/quake3/linux/
EXTRACT_SUFX=	.sh

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.quake3arena.com/
COMMENT=	Quake 3 Arena -- first person shooter (linux demo)

CONFLICTS=	quake3arena-[0-9]*

EMUL_PLATFORMS=		linux-i386
EMUL_MODULES.linux=	base x11 glx

USE_TOOLS+=	gtar
EXTRACT_CMD=	${SED} '1,/^END_OF_STUB$$/d' ${DOWNLOADED_DISTFILE} |	\
		${GTAR} xzf -

DISTBINNAME=	q3demo
BINNAME=	quake3arena-demo

DIST_SUBDIR=	lokigames
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
	${INSTALL_PROGRAM} ${WRKSRC}/bin/x86/glibc-2.1/${DISTBINNAME} \
		${LIBDIR}/${BINNAME}
	${INSTALL_DATA} ${WRKSRC}/bin/x86/glibc-2.1/libMesaVoodooGL.so.3.2 \
		${LIBDIR}
	${LN} -s ${LIBDIR}/libMesaVoodooGL.so.3.2 \
		${LIBDIR}/libMesaVoodooGL.so.3
	${LN} -s ${LIBDIR}/libMesaVoodooGL.so.3.2 \
		${LIBDIR}/libMesaVoodooGL.so
	${INSTALL_DATA} ${WRKSRC}/README ${SHAREDIR}/${BINNAME}-README
	cd ${WRKSRC} && ${PAX} -rw demoq3 icon.bmp icon.xpm ${LIBDIR}
	cd ${WRKSRC} && ${PAX} -rw Help ${SHAREDIR}
	${MV} ${SHAREDIR}/Help ${SHAREDIR}/quake3arena-Help

.include "../../mk/bsd.pkg.mk"
