# $NetBSD: Makefile,v 1.4 2007/05/17 16:50:14 heinz Exp $
#

DISTNAME=		IP-Country-2.23
PKGNAME=		p5-${DISTNAME}
SVR4_PKGNAME=		p5icy
CATEGORIES=		net perl5
MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=IP/}

MAINTAINER=		heinz@NetBSD.org
HOMEPAGE=		http://search.cpan.org/dist/IP-Country/
COMMENT=		Fast lookup of country codes from IP addresses

PKG_DESTDIR_SUPPORT=	user-destdir
PKG_INSTALLATION_TYPES=	overwrite pkgviews

USE_LANGUAGES=		# empty
PERL5_PACKLIST=		auto/IP/Country/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
