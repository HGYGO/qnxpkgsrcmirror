# $NetBSD: Makefile,v 1.11 2008/10/19 19:18:22 he Exp $
#

DISTNAME=		Geography-Countries-1.4
PKGNAME=		p5-${DISTNAME}
PKGREVISION=		3
SVR4_PKGNAME=		p5gcn
CATEGORIES=		misc perl5
MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Geography/}

MAINTAINER=		gson@NetBSD.org
HOMEPAGE=		http://search.cpan.org/dist/Geography-Countries/
COMMENT=		Perl5 module for mapping contry names and codes

PKG_INSTALLATION_TYPES=	overwrite pkgviews
PKG_DESTDIR_SUPPORT=	user-destdir

USE_LANGUAGES=		# empty
PERL5_PACKLIST=		auto/Geography/Countries/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
