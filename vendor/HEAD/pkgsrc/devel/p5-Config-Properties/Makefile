# $NetBSD: Makefile,v 1.5 2013/12/09 14:17:43 obache Exp $
#

DISTNAME=	Config-Properties-1.73
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	3
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Config/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Config-Properties/
COMMENT=	Read and write property files
LICENSE=	${PERL5_LICENSE}

DEPENDS+=	{perl>=5.6.1,p5-File-Temp>=0}:../../devel/p5-File-Temp

PERL5_PACKLIST=	auto/Config/Properties/.packlist
USE_LANGUAGES=	# none

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
