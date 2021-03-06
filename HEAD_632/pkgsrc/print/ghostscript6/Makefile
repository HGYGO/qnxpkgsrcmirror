# $NetBSD: Makefile,v 1.4 2007/12/02 13:04:14 wiz Exp $

DISTNAME=		ghostscript-${GS_VERS}
PKGREVISION=		10
GS_VERS=		6.01
CATEGORIES=		print
MASTER_SITES+=		${MASTER_SITE_SOURCEFORGE:=ghostscript/} \
			ftp://mirror.cs.wisc.edu/pub/mirrors/ghost/aladdin/gs${GS_VERS:S/.//}/
EXTRACT_SUFX=		.tar.bz2

MAINTAINER=		pkgsrc-users@NetBSD.org
COMMENT=		Aladdin Postscript interpreter
HOMEPAGE=		http://pages.cs.wisc.edu/~ghost/index.html

DEPENDS+=		ghostscript-fonts>=6.0:../../fonts/ghostscript-fonts
DEPENDS+=		watanabe-vfont-19930318:../../fonts/watanabe_vfont

CONFLICTS+=		ghostscript{,-nox11}-[0-9]*
CONFLICTS+=		ghostscript-afpl-[0-9]*
CONFLICTS+=		ghostscript-esp{,-nox11}-[0-9]*
CONFLICTS+=		ghostscript-gnu{,-nox11,-x11}-[0-9]*
CONFLICTS+=		hpijs-[0-9]*

WRKSRC=			${WRKDIR}/gs${GS_VERS}
USE_LANGUAGES=		c c++
USE_TOOLS+=		gmake
GNU_CONFIGURE=		yes

REQD_DIRS+=		share/ghostscript

GS_SRCS=		${DISTNAME}${EXTRACT_SUFX}
DISTFILES+=		${GS_SRCS}
EXTRACT_ONLY=		${GS_SRCS}

# Adobe's JPEG implementation in their PDF/PS documents is non-standard,
# so we can't use an already installed libjpeg.so.
#
JPEG_SRCS=		jpegsrc.v6b.tar.gz
JPEG_WRKSRC=		${WRKDIR}/jpeg-6b
SITES.${JPEG_SRCS}=	ftp://ftp.uu.net/graphics/jpeg/ \
			ftp://mirror.cs.wisc.edu/pub/mirrors/ghost/3rdparty/
DISTFILES+=		${JPEG_SRCS}
EXTRACT_ONLY+=		${JPEG_SRCS}

# VFlib & Japanese PDF patch
PATCH_SITES=		http://www.sat.t.u-tokyo.ac.jp/~hideyuki/Ghostscript/
PATCHFILES=		gs${GS_VERS}-jpdf-exp.patch.gz
PATCH_DIST_STRIP=	-p1

# PostScript source to decode encrypted PDF files
PDF_SEC=		pdf_sec.ps
SITES.${PDF_SEC}=	http://www.ozemail.com.au/~geoffk/pdfencrypt/
DISTFILES+=		${PDF_SEC}

# Gimp-print/STP drivers for photo-quality inkjet output
GIMPPRINT=		gimp-print-4.2.0
GIMPPRINT_SRCS=		${GIMPPRINT}.tar.gz
GIMPPRINT_WRKSRC=	${WRKDIR}/${GIMPPRINT}
SITES.${GIMPPRINT_SRCS}=	${MASTER_SITE_SOURCEFORGE:=gimp-print/}
DISTFILES+=			${GIMPPRINT_SRCS}
EXTRACT_ONLY+=			${GIMPPRINT_SRCS}
GIMPPRINT_CONFIGURE_ARGS=	${CONFIGURE_ARGS} --without-gimp --with-ghost

# Drivers from the HP Inkjet Project (IJS/HPIJS)
HPIJS_DRV=		hpijs-1.0.2
HPIJS_SRCS=		${HPIJS_DRV}.tar.gz
HPIJS_WRKSRC=		${WRKDIR}/${HPIJS_DRV}
HPIJS_GSFILES=		gdevijs.c gdevijs.h
HPIJS_GSFILES+=		ijs.c ijs.h ijs_client.c ijs_client.h ijs_exec_unix.c
HPIJS_GSFILES+=		unistd_.h
SITES.${HPIJS_SRCS}=	${MASTER_SITE_SOURCEFORGE:=hpinkjet/}
DISTFILES+=		${HPIJS_SRCS}
EXTRACT_ONLY+=		${HPIJS_SRCS}
HPIJS_CONFIGURE_ARGS=	${CONFIGURE_ARGS}

