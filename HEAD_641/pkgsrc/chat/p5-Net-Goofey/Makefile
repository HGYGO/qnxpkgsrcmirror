# $NetBSD: Makefile,v 1.13 2008/10/19 19:17:41 he Exp $
#

DISTNAME=	Net-Goofey-1.5
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	3
CATEGORIES=	chat perl5
MASTER_SITES=	http://notdoneliving.net/code/Net-Goofey/

MAINTAINER=	grant@NetBSD.org
HOMEPAGE=	http://notdoneliving.net/code/
COMMENT=	Perl module for communicating with a Goofey server

PKG_DESTDIR_SUPPORT=	user-destdir

PERL5_PACKLIST=		auto/Net/Goofey/.packlist

# Requires the user to enter a username/password
INTERACTIVE_STAGE=	test

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
