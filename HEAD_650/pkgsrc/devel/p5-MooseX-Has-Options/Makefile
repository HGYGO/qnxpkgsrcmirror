# $NetBSD: Makefile,v 1.4 2013/05/31 12:40:33 wiz Exp $
#

DISTNAME=	MooseX-Has-Options-0.002
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	2
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=MooseX/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/MooseX-Has-Options/
COMMENT=	Succinct options for Moose
LICENSE=	${PERL5_LICENSE}

USE_LANGUAGES=	# empty
PERL5_PACKLIST=	auto/MooseX/Has/Options/.packlist

DEPENDS+=	p5-Package-Stash>=0.18:../../devel/p5-Package-Stash

BUILD_DEPENDS+=	p5-Moose-[0-9]*:../../devel/p5-Moose
BUILD_DEPENDS+=	p5-Test-Most-[0-9]*:../../devel/p5-Test-Most
BUILD_DEPENDS+=	p5-namespace-autoclean-[0-9]*:../../devel/p5-namespace-autoclean

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
