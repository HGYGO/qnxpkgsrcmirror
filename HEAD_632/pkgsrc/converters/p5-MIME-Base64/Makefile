# $NetBSD: Makefile,v 1.37 2007/11/11 11:35:48 martti Exp $
#

VERS=			3.07
DISTNAME=		MIME-Base64-${VERS}
PKGNAME=		p5-MIME-Base64-${VERS}
SVR4_PKGNAME=		p5mba
CATEGORIES=		converters perl5
MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=MIME/}

MAINTAINER=		heinz@NetBSD.org
HOMEPAGE=		http://search.cpan.org/dist/MIME-Base64/
COMMENT=		Perl5 module for Base64 and Quoted-Printable encodings
#LICENSE=		gnu-gpl-v2

PKG_INSTALLATION_TYPES=	overwrite pkgviews
PKG_DESTDIR_SUPPORT=	user-destdir

PERL5_PACKLIST=		auto/MIME/Base64/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
