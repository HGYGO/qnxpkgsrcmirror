# $NetBSD: Makefile,v 1.3 2007/11/11 11:35:49 martti Exp $
#

DISTNAME=	enum-1.016
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=enum/}

MAINTAINER=	rillig@NetBSD.org
HOMEPAGE=	http://search.cpan.org/~zenin/${DISTNAME}/enum.pm
COMMENT=	Enumerations for Perl
#LICENSE=	gnu-gpl-v2

PKG_DESTDIR_SUPPORT=	user-destdir

PERL5_PACKLIST=	auto/enum/.packlist
USE_LANGUAGES=	# none

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
