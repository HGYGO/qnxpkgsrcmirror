# $NetBSD: Makefile,v 1.2 2009/08/09 13:06:46 sno Exp $
#

DISTNAME=	HTTP-Response-Encoding-0.06
PKGNAME=	p5-${DISTNAME}
SVR4_PKGNAME=	p5hre
CATEGORIES=	www net perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=HTTP/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/HTTP-Response-Encoding/
COMMENT=	Perl5 module to add encoding() to HTTP::Response
LICENSE=	${PERL5_LICENSE}

DEPENDS+=	p5-libwww>=0:../../www/p5-libwww

PKG_INSTALLATION_TYPES=	overwrite pkgviews
PKG_DESTDIR_SUPPORT=	user-destdir

USE_LANGUAGES=		# empty
PERL5_PACKLIST=		auto/HTTP/Response/Encoding/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
