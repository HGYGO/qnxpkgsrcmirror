# $NetBSD: Makefile,v 1.6 2008/12/17 00:13:42 he Exp $

DISTNAME=	CatalystX-CRUD-Model-RDBO-0.19
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	databases perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=CatalystX/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/CatalystX-CRUD-Model-RDBO/
COMMENT=	Rose::DB::Object CRUD

DEPENDS+=	p5-Data-Dump>=0:../../devel/p5-Data-Dump
DEPENDS+=	p5-Rose-DB-Object>=0:../../databases/p5-Rose-DB-Object
DEPENDS+=	p5-CatalystX-CRUD>=0.29:../../databases/p5-CatalystX-CRUD
DEPENDS+=	p5-Catalyst-Runtime>=0:../../www/p5-Catalyst-Runtime
DEPENDS+=	p5-Rose-DBx-TestDB>=0:../../databases/p5-Rose-DBx-TestDB
DEPENDS+=	p5-Rose-DBx-Object-MoreHelpers>=0:../../databases/p5-Rose-DBx-Object-MoreHelpers

USE_LANGUAGES=	# empty
PERL5_PACKLIST=	auto/CatalystX/CRUD/Model/RDBO/.packlist

PKG_DESTDIR_SUPPORT=    user-destdir

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
