# $NetBSD: Makefile,v 1.8 2008/10/19 19:19:02 he Exp $
#

DISTNAME=		Apache-Reload-0.10
PKGNAME=		p5-${DISTNAME}
PKGREVISION=		1
SVR4_PKGNAME=		p5arl
CATEGORIES=		www perl5
MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Apache/}

HOMEPAGE=		http://search.cpan.org/dist/Apache-Reload/
MAINTAINER=		pkgsrc-users@NetBSD.org
COMMENT=		Perl5 module to reload changed modules

PKG_INSTALLATION_TYPES=	overwrite pkgviews
PKG_DESTDIR_SUPPORT=	user-destdir

.include "../../mk/apache.mk"

.if (${PKG_APACHE} == "apache13")
PERL5_PACKLIST=		auto/Apache/Reload/.packlist
.else
PERL5_PACKLIST=		auto/Apache2/Reload/.packlist
.endif

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
