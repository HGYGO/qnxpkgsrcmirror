# $NetBSD: Makefile,v 1.11 2013/07/20 04:34:53 ryoon Exp $

PKGNAME=	${DISTNAME:S/mozc-/mozc-tool-/}

INSTALLATION_DIRS+=	libexec

ALL_ENV+=	qt_dir=${QTDIR}

do-build:
	cd ${WRKSRC} && env ${MAKE_ENV} \
		${PYTHONBIN} build_mozc.py build -c ${MOZC_BUILD_MODE} ${_MAKE_JOBS} \
			gui/gui.gyp:mozc_tool

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/out_${OSDEST}/${MOZC_BUILD_MODE}/mozc_tool \
		${DESTDIR}${PREFIX}/libexec

.include "../../inputmethod/mozc-server/Makefile.common"
