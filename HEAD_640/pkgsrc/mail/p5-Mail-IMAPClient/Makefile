# $NetBSD: Makefile,v 1.23 2009/01/05 13:39:03 he Exp $
#

DISTNAME=	Mail-IMAPClient-3.12
PKGNAME=	p5-${DISTNAME}
SVR4_PKGNAME=	p5mic
CATEGORIES=	mail perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Mail/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Mail-IMAPClient/
COMMENT=	Perl5 module for talking to RFC-2060 IMAP servers

PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=	p5-Digest-HMAC-[0-9]*:../../security/p5-Digest-HMAC
DEPENDS+=	p5-File-Temp>=0.18:../../devel/p5-File-Temp
DEPENDS+=	p5-Parse-RecDescent>=1.94:../../devel/p5-Parse-RecDescent
DEPENDS+=	p5-Test-Pod-[0-9]*:../../devel/p5-Test-Pod

PERL5_PACKLIST=		auto/Mail/IMAPClient/.packlist

pre-configure:
	@cd ${WRKSRC} && ${TOUCH} ${TOUCH_FLAGS} test.txt

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
