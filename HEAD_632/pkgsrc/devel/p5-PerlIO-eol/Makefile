# $NetBSD: Makefile,v 1.6 2006/03/04 21:29:23 jlam Exp $

DISTNAME=	PerlIO-eol-0.13
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	2
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=PerlIO/}

MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	Perl module for normalizing line endings

PKG_INSTALLATION_TYPES=	overwrite pkgviews

PERL5_PACKLIST=		auto/PerlIO/eol/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
