# $NetBSD: Makefile,v 1.5 2007/06/08 08:42:27 wiz Exp $

DISTNAME=	Text-Glob-0.08
PKGNAME=	p5-${DISTNAME}
SVR4_PKGNAME=	p5tgl

CATEGORIES=	textproc perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Text/}

MAINTAINER=	hiramatu@boreas.dti.ne.jp
HOMEPAGE=	http://search.cpan.org/dist/Text-Glob/
COMMENT=	Match globbing patterns against text

PKG_INSTALLATION_TYPES=	overwrite pkgviews

PERL5_PACKLIST=		auto/Text/Glob/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
