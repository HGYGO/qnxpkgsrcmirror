# $NetBSD: Makefile,v 1.2 2008/10/19 19:19:07 he Exp $

DISTNAME=	Catalyst-Plugin-Session-Store-FastMmap-0.05
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	www perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Catalyst/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/perldoc?Catalyst::Plugin::Session::Store::FastMmap
COMMENT=	FastMmap session storage backend

DEPENDS+=	p5-Catalyst-Plugin-Session>=0.09:../../www/p5-Catalyst-Plugin-Session
DEPENDS+=       p5-Cache-FastMmap>=1.13:../../devel/p5-Cache-FastMmap
DEPENDS+=       p5-File-Temp>=0:../../devel/p5-File-Temp
DEPENDS+=       p5-Path-Class>=0:../../devel/p5-Path-Class

USE_LANGUAGES=	# empty
PERL5_PACKLIST= auto/Catalyst/Plugin/Session/Store/FastMmap/.packlist

PKG_DESTDIR_SUPPORT=	user-destdir

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
