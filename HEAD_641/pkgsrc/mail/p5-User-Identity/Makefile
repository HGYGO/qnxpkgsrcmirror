# $NetBSD: Makefile,v 1.10 2009/07/17 18:00:17 adrianp Exp $

DISTNAME=	User-Identity-0.92
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	mail perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=User/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://perl.overmeer.net/userid/
#HOMEPAGE=	http://search.cpan.org/dist/User-Identity/
COMMENT=	Helps maintaining user information from various sources

DEPENDS+=	p5-Geography-Countries>=1.4:../../misc/p5-Geography-Countries
BUILD_DEPENDS+=	p5-Test-Pod>=1.0:../../devel/p5-Test-Pod

PKG_INSTALLATION_TYPES=	overwrite pkgviews
PKG_DESTDIR_SUPPORT=	user-destdir

PERL5_PACKLIST=	auto/User/Identity/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
