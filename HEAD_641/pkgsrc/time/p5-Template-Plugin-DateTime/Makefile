# $NetBSD: Makefile,v 1.1.1.1 2009/07/08 12:53:53 sno Exp $
#

DISTNAME=	Template-Plugin-DateTime-0.06001
PKGNAME=	p5-${DISTNAME:S/06001/06.001/}
CATEGORIES=	textproc perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Template/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Template-Plugin-DateTime/
COMMENT=	A Template Plugin To Use DateTime Objects
LICENSE=	${PERL5_LICENSE}

PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=	p5-DateTime-[0-9]*:../../time/p5-DateTime
DEPENDS+=	p5-DateTime-Format-Strptime-[0-9]*:../../time/p5-DateTime-Format-Strptime
DEPENDS+=	p5-Template-Toolkit>=2:../../www/p5-Template-Toolkit

PERL5_PACKLIST=		auto/Template/Plugin/DateTime/.packlist
PERL5_BUILD_TYPE=	Module::Install

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
