# $NetBSD: Makefile,v 1.22 2007/02/25 23:48:29 wiz Exp $
#

DISTNAME=		Apache-Session-1.82
PKGNAME=		p5-${DISTNAME}
SVR4_PKGNAME=		p5ase
CATEGORIES=		www perl5
MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Apache/}

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://search.cpan.org/dist/Apache-Session/
COMMENT=		Perl5 module to provide persistent storage

DEPENDS+=		p5-Storable>=1.0.11:../../devel/p5-Storable
DEPENDS+=		p5-Digest-MD5>=2.16:../../security/p5-Digest-MD5
DEPENDS+=		p5-Test-Deep>=0.082:../../devel/p5-Test-Deep
DEPENDS+=		p5-Test-Exception>=0.15:../../devel/p5-Test-Exception

PERL5_PACKLIST=		auto/Apache/Session/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
