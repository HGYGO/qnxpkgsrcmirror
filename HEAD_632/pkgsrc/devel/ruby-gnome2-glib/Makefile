# $NetBSD: Makefile,v 1.5 2007/08/19 03:00:26 taca Exp $
#

PKGNAME=		${RUBY_PKGPREFIX}-gnome2-glib-${VERSION}
COMMENT=		Ruby binding of GLib-2.x
CATEGORIES=		devel

CONFLICTS+=		ruby-gnome2-glib-[0-9]*

RUBY_EXTCONF_SUBDIRS=	glib

USE_TOOLS+=		pkg-config
DISTINFO_FILE?=		${.CURDIR}/distinfo

.include "../../devel/glib2/buildlink3.mk"
.include "../../meta-pkgs/ruby-gnome2/Makefile.common"
