# $NetBSD: Makefile,v 1.22 2007/05/13 22:57:57 wiz Exp $

DISTNAME=	Gtk2-${DIST_VER}
PKGNAME=	p5-gtk2-${DIST_VER}
CATEGORIES=	x11 perl5
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gtk2-perl/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://gtk2-perl.sourceforge.net/
COMMENT=	Perl bindings for GTK+ 2.0

DEPENDS+=	p5-ExtUtils-Depends>=0.2:../../devel/p5-ExtUtils-Depends
DEPENDS+=	p5-ExtUtils-PkgConfig>=1.03:../../devel/p5-ExtUtils-PkgConfig

USE_TOOLS+=	pkg-config

DIST_VER=	1.144

PERL5_PACKLIST=	auto/Gtk2/.packlist

BUILDLINK_API_DEPENDS.p5-glib2+=	p5-glib2>=1.140
.include "../../devel/p5-glib2/buildlink3.mk"
.include "../../graphics/p5-cairo/buildlink3.mk"
.include "../../lang/perl5/module.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
