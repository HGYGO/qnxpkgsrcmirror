# $NetBSD: Makefile,v 1.4 2009/04/04 12:41:13 he Exp $
#

DISTNAME=	Net-LDAP-Batch-0.02
PKGREVISION=	1
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	databases devel net perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Net/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Net-LDAP-Batch/
COMMENT=	Perl 5 module to perform a batch of LDAP actions

DEPENDS+=	p5-Class-Accessor-[0-9]*:../../devel/p5-Class-Accessor
DEPENDS+=	p5-perl-ldap-[0-9]*:../../databases/p5-perl-ldap
BUILD_DEPENDS+=	p5-Net-LDAP-Server-Test>=0.4:../../devel/p5-Net-LDAP-Server-Test

USE_LANGUAGES=		# empty
PKG_DESTDIR_SUPPORT=	user-destdir

PERL5_PACKLIST=	auto/Net/LDAP/Batch/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
