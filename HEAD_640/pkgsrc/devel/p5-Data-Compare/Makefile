# $NetBSD: Makefile,v 1.3 2008/10/30 21:41:47 he Exp $

DISTNAME=	Data-Compare-1.21
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Data/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Data-Compare/
COMMENT=	Perl5 module comparing arbitrary data structures

DEPENDS+=	p5-File-Find-Rule>=0.10:../../devel/p5-File-Find-Rule

PERL5_PACKLIST=	auto/Data/Compare/.packlist

PKG_DESTDIR_SUPPORT=	user-destdir

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
