# $NetBSD: Makefile,v 1.15 2007/08/16 09:51:17 he Exp $

DISTNAME=		Apache-Session-Wrapper-0.33
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		www perl5
MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Apache/}

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://search.cpan.org/dist/Apache-Session-Wrapper/
COMMENT=		Perl5 module doing a wrapper around Apache::Session

DEPENDS+=		p5-Class-Container-[0-9]*:../../devel/p5-Class-Container
DEPENDS+=		p5-Exception-Class-[0-9]*:../../devel/p5-Exception-Class
DEPENDS+=		p5-Apache-Session>=1.6:../../www/p5-Apache-Session

PERL5_MODULE_TYPE=	Module::Build
PERL5_PACKLIST=		auto/Apache/Session/Wrapper/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
