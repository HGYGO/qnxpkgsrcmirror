# $NetBSD: Makefile,v 1.5 2007/01/13 21:24:58 abs Exp $

DISTNAME=	Mail-Box-2.066
PKGREVISION=	1
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	mail perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Mail/}

MAINTAINER=	adrianp@NetBSD.org
HOMEPAGE=	http://perl.overmeer.net/mailbox/
COMMENT=	Set of packages which implement methods to handle e-mail

DEPENDS+=	p5-TimeDate-[0-9]*:../../time/p5-TimeDate
DEPENDS+=	p5-IO-stringy-[0-9]*:../../devel/p5-IO-stringy
DEPENDS+=	p5-Scalar-List-Utils>=1.13:../../devel/p5-Scalar-List-Utils
DEPENDS+=	p5-Object-Realize-Later>=0.14:../../devel/p5-Object-Realize-Later
DEPENDS+=	p5-MIME-Types>=1.004:../../mail/p5-MIME-Types
DEPENDS+=	p5-URI>=1.23:../../www/p5-URI
DEPENDS+=	p5-Test-Simple>=0.47:../../devel/p5-Test-Simple
DEPENDS+=	p5-User-Identity>=0.07:../../mail/p5-User-Identity
DEPENDS+=	p5-MailTools-[0-9]*:../../mail/p5-MailTools
DEPENDS+=	p5-MIME-tools-[0-9]*:../../mail/p5-MIME-tools
DEPENDS+=	p5-Digest-HMAC-[0-9]*:../../security/p5-Digest-HMAC
DEPENDS+=	p5-File-Remove-[0-9]*:../../sysutils/p5-File-Remove
DEPENDS+=	p5-Test-Harness>=2.62:../../devel/p5-Test-Harness

PKG_INSTALLATION_TYPES=	overwrite pkgviews

PERL5_PACKLIST=	auto/Mail/Box/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
