# $NetBSD: Makefile,v 1.17 2007/02/22 19:26:42 wiz Exp $
#

DISTNAME=	Mail-IMAPClient-2.2.9
PKGNAME=	p5-${DISTNAME}
SVR4_PKGNAME=	p5mic
PKGREVISION=	2
CATEGORIES=	mail perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Mail/}

MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	Perl5 module for talking to RFC-2060 IMAP servers

PERL5_PACKLIST=		auto/Mail/IMAPClient/.packlist

pre-configure:
	@cd ${WRKSRC} && ${TOUCH} ${TOUCH_FLAGS} test.txt

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
