# $NetBSD: Makefile,v 1.2 2008/10/19 19:17:48 he Exp $

DISTNAME=	Class-C3-Componentised-1.0003
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=../../authors/id/A/AS/ASH/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/perldoc?Class::C3::Componentised
COMMENT=	Load mix-ins or components to your C3-based class

DEPENDS+=	p5-Class-C3>=0:../../devel/p5-Class-C3
DEPENDS+=	p5-Class-Inspector>=0:../../devel/p5-Class-Inspector

USE_LANGUAGES=	# empty
PERL5_PACKLIST=	auto/Class/C3/Componentised/.packlist

PKG_DESTDIR_SUPPORT=    user-destdir

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
