# $NetBSD: Makefile,v 1.8 2013/05/31 12:40:40 wiz Exp $
#

DISTNAME=	Proc-InvokeEditor-1.04
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	4
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=../../authors/id/M/MS/MSTEVENS/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Proc-InvokeEditor/
COMMENT=	Perl 5 module for starting a text editor

USE_LANGUAGES=	# empty
PERL5_PACKLIST=	auto/Proc/InvokeEditor/.packlist

DEPENDS+=	p5-Carp-Assert>=0.11:../../devel/p5-Carp-Assert

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
