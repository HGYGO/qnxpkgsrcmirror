# $NetBSD: Makefile,v 1.2 2008/10/19 19:17:58 he Exp $
#

DISTNAME=	Package-Generator-0.102
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Package/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Package-Generator/
COMMENT=	Perl 5 module to generate new packages

PKG_DESTDIR_SUPPORT=	user-destdir

PERL5_PACKLIST=	auto/Package/Generator/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
