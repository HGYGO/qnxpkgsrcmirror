# $NetBSD: Makefile,v 1.50 2007/11/03 16:15:17 drochner Exp $

DISTNAME=		gtk-engines-2.12.2
PKGNAME=		${DISTNAME:S/gtk/gtk2/}
CATEGORIES=		x11
MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gtk-engines/2.12/}
EXTRACT_SUFX=		.tar.bz2

MAINTAINER=		jmmv@NetBSD.org
HOMEPAGE=		http://www.gnome.org/
COMMENT=		Theme engines for GTK+ version 2

CONFLICTS+=		gtk-engines-[0-9]*
CONFLICTS+=		gtk2-engines-clearlooks-[0-9]*
CONFLICTS+=		gtk2-engines-industrial-[0-9]*
CONFLICTS+=		gnome-themes-extras<0.8

BUILDLINK_API_DEPENDS.gtk2+=	gtk2+>=2.10.0

USE_TOOLS+=		gmake intltool pkg-config msgfmt
GNU_CONFIGURE=		yes
USE_DIRS+=		theme-1.1 xdg-1.1
USE_LIBTOOL=		yes

PKGCONFIG_OVERRIDE=	gtk-engines-2.pc.in

.include "../../x11/gtk2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
