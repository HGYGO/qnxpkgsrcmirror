# $NetBSD: Makefile,v 1.10 2013/05/31 12:39:51 wiz Exp $
#

DISTNAME=	DBIx-Connector-0.53
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	databases perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=DBIx/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/DBIx-Connector/
COMMENT=	Fast, safe DBI connection and transaction management
LICENSE=	${PERL5_LICENSE}

BUILD_DEPENDS+=	p5-Test-MockModule>=0.05:../../devel/p5-Test-MockModule
BUILD_DEPENDS+=	p5-Test-Pod>=1.26:../../devel/p5-Test-Pod
BUILD_DEPENDS+=	p5-Test-Pod-Coverage>=1.08:../../devel/p5-Test-Pod-Coverage

USE_LANGUAGES=		# empty
PERL5_PACKLIST=		auto/DBIx/Connector/.packlist
PERL5_MODULE_TYPE=	Module::Build

BUILDLINK_API_DEPENDS.p5-DBI+=	p5-DBI>=1.614
.include "../../databases/p5-DBI/buildlink3.mk"
.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
