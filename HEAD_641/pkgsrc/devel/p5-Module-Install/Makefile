# $NetBSD: Makefile,v 1.15 2009/05/28 22:44:05 sno Exp $

DISTNAME=	Module-Install-0.91
PKGNAME=	p5-${DISTNAME}
SVR4_PKGNAME=	p5moi
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Module/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Module-Install/
COMMENT=	Perl5 module for building and installing Perl modules
LICENSE=	gnu-gpl-v2 # OR artistic

DEPENDS+=	p5-Archive-Tar>=1.44:../../archivers/p5-Archive-Tar
DEPENDS+=	p5-Devel-PPPort>=3.16:../../devel/p5-Devel-PPPort
DEPENDS+=	p5-ExtUtils-Install>=1.52:../../devel/p5-ExtUtils-Install
DEPENDS+=	p5-ExtUtils-ParseXS>=2.19:../../devel/p5-ExtUtils-ParseXS
DEPENDS+=	p5-File-Remove>=1.42:../../sysutils/p5-File-Remove
DEPENDS+=	p5-Module-Build>=0.2808:../../devel/p5-Module-Build
DEPENDS+=	p5-Module-CoreList>=2.17:../../devel/p5-Module-CoreList
DEPENDS+=	p5-Module-ScanDeps>=0.89:../../devel/p5-Module-ScanDeps
DEPENDS+=	p5-PAR-Dist>=0.29:../../devel/p5-PAR-Dist
DEPENDS+=	p5-PathTools>=3.28:../../devel/p5-PathTools
DEPENDS+=	p5-Parse-CPAN-Meta>=1.39:../../devel/p5-Parse-CPAN-Meta
DEPENDS+=	p5-YAML-Tiny>=1.38:../../textproc/p5-YAML-Tiny

PERL5_PACKLIST=		auto/Module/Install/.packlist

PKG_DESTDIR_SUPPORT=	user-destdir

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
