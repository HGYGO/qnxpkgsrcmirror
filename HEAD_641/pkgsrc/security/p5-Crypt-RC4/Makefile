# $NetBSD: Makefile,v 1.4 2008/10/19 19:18:45 he Exp $
#

DISTNAME=	Crypt-RC4-2.02
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	security perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Crypt/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Crypt-RC4/
COMMENT=	Perl5 module for the "alleged" RC4 encryption algorithm

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LANGUAGES=	# empty
PERL5_PACKLIST=	auto/Crypt/RC4/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