# Additional driver for several HP deskjets
HPDJ_DRV=		hpdj-2.6
SITES.${HPDJ_DRV}.tar.gz=	ftp://ftp.sbs.de/pub/graphics/ghostscript/pcl3/
DISTFILES+=		${HPDJ_DRV}.tar.gz
EXTRACT_ONLY+=		${HPDJ_DRV}.tar.gz

# I don't know the primary destribution sites of these drivers....
DMPRT_DRV=		dmprt-2.01
SITES.${DMPRT_DRV}.tar.gz=	ftp://ftp.freebsd.org/pub/FreeBSD/distfiles/
DISTFILES+=		${DMPRT_DRV}.tar.gz
EXTRACT_ONLY+=		${DMPRT_DRV}.tar.gz

BJ10V_DRV=		gdev10v
DISTFILES+=		${BJ10V_DRV}.tar.gz
EXTRACT_ONLY+=		${BJ10V_DRV}.tar.gz

# EPSON MJ-700V2C
MJC_DRV=		gdevmjc-0.8
DISTFILES+=		${MJC_DRV}.tar.gz
EXTRACT_ONLY+=		${MJC_DRV}.tar.gz

# Alps MD5000 printer 600dpi monochrome mode
MD5000_DRV=		gdevalps-0.2
DISTFILES+=		${MD5000_DRV}.tar.gz
EXTRACT_ONLY+=		${MD5000_DRV}.tar.gz

# Alps MD-2000/2010/4000/1300/1500/5000
MD2000_DRV=		gdevmd2k-0.2a
SITES.${MD2000_DRV}.tar.gz=	http://plaza26.mbn.or.jp/~higamasa/gdevmd2k/
DISTFILES+=		${MD2000_DRV}.tar.gz
EXTRACT_ONLY+=		${MD2000_DRV}.tar.gz

# Canon LIPS II+, III, IV; EPSON ESC/Page; NEC NPDL drivers
LIPS_DRV=		gdevlips-2.3.6
SITES.${LIPS_DRV}.tar.gz=	http://www.bukka.p.chiba-u.ac.jp/~ohmori/gs/
DISTFILES+=		${LIPS_DRV}.tar.gz
EXTRACT_ONLY+=		${LIPS_DRV}.tar.gz

# Ricoh RPDL
RPDL_DRV=		gdevrpdl
SITES.${RPDL_DRV}.tar.gz=	http://home.jp.FreeBSD.org/~mita/LOCAL_PORTS/
DISTFILES+=		${RPDL_DRV}.tar.gz
EXTRACT_ONLY+=		${RPDL_DRV}.tar.gz

# Kyocera Prescribe
PRESCR_DRV=		gdevprsc-0.4
SITES.${PRESCR_DRV}.tar.gz=	${MASTER_SITE_LOCAL}
DISTFILES+=		${PRESCR_DRV}.tar.gz
EXTRACT_ONLY+=		${PRESCR_DRV}.tar.gz

# Samsung SmartGDI laser printers
GDI_DRV=		samsung-gdi-driver
SITES.${GDI_DRV}.tar.gz=	http://www.linuxprinting.org/download/printing/
DISTFILES+=		${GDI_DRV}.tar.gz
EXTRACT_ONLY+=		${GDI_DRV}.tar.gz

DIST_SUBDIR=		ghostscript
MAKE_FILE=		src/unix-gcc.mak
BUILD_TARGET=		std

MAKEFRAGS=		${FILESDIR}/devs.nox11

.include "options.mk"
.include "../../mk/bsd.prefs.mk"

.if ${OPSYS} == "SunOS"
GCC_REQD+=		2.95.3
.elif ${MACHINE_ARCH} == "arm" || ${MACHINE_ARCH} == "arm32"
GCC_REQD+=		3.0
.endif

.if defined(PAPERSIZE) && (${PAPERSIZE} == "A4" || ${PAPERSIZE} == "a4")
CFLAGS+=		-DA4
.endif
CFLAGS+=		-DHAVE_MKSTEMP=1

MAKE_FLAGS+=		CFLAGS=${CFLAGS:M*:Q}
MAKE_FLAGS+=		LDFLAGS=${LDFLAGS:M*:Q}
MAKE_FLAGS+=		GS_DISPLAY_DEVICE=${GS_DISPLAY_DEVICE:Q}
MAKE_FLAGS+=		XINCLUDE= XLIBDIRS= XLIBS=${XLIBS:Q}
MAKE_FLAGS+=		mandir=${PREFIX}/${PKGMANDIR}

.if ${OPSYS} == "SunOS"
LDFLAGS+=		-L${LOCALBASE}/bsd/lib ${COMPILER_RPATH_FLAG}${LOCALBASE}/bsd/lib
.endif

.if ${OPSYS} == "IRIX"
CONFIGURE_ENV+=		ac_cv_c_bigendian=yes
.endif

