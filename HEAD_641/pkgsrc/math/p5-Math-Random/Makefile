# $NetBSD: Makefile,v 1.8 2009/02/22 16:21:11 wiz Exp $
#

DISTNAME=	Math-Random-0.71
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	math perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Math/}

MAINTAINER=	imil@gcu.info
HOMEPAGE=	http://search.cpan.org/dist/Math-Random/
COMMENT=	Random number generators

PKG_DESTDIR_SUPPORT=	user-destdir

PERL5_PACKLIST=	auto/Math/Random/.packlist

REPLACE_PERL=	example.pl

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
