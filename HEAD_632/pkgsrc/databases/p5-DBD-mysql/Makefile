# $NetBSD: Makefile,v 1.35 2006/04/06 06:21:41 reed Exp $
#

DISTNAME=		DBD-mysql-3.0002
PKGNAME=		p5-${DISTNAME}
PKGREVISION=		1
SVR4_PKGNAME=		p5dmy
CATEGORIES=		databases perl5
MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=DBD/}

MAINTAINER=		bad@NetBSD.org
HOMEPAGE=		http://www.mysql.com/
COMMENT=		Perl DBI/DBD driver for MySQL databases

DEPENDS+=		p5-Data-ShowTable>=3.3:../../devel/p5-Data-ShowTable

BUILDLINK_API_DEPENDS.mysql-client?=	mysql-client>=3.23.49nb1

PERL5_PACKLIST=		auto/DBD/mysql/.packlist

MAKE_PARAMS+=		--nocatchstderr

.include "../../mk/mysql.buildlink3.mk"
.include "../../databases/p5-DBI/buildlink3.mk"
.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
