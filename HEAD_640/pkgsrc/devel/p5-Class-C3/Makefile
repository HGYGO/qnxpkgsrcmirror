# $NetBSD: Makefile,v 1.3 2008/12/20 19:25:36 he Exp $

DISTNAME=	Class-C3-0.20
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Class/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Class-C3/
COMMENT=	Pragma to use the C3 method resolution order algortihm

DEPENDS+=	p5-Test-Exception>=0.15:../../devel/p5-Test-Exception
DEPENDS+=	p5-Scalar-List-Utils>=1.10:../../devel/p5-Scalar-List-Utils
DEPENDS+=	p5-Algorithm-C3>=0.05:../../devel/p5-Algorithm-C3
DEPENDS+=	p5-Class-C3-XS>=0.08:../../devel/p5-Class-C3-XS

USE_LANGUAGES=	# empty
PERL5_PACKLIST=	auto/Class/C3/.packlist

PKG_DESTDIR_SUPPORT=    user-destdir

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
