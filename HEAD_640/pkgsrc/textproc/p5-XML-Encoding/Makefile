# $NetBSD: Makefile,v 1.14 2008/10/19 19:18:58 he Exp $

DISTNAME=	XML-Encoding-2.05
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	textproc perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=XML/}


MAINTAINER=	rhaen@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/XML-Encoding/
COMMENT=	Perl module for parsing XML encoding maps

DEPENDS+=	p5-XML-Parser>=2.18:../../textproc/p5-XML-Parser
PKG_DESTDIR_SUPPORT=	user-destdir

PERL5_PACKLIST=	auto/XML/Encoding/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
