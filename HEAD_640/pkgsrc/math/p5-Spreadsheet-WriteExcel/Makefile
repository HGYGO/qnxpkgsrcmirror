# $NetBSD: Makefile,v 1.20 2008/11/18 06:11:01 he Exp $
#

DISTNAME=	Spreadsheet-WriteExcel-2.25
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	math perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Spreadsheet/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Spreadsheet-WriteExcel/
COMMENT=	Create Excel data files

PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=	p5-Parse-RecDescent-[0-9]*:../../devel/p5-Parse-RecDescent
DEPENDS+=	p5-OLE-Storage_Lite>=0.14:../../devel/p5-OLE-Storage_Lite

USE_LANGUAGES=	# empty
PERL5_PACKLIST=	auto/Spreadsheet/WriteExcel/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
