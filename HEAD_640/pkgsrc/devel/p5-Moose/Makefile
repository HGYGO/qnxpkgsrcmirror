# $NetBSD: Makefile,v 1.14 2009/02/07 11:03:00 seb Exp $
#

DISTNAME=	Moose-0.68
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Test/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://moose.perl.org/
COMMENT=	Postmodern object system for Perl 5

DEPENDS+=	p5-Class-MOP>=0.76:../../devel/p5-Class-MOP
DEPENDS+=	p5-List-MoreUtils>=0.12:../../devel/p5-List-MoreUtils
DEPENDS+=	p5-Sub-Exporter>=0.972:../../devel/p5-Sub-Exporter
DEPENDS+=	p5-Task-Weaken-[0-9]*:../../devel/p5-Task-Weaken

BUILD_DEPENDS+=	p5-DBM-Deep-[0-9]*:../../databases/p5-DBM-Deep
BUILD_DEPENDS+=	p5-DateTime-Format-MySQL-[0-9]*:../../time/p5-DateTime-Format-MySQL
BUILD_DEPENDS+=	p5-Declare-Constraints-Simple-[0-9]*:../../devel/p5-Declare-Constraints-Simple
BUILD_DEPENDS+=	p5-IO-String-[0-9]*:../../devel/p5-IO-String
BUILD_DEPENDS+=	p5-Locale-US-[0-9]*:../../misc/p5-Locale-US
BUILD_DEPENDS+=	p5-Module-Refresh-[0-9]*:../../devel/p5-Module-Refresh
BUILD_DEPENDS+=	p5-Params-Coerce-[0-9]*:../../devel/p5-Params-Coerce
BUILD_DEPENDS+=	p5-Regexp-Common-[0-9]*:../../textproc/p5-Regexp-Common
BUILD_DEPENDS+=	p5-Test-Deep-[0-9]*:../../devel/p5-Test-Deep
BUILD_DEPENDS+=	p5-Test-Exception>=0.21:../../devel/p5-Test-Exception
BUILD_DEPENDS+=	p5-Test-Output-[0-9]*:../../devel/p5-Test-Output
BUILD_DEPENDS+=	p5-Test-Pod-Coverage-[0-9]*:../../devel/p5-Test-Pod-Coverage
BUILD_DEPENDS+=	p5-Test-Pod-[0-9]*:../../devel/p5-Test-Pod
BUILD_DEPENDS+=	p5-Test-Warn-[0-9]*:../../devel/p5-Test-Warn
BUILD_DEPENDS+=	p5-URI-[0-9]*:../../www/p5-URI
BUILD_DEPENDS+=	p5-libwww-[0-9]*:../../www/p5-libwww

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LANGUAGES=	# empty
PERL5_PACKLIST=	auto/Moose/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
