# $NetBSD: Makefile,v 1.19 2008/10/19 19:18:32 he Exp $

DISTNAME=	Net-TFTP-0.17
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
SVR4_PKGNAME=	p5ntf
CATEGORIES=	net perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Net/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/~gbarr/Net-TFTP-0.17/
COMMENT=	Perl5 module for TFTP transfers

PKG_DESTDIR_SUPPORT=	user-destdir

PERL5_PACKLIST=		auto/Net/TFTP/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
