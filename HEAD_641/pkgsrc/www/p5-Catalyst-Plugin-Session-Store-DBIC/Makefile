# $NetBSD: Makefile,v 1.6 2009/07/08 11:59:53 sno Exp $

DISTNAME=	Catalyst-Plugin-Session-Store-DBIC-0.10
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Catalyst/}

MAINTAINER=	rhaen@NetBSD.org
HOMEPAGE=	http://search.cpan.org/perldoc?Catalyst::Plugin::Session::Store::DBIC
COMMENT=	DBIC session storage backend
LICENSE=	${PERL5_LICENSE}

DEPENDS+=	p5-Catalyst-Runtime>=5.65000:../../www/p5-Catalyst-Runtime
DEPENDS+=	p5-Catalyst-Plugin-Session>=0.09:../../www/p5-Catalyst-Plugin-Session
DEPENDS+=	p5-Catalyst-Plugin-Session-Store-Delegate>=0.04:../../www/p5-Catalyst-Plugin-Session-Store-Delegate
DEPENDS+=	p5-Class-Accessor>=0:../../devel/p5-Class-Accessor
DEPENDS+=	p5-DBIx-Class>=0.07000:../../databases/p5-DBIx-Class
DEPENDS+=	p5-MRO-Compat-[0-9]*:../../devel/p5-MRO-Compat
DEPENDS+=	p5-Test-Warn-[0-9]*:../../devel/p5-Test-Warn

PERL5_PACKLIST= auto/Catalyst/Plugin/Session/Store/DBIC/.packlist
PKG_DESTDIR_SUPPORT=	user-destdir

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
