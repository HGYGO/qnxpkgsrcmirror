# $NetBSD: Makefile,v 1.1 2014/01/20 10:35:43 ryoon Exp $

PKGNAME=	${DISTNAME:S/mozc-/mozc-renderer-/}

CONFLICTS+=	ibus-mozc<=1.13.1651.102

INSTALLATION_DIRS+=	libexec share/icons

DEPENDS+=	xdg-utils-[0-9]*:../../misc/xdg-utils
DEPENDS+=	mozc-server-[0-9]*:../../inputmethod/mozc-server

do-build:
	cd ${WRKSRC} && env ${MAKE_ENV} \
		${PYTHONBIN} build_mozc.py build -c ${MOZC_BUILD_MODE} ${_MAKE_JOBS} \
			renderer/renderer.gyp:mozc_renderer

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/out_${OSDEST}/${MOZC_BUILD_MODE}/mozc_renderer \
		${DESTDIR}${PREFIX}/libexec
.for f in ui-alpha_full ui-alpha_half ui-dictionary ui-direct \
	ui-hiragana ui-katakana_full ui-katakana_half ui-properties ui-tool
	${INSTALL_DATA} ${WRKSRC}/data/images/unix/${f}.png \
		${DESTDIR}${PREFIX}/share/icons/${f:S/^ui-/mozc-/}.png
.endfor
	${INSTALL_DATA} ${WRKSRC}/data/images/product_icon_32bpp-128.png \
		${DESTDIR}${PREFIX}/share/icons/mozc.png

.include "../../inputmethod/mozc-server/Makefile.common"
