# $NetBSD: Makefile,v 1.18 2008/10/19 19:17:53 he Exp $

DISTNAME=	ExtUtils-F77-1.16
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
SVR4_PKGNAME=	p5ext
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=ExtUtils/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/ExtUtils-F77/
COMMENT=	Perl module for determining how to link Fortran and C

PKG_INSTALLATION_TYPES=	overwrite pkgviews
PKG_DESTDIR_SUPPORT=	user-destdir

PERL5_PACKLIST=		auto/ExtUtils/F77/.packlist
USE_LANGUAGES+=		fortran

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
