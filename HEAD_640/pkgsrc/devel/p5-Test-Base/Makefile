# $NetBSD: Makefile,v 1.3 2008/12/21 00:01:53 he Exp $
#

DISTNAME=	Test-Base-0.55
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Test/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Test-Base/
COMMENT=	Perl 5 module providing a data driven testing framework

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LANGUAGES=	# empty
PERL5_PACKLIST=	auto/Test/Base/.packlist

DEPENDS+=	p5-Spiffy>=0.30:../../devel/p5-Spiffy

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
