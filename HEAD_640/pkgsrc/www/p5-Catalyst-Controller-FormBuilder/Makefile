# $NetBSD: Makefile,v 1.2 2008/10/19 19:19:06 he Exp $

DISTNAME=	Catalyst-Controller-FormBuilder-0.04
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	www perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Catalyst/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/perldoc?Catalyst::Controller::BindLex
COMMENT=	Put lexicals on the catalyst stash

DEPENDS+=	p5-CGI-FormBuilder>=3.02:../../www/p5-CGI-FormBuilder
DEPENDS+=	p5-Catalyst-Runtime>=5.7:../../www/p5-Catalyst-Runtime
DEPENDS+=	p5-Class-Accessor>=0.25:../../devel/p5-Class-Accessor
DEPENDS+=	p5-Test-WWW-Mechanize-Catalyst>=0.37:../../www/p5-Test-WWW-Mechanize-Catalyst
DEPENDS+=	p5-Tie-IxHash>=1.21:../../devel/p5-Tie-IxHash
DEPENDS+=	p5-Class-Data-Inheritable>=0.04:../../devel/p5-Class-Data-Inheritable
DEPENDS+=	p5-Class-Inspector>=1.13:../../devel/p5-Class-Inspector
DEPENDS+=	p5-Scalar-List-Utils>=1.19:../../devel/p5-Scalar-List-Utils

USE_LANGUAGES=	# empty
PERL5_PACKLIST= auto/Catalyst/Controller/FormBuilder/.packlist

PKG_DESTDIR_SUPPORT=	user-destdir

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
