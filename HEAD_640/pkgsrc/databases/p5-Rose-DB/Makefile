# $NetBSD: Makefile,v 1.4 2008/10/19 19:17:45 he Exp $

DISTNAME=	Rose-DB-0.744
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	databases perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Rose/}

MAINTAINER=	abs@absd.org
HOMEPAGE=	http://search.cpan.org/~jsiracusa/Rose-DB/
COMMENT=	DBI wrapper and abstraction layer

DEPENDS+= p5-Bit-Vector>=6.4:../../devel/p5-Bit-Vector
DEPENDS+= p5-Clone-PP-[0-9]*:../../devel/p5-Clone-PP
DEPENDS+= p5-DBI-[0-9]*:../../databases/p5-DBI
DEPENDS+= p5-DateTime-Format-MySQL-[0-9]*:../../time/p5-DateTime-Format-MySQL
DEPENDS+= p5-DateTime-Format-Pg>=0.11:../../time/p5-DateTime-Format-Pg
DEPENDS+= p5-Rose-DateTime>=0.532:../../time/p5-Rose-DateTime
DEPENDS+= p5-Rose-Object>=0.82:../../devel/p5-Rose-Object
DEPENDS+= p5-SQL-ReservedWords-[0-9]*:../../databases/p5-SQL-ReservedWords
DEPENDS+= p5-Time-Clock-[0-9]*:../../time/p5-Time-Clock
DEPENDS+= p5-YAML-Syck-[0-9]*:../../textproc/p5-YAML-Syck

USE_LANGUAGES=	# empty
PERL5_PACKLIST= auto/Rose/DB/.packlist

PKG_DESTDIR_SUPPORT=	user-destdir

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
