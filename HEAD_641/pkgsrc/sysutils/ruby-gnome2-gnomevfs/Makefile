# $NetBSD: Makefile,v 1.2 2008/10/28 13:43:58 obache Exp $
#

PKGNAME=		${RUBY_PKGPREFIX}-gnome2-gnomevfs-${VERSION}
COMMENT=		Ruby binding of gnomevfs
CATEGORIES=		sysutils

PKG_DESTDIR_SUPPORT=	user-destdir

RUBY_EXTCONF_SUBDIRS=	gnomevfs

USE_TOOLS+=		pkg-config

do-test:
	${RUN} cd ${WRKSRC}/gnomevfs/tests; \
	for t in  test*.rb; do \
		${SETENV} ${TEST_ENV} ${RUBY} -I ${WRKSRC}/gnomevfs/src/lib -I ${WRKSRC}/gnomevfs/src $$t; \
	done

BUILDLINK_API_DEPENDS.ruby-gnome2-glib+=	${RUBY_PKGPREFIX}-gnome2-glib>=${VERSION}
.include "../../devel/ruby-gnome2-glib/buildlink3.mk"
.include "../../sysutils/gnome-vfs/buildlink3.mk"
.include "../../meta-pkgs/ruby-gnome2/Makefile.common"
