# $NetBSD: Makefile,v 1.1.1.1 2009/02/01 09:04:02 seb Exp $
#

DISTNAME=	Spreadsheet-ReadSXC-0.20
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	math perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Spreadsheet/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Spreadsheet-ReadSXC/
COMMENT=	Perl 5 module to extract OpenOffice 1.x spreadsheet data

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LANGUAGES=		# empty
PERL5_PACKLIST=		auto/Spreadsheet/ReadSXC/.packlist

DEPENDS+=	p5-Archive-Zip-[0-9]*:../../archivers/p5-Archive-Zip
DEPENDS+=	p5-XML-Parser-[0-9]*:../../textproc/p5-XML-Parser

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
