# $NetBSD: Makefile,v 1.9 2007/12/09 22:14:04 rhaen Exp $

DISTNAME=	Devel-Profile-1.05
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Devel/}

MAINTAINER=	rhaen@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Devel-Profile/
COMMENT=	Perl5 module for profiling perl programs

PERL5_PACKLIST=	auto/Devel/Profile/.packlist
PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=	p5-Time-HiRes>=1.20:../../time/p5-Time-HiRes

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
