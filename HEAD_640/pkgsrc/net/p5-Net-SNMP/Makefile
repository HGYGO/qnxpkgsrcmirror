# $NetBSD: Makefile,v 1.24 2008/10/19 19:18:32 he Exp $
#

DISTNAME=	Net-SNMP-5.2.0
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
SVR4_PKGNAME=	p5nsn
CATEGORIES=	net perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Net/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Net-SNMP/
COMMENT=	Perl5 module for SNMP queries

PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=	p5-Crypt-DES>=2.03:../../security/p5-Crypt-DES
DEPENDS+=	p5-Digest-MD5>=2.11:../../security/p5-Digest-MD5
DEPENDS+=	p5-Digest-SHA1>=1.02:../../security/p5-Digest-SHA1
DEPENDS+=	p5-Digest-HMAC>=1.00:../../security/p5-Digest-HMAC

USE_LANGUAGES=		# none

PERL5_PACKLIST=		auto/Net/SNMP/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
