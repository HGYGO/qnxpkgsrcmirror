# $NetBSD: Makefile,v 1.3 2007/02/22 19:27:16 wiz Exp $

DISTNAME=	Text-WrapI18N-0.06
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Text/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Text-WrapI18N/
COMMENT=	Perl5 module to wrap internationalized text

DEPENDS+=	p5-Text-CharWidth-[0-9]*:../../textproc/p5-Text-CharWidth

PERL5_PACKLIST=		auto/Text/WrapI18N/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
