# $NetBSD: Makefile,v 1.12 2007/10/31 20:50:17 drochner Exp $
#

PKGNAME=		${PYPKGPREFIX}-gobject-2.14.0

PKG_DESTDIR_SUPPORT=	user-destdir

.include "Makefile.common"

post-patch:
	${SED} "s|@PYGTKCODEGEN@|${PREFIX}/share/pygtk/2.0|" \
	<${WRKSRC}/dsextras.py >${WRKSRC}/dsextras.py.tmp \
	&& ${MV} ${WRKSRC}/dsextras.py.tmp ${WRKSRC}/dsextras.py

.include "../../lang/python/extension.mk"
.include "../../devel/py-gobject-shared/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
