# $NetBSD: Makefile,v 1.2 2008/10/19 19:18:55 he Exp $

DISTNAME=	PPI-HTML-1.07
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	textproc perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=PPI/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/PPI-HTML/
COMMENT=	Perl 5 module to generate syntax-hightlighted HTML for Perl

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LANGUAGES=	# empty
PERL5_PACKLIST=	auto/PPI/HTML/.packlist

DEPENDS+=	p5-CSS-Tiny>=1.10:../../www/p5-CSS-Tiny
DEPENDS+=	p5-PPI>=0.990:../../devel/p5-PPI
DEPENDS+=	p5-Params-Util>=0.05:../../devel/p5-Params-Util

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
