# $NetBSD: Makefile,v 1.1.1.1 2009/03/21 14:00:56 sno Exp $

DISTNAME=	IPC-SysV-2.01
PKGNAME=	p5-${DISTNAME:S/_/beta/}
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=../../authors/id/M/MH/MHX/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/IPC-SysV/
COMMENT=	Perl module which defines+exports SysV IPC constants and system calls

PKG_INSTALLATION_TYPES=	overwrite pkgviews
PKG_DESTDIR_SUPPORT=	user-destdir

USE_LANGUAGES=		c
PERL5_PACKLIST=		auto/IPC/SysV/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