# Define whether this platform has floating point hardware:
#	FPU_TYPE=2 means floating point is faster than fixed point.
# (This is the case on some RISCs with multiple instruction dispatch.)
#	FPU_TYPE=1 means floating point is at worst only slightly slower
# than fixed point.
#	FPU_TYPE=0 means that floating point may be considerably slower.
#	FPU_TYPE=-1 means that floating point is always much slower than
# fixed point.
#
FPU_TYPE?=		1
MAKE_FLAGS+=		FPU_TYPE=${FPU_TYPE:Q}

PLIST_SUBST+=		GS_VERS=${GS_VERS}vflib
USE_TOOLS+=		perl:run
REPLACE_PERL=		lib/fixmswrd.pl

GSDATADIR=		${PREFIX}/share/ghostscript/${GS_VERS}vflib
DOCDIR=			${PREFIX}/share/doc/ghostscript
HTMLDIR=		${PREFIX}/share/doc/html/ghostscript
LIBDIR=			${GSDATADIR}/lib

GS_CONF_PREREQ=		# empty

.PHONY: contrib-drivers
contrib-drivers:
	cd ${WRKSRC}/src; ${PAX} -rf ${WRKDIR}/${HPDJ_DRV}/hpdj.tar
	${MV} ${WRKSRC}/src/gs-hpdj.1 ${WRKSRC}/man
	cd ${WRKDIR}; ${CP} gdevdmpr.c gdevdmpr.mak		${WRKSRC}/src
	cd ${WRKDIR}; ${CP} dviprlib.*				${WRKSRC}/src
	cd ${WRKDIR}/${BJ10V_DRV}; ${CP} gdev10v.c gdev10v.mak	${WRKSRC}/src
	cd ${WRKDIR}/${MJC_DRV}; ${CP} *.[ch] gdevmjc.mak	${WRKSRC}/src
	cd ${WRKDIR}/${LIPS_DRV}; ${CP} *			${WRKSRC}/src
	cd ${WRKDIR}/${RPDL_DRV}; ${CP} gdevrpdl.c gdevrpdl.mak	${WRKSRC}/src
	cd ${WRKDIR}/${MD5000_DRV}; \
		${CP} gdevalps.c gdevalps.mak-5.50		${WRKSRC}/src
	cd ${WRKDIR}/${MD2000_DRV}; \
		${CP} gdevmd2k.c gdevmd2k.mak-5.8x		${WRKSRC}/src
	cd ${WRKDIR}/${PRESCR_DRV}; \
		${CP} gdevprsc.c gdevprsc.mak			${WRKSRC}/src
	cd ${WRKDIR}; ${CP} gdevgdi.c				${WRKSRC}/src

post-extract: contrib-drivers
	${RM} -f ${WRKSRC}/jpeg
	${LN} -s ${JPEG_WRKSRC} ${WRKSRC}/jpeg
	${RM} -f ${WRKSRC}/lib/${PDF_SEC}
	${LN} -s ${_DISTDIR}/${PDF_SEC} ${WRKSRC}/lib/${PDF_SEC}

post-patch:
	if [ ! -f ${WRKDIR}/dmp_site.ps.bak ]; then			\
		${MV} ${WRKDIR}/dmp_site.ps ${WRKDIR}/dmp_site.ps.bak;	\
	fi
	${SED}	-e "s|epsimage\\.src|${GSDATADIR}/lib/escp_24.src|g"	\
		${WRKDIR}/dmp_site.ps.bak > ${WRKDIR}/dmp_site.ps

GS_CONF_PREREQ+=	hpijs-configure
.PHONY: hpijs-configure
hpijs-configure:
	cd ${HPIJS_WRKSRC} &&						\
	${SETENV} CC=${CC:Q} CFLAGS=${CFLAGS:M*:Q} CPPFLAGS=${CPPFLAGS:M*:Q} \
		${CONFIGURE_ENV}					\
		${CONFIGURE_SCRIPT} ${HPIJS_CONFIGURE_ARGS} &&		\
	${CP} ${HPIJS_GSFILES} ${WRKSRC}/src &&				\
	${HEAD} -518 contrib.mak | ${TAIL} -20				\
		>> ${WRKSRC}/src/contrib.mak

GS_BUILD_PREREQ+=	hpijs-build
.PHONY: hpijs-build
hpijs-build:
	cd ${HPIJS_WRKSRC} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} all

GS_INSTALL_PREREQ+=	hpijs-install
.PHONY: hpijs-install
hpijs-install:
	cd ${HPIJS_WRKSRC} &&						\
	${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} install docdir=${HTMLDIR}/hpijs

