# $NetBSD: Makefile,v 1.4 2009/01/11 18:44:51 he Exp $

DISTNAME=	Catalyst-Plugin-ConfigLoader-0.22
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Catalyst/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Catalyst-Plugin-ConfigLoader/
COMMENT=	Load Catalyst config from YAML file

DEPENDS+=	p5-Catalyst-Runtime>=5.7008:../../www/p5-Catalyst-Runtime
DEPENDS+=	p5-Data-Visitor>=0.02:../../devel/p5-Data-Visitor
DEPENDS+=	p5-Config-Any>=0.08:../../devel/p5-Config-Any
DEPENDS+=	p5-MRO-Compat>=0.09:../../devel/p5-MRO-Compat

USE_LANGUAGES=	# empty
PERL5_PACKLIST= auto/Catalyst/Plugin/ConfigLoader/.packlist

PKG_DESTDIR_SUPPORT=	user-destdir

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
