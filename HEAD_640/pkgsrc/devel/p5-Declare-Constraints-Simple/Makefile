# $NetBSD: Makefile,v 1.2 2008/10/19 19:17:51 he Exp $
#

DISTNAME=	Declare-Constraints-Simple-0.03
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=../../authors/id/P/PH/PHAYLON/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Declare-Constraints-Simple/
COMMENT=	Perl 5 module for declarative validation of data structures

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LANGUAGES=	# empty
PERL5_PACKLIST=	auto/Declare/Constraints/Simple/.packlist

DEPENDS+=	p5-Carp-Clan-[0-9]*:../../devel/p5-Carp-Clan
DEPENDS+=	p5-Class-Inspector-[0-9]*:../../devel/p5-Class-Inspector
DEPENDS+=	p5-aliased-[0-9]*:../../devel/p5-aliased

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
