# $NetBSD: Makefile,v 1.7 2009/08/09 07:55:42 sno Exp $
#

DISTNAME=	PPI-1.206
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=PPI/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/PPI/
COMMENT=	Perl 5 module to parse, analyze and manipulate Perl (without perl)
LICENSE=	${PERL5_LICENSE}

PKG_DESTDIR_SUPPORT=	user-destdir

# Before update this package, please check $XS_COMPATIBLE in lib/PPI.pm.
# If it is greater than version of devel/p5-PPI-XS, p5-PPI-XS should be updated.
DEPENDS+=	p5-Clone>=0.30:../../devel/p5-Clone
DEPENDS+=	{perl>=5.10,p5-Digest-MD5>=2.35}:../../security/p5-Digest-MD5
DEPENDS+=	p5-IO-String>=1.07:../../devel/p5-IO-String
DEPENDS+=	p5-List-MoreUtils>=0.16:../../devel/p5-List-MoreUtils
DEPENDS+=	p5-Params-Util>=1.00:../../devel/p5-Params-Util
DEPENDS+=	p5-Scalar-List-Utils>=1.20:../../devel/p5-Scalar-List-Utils
DEPENDS+=	p5-Task-Weaken-[0-9]*:../../devel/p5-Task-Weaken

BUILD_DEPENDS+=	p5-Test-ClassAPI>=1.04:../../devel/p5-Test-ClassAPI
BUILD_DEPENDS+=	p5-Test-NoWarnings>=0.084:../../devel/p5-Test-NoWarnings
BUILD_DEPENDS+=	p5-Test-Object>=0.07:../../devel/p5-Test-Object
BUILD_DEPENDS+=	p5-Test-Simple>=0.86:../../devel/p5-Test-Simple
BUILD_DEPENDS+=	p5-Test-SubCalls>=1.07:../../devel/p5-Test-SubCalls

USE_LANGUAGES=	# empty
PERL5_PACKLIST=	auto/PPI/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
