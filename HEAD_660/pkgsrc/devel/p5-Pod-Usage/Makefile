# $NetBSD: Makefile,v 1.2 2013/05/31 12:40:40 wiz Exp $
#

DISTNAME=	Pod-Usage-1.61
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Pod/}

MAINTAINER=	ryoon@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Pod-Usage/
COMMENT=	Print a usage message from embedded pod documentation
LICENSE=	${PERL5_LICENSE}

DEPENDS+=	p5-Pod-Parser>=1.6:../../textproc/p5-Pod-Parser

PERL5_PACKLIST=	auto/Pod/Usage/.packlist
USE_LANGUAGES=	# none

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
