# $NetBSD: Makefile,v 1.21 2007/01/30 23:39:50 joerg Exp $
#

DISTNAME=	Image-Imlib2-1.04
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	3
SVR4_PKGNAME=	p5im2
CATEGORIES=	graphics perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Image/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://theory.uwinnipeg.ca/CPAN/data/Image-Imlib2/
COMMENT=	Interface to the Imlib2 image library

# versions before that contained a broken imlib2-config
BUILDLINK_API_DEPENDS.imlib2+=	imlib2>=1.2.0nb2

PERL5_MODULE_TYPE=	Module::Build

PERL5_PACKLIST=		auto/Image/Imlib2/.packlist

.include "../../graphics/imlib2/buildlink3.mk"
.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
