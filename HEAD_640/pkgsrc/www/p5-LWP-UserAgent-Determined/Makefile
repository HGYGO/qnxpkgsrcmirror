# $NetBSD: Makefile,v 1.2 2008/10/19 19:19:17 he Exp $
#

DISTNAME=	LWP-UserAgent-Determined-1.03
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
SVR4_PKGNAME=	p5lud
CATEGORIES=	www net perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=LWP/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/LWP-UserAgent-Determined/
COMMENT=	Perl5 virtual browser that retries errors

PKG_INSTALLATION_TYPES=	overwrite pkgviews
PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=	p5-libwww-[0-9]*:../../www/p5-libwww

USE_LANGUAGES=		# empty
PERL5_PACKLIST=		auto/LWP/UserAgent/Determined/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
