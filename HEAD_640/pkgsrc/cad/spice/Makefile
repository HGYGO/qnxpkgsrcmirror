# $NetBSD: Makefile,v 1.41 2008/11/10 17:21:34 wiz Exp $

DISTNAME=	sp3f4.kit
PKGNAME=	spice-3f5.1
PKGREVISION=	5
CATEGORIES=	cad
MASTER_SITES=	ftp://ic.eecs.berkeley.edu/pub/Spice3/
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	dmcmahill@NetBSD.org
HOMEPAGE=	http://bwrc.eecs.berkeley.edu/Classes/IcBook/SPICE/
COMMENT=	General-purpose circuit simulation program


WRKSRC=			${WRKDIR}
# GPL license used by GNU readline is not compatible
# with 4 clause BSD license used by spice.
#BUILDLINK_API_DEPENDS.readline=	readline>=4.0
#USE_GNU_READLINE=	uses rl_* interface

# documentation in ftp://ic.eecs.berkeley.edu/pub/Spice3/um.3f3.ps

#		These are included as patch-ae
#PATCH_SITES=	ftp://ilpsoft.eecs.berkeley.edu/pub/SPICE3F5/
#PATCHFILES=	grid.patch newcoms.patch spsmp.patch

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1 ${PKGMANDIR}/man3 ${PKGMANDIR}/man5

MAKE_ENV+=	WRKSRC=${WRKSRC:Q}

post-extract:
	${CP} ${FILESDIR}/NetBSD ${WRKSRC}/conf

SUBST_CLASSES+=		conf
SUBST_STAGE.conf=	pre-configure
SUBST_FILES.conf=	conf/NetBSD conf/defaults
SUBST_VARS.conf=	MAKE_PROGRAM CFLAGS LDFLAGS WRKSRC PREFIX X11BASE

do-configure:
	rm -f ${WRKSRC}/makefile

do-build:
	cd ${WRKSRC} && env ${MAKE_ENV} util/build NetBSD default

do-install:
	cd ${WRKSRC} && env ${MAKE_ENV} util/build NetBSD install
	${CHMOD} a+rx ${PREFIX}/bin/spice3 ${PREFIX}/bin/nutmeg		\
	  	${PREFIX}/bin/sconvert ${PREFIX}/bin/help		\
		${PREFIX}/bin/proc2mod ${PREFIX}/bin/multidec
	strip ${PREFIX}/bin/spice3 ${PREFIX}/bin/nutmeg			\
		${PREFIX}/bin/sconvert ${PREFIX}/bin/help		\
		${PREFIX}/bin/proc2mod ${PREFIX}/bin/multidec
	${CHMOD} -R a+rX ${PREFIX}/share/spice3
	${INSTALL_MAN} ${WRKSRC}/man/man5/mfbcap.5 ${PREFIX}/${PKGMANDIR}/man5/mfbcap.5
	${INSTALL_MAN} ${WRKSRC}/man/man1/sconvert.1 ${PREFIX}/${PKGMANDIR}/man1/sconvert.1
	${INSTALL_MAN} ${WRKSRC}/man/man1/nutmeg.1 ${PREFIX}/${PKGMANDIR}/man1/nutmeg.1
	${INSTALL_MAN} ${WRKSRC}/man/man1/spice.1 ${PREFIX}/${PKGMANDIR}/man1/spice.1
	${INSTALL_MAN} ${WRKSRC}/man/man3/mfb.3 ${PREFIX}/${PKGMANDIR}/man3/mfb.3

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/spice3
	${INSTALL_DATA} ${WRKSRC}/examples/*.cir ${PREFIX}/share/examples/spice3

#.include "../../devel/readline/buildlink3.mk"
.include "../../x11/libXaw/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
