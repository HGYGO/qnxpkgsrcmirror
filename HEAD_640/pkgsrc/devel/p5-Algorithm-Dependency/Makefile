# $NetBSD: Makefile,v 1.10 2008/10/19 19:17:46 he Exp $

DISTNAME=	Algorithm-Dependency-1.106
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Algorithm/}

MAINTAINER=	rhaen@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Algorithm-Dependency/
COMMENT=	Algorithmic framework for implementing dependency tree

DEPENDS+=	p5-Test-ClassAPI>=0.6:../../devel/p5-Test-ClassAPI
DEPENDS+=	p5-Params-Util>=0.06:../../devel/p5-Params-Util

PKG_INSTALLATION_TYPES=	overwrite pkgviews
PKG_DESTDIR_SUPPORT=	user-destdir

PERL5_PACKLIST=		auto/Algorithm/Dependency/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
