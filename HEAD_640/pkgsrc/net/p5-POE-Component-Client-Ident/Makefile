# $NetBSD: Makefile,v 1.6 2008/10/19 19:18:43 he Exp $
#

DISTNAME=	POE-Component-Client-Ident-1.14
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	net perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=POE/}

MAINTAINER=	adrianp@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/POE-Component-Client-Ident/
COMMENT=	Non-blocking ident lookups to your sessions

DEPENDS+=	p5-POE-[0-9]*:../../devel/p5-POE
BUILD_DEPENDS+=	p5-Test-POE-Server-TCP-[0-9]*:../../devel/p5-Test-POE-Server-TCP

PKG_INSTALLATION_TYPES=	overwrite pkgviews
PKG_DESTDIR_SUPPORT=	user-destdir

PERL5_PACKLIST=		auto/POE/Component/Client/Ident/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
