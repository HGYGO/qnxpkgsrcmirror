# $NetBSD: Makefile,v 1.7 2006/03/04 21:30:22 jlam Exp $
#

DISTNAME=	Net-Telnet-Cisco-1.10
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	2
CATEGORIES=	net perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Net/}

MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	Perl5 module for communicating with Cisco routers via telnet

PERL5_PACKLIST=		auto/Net/Telnet/Cisco/.packlist

DEPENDS+=		p5-Net-Telnet>=3.0:../../net/p5-Net-Telnet
DEPENDS+=		p5-Term-ReadKey>=2.0:../../devel/p5-Term-ReadKey
DEPENDS+=		p5-Test-Simple>=0.4:../../devel/p5-Test-Simple

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
