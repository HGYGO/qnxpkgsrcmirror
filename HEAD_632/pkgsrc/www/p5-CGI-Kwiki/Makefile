# $NetBSD: Makefile,v 1.8 2007/02/22 19:27:21 wiz Exp $
#

DISTNAME=	CGI-Kwiki-0.18
PKGNAME=	p5-${DISTNAME}
SVR4_PKGNAME=		p5ckw
PKGREVISION=		2
CATEGORIES=		www perl5
MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=CGI/}

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://www.kwiki.org/
COMMENT=		Quickie Wiki that's not too Tricky

DEPENDS+=		p5-Test-Simple>=0.47:../../devel/p5-Test-Simple
DEPENDS+=		p5-Locale-Maketext>=1.08:../../misc/p5-Locale-Maketext

PERL5_PACKLIST=		auto/CGI-Kwiki/.packlist

.include "../../mk/bsd.prefs.mk"

post-patch:
	@${FIND} ${WRKSRC} -name '*.orig' -print | ${XARGS} ${RM} -f

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