GS_CONF_PREREQ+=	gimpprint-configure
.PHONY: gimpprint-configure
gimpprint-configure:
	cd ${GIMPPRINT_WRKSRC} &&					\
	${SETENV} CC=${CC:Q} CFLAGS=${CFLAGS:M*:Q} CPPFLAGS=${CPPFLAGS:M*:Q} \
		${GIMPPRINT_CONFIGURE_ENV}				\
		${CONFIGURE_SCRIPT} ${GIMPPRINT_CONFIGURE_ARGS} &&	\
	cd ${GIMPPRINT_WRKSRC}/src/ghost &&				\
	${SETENV} ${MAKE_ENV} SED=${SED:Q} ${MAKE_PROGRAM} all-local &&	\
	( ${ECHO} '#ifndef GIMPPRINT_VERSION_FIX';			\
	  ${ECHO} '#define GIMPPRINT_VERSION_FIX';			\
	  ${EGREP} '#define (VERSION|RELEASE_DATE)' ../../config.h;	\
	  ${ECHO} '#endif /* GIMPPRINT_VERSION_FIX */';			\
	) >> gdevstp-print.h;						\
	${CP} *.c *.h ${WRKSRC}/src &&					\
	${CAT} contrib.mak.addon.old >> ${WRKSRC}/src/contrib.mak

do-configure: ${GS_CONF_PREREQ}
	#
	# Append build rules for extra drivers to contrib.mak
	#
	${CAT}	${WRKSRC}/src/contrib.mak-5.94.add			\
		${WRKSRC}/src/gdevlips.mak				\
		${WRKSRC}/src/gdev10v.mak				\
		${WRKSRC}/src/gdevmjc.mak				\
		${WRKSRC}/src/gdevrpdl.mak				\
		${WRKSRC}/src/gdevdmpr.mak				\
		${WRKSRC}/src/gdevalps.mak-5.50				\
		${WRKSRC}/src/gdevmd2k.mak-5.8x				\
		${WRKSRC}/src/gdevprsc.mak				\
		>> ${WRKSRC}/src/contrib.mak
	#
	# Prepend device list to unix-gcc.mak
	#
	( if [ -n ${GS_DISPLAY_DEVICE:Q}"" ]; then			\
		${ECHO} 'DEVICE_DEVS=	$$(DD)${GS_DISPLAY_DEVICE}';	\
		${ECHO} '';						\
	  fi;								\
	  ${CAT} ${MAKEFRAGS} ${WRKSRC}/src/unix-gcc.mak		\
	) > ${WRKDIR}/unix-gcc.mak
	${MV} -f ${WRKDIR}/unix-gcc.mak ${WRKSRC}/src

post-build: ${GS_BUILD_PREREQ}

post-install: ${GS_INSTALL_PREREQ}

post-install:
	strip ${PREFIX}/bin/gs
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${GIMPPRINT_WRKSRC}/src/ghost/README		\
		${DOCDIR}/README.stp
	${INSTALL_DATA} ${WRKDIR}/${LIPS_DRV}/Gdevlips.htm ${HTMLDIR}
	${INSTALL_DATA} ${WRKDIR}/${BJ10V_DRV}/gdev10v.jis ${DOCDIR}
	${INSTALL_DATA} ${WRKDIR}/gdevdmpr.sj ${DOCDIR}
	${INSTALL_DATA} ${WRKDIR}/dmp_init.ps ${LIBDIR}
	${INSTALL_DATA} ${WRKDIR}/dmp_site.ps ${LIBDIR}
	${INSTALL_DATA} ${WRKDIR}/escp_24.src ${LIBDIR}
	${INSTALL_DATA} ${WRKDIR}/testpage.ps ${LIBDIR}
	${INSTALL_DATA} ${WRKDIR}/${PRESCR_DRV}/gdevprsc.?? ${DOCDIR}
	${INSTALL_DATA_DIR} ${DOCDIR}/${MJC_DRV}
	${INSTALL_DATA} ${WRKDIR}/${MJC_DRV}/README.mjc ${DOCDIR}/${MJC_DRV}
	${INSTALL_DATA} ${WRKDIR}/${MJC_DRV}/README.noz ${DOCDIR}/${MJC_DRV}
	${INSTALL_DATA} ${WRKDIR}/${MJC_DRV}/README.mje ${DOCDIR}/${MJC_DRV}
	${INSTALL_DATA} ${WRKDIR}/${MJC_DRV}/cpem.doc ${DOCDIR}/${MJC_DRV}
	${INSTALL_DATA} ${WRKDIR}/${MJC_DRV}/MJ700V2C.FAQ ${DOCDIR}/${MJC_DRV}

.include "../../graphics/png/buildlink3.mk"
.include "../../print/ja-vflib-lib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
