# $NetBSD: Makefile,v 1.29 2006/04/17 13:46:15 wiz Exp $

PKGNAME=		qt2-designer-${QTVERSION}
PKGREVISION=		6
COMMENT=		Visual (WYSIWYG) QT GUI builder

CONFLICTS+=		qt2-designer-kde-[0-9]*


.include "../../x11/qt2-libs/Makefile.common"

BUILD_TARGET=		sub-tools

do-install:
	${INSTALL_LIB_DIR} ${QTPREFIX}/lib
	${LIBTOOL} ${INSTALL_DATA} \
		${WRKSRC}/tools/designer/util/libqutil.la ${QTPREFIX}/lib
	${INSTALL_PROGRAM_DIR} ${QTPREFIX}/bin
	${LIBTOOL} ${INSTALL_PROGRAM} \
		${WRKSRC}/tools/designer/uic/uic ${QTPREFIX}/bin
	${LIBTOOL} ${INSTALL_PROGRAM} \
		${WRKSRC}/tools/designer/designer/designer ${QTPREFIX}/bin

.include "../../converters/libiconv/buildlink3.mk"
.include "../../x11/qt2-libs/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
