# $NetBSD: Makefile,v 1.11 2008/11/25 10:36:58 kleink Exp $

DISTNAME=	XML-Atom-0.32
PKGNAME=	p5-${DISTNAME}
SVR4_PKGNAME=	p5xat
CATEGORIES=	textproc perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=XML/}

MAINTAINER=	kleink@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/XML-Atom/
COMMENT=	Atom feed and API implementation

PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=	p5-Class-Data-Inheritable-[0-9]*:../../devel/p5-Class-Data-Inheritable
DEPENDS+=	p5-XML-LibXML>=1.64:../../textproc/p5-XML-LibXML
DEPENDS+=	p5-MIME-Base64-[0-9]*:../../converters/p5-MIME-Base64
DEPENDS+=	p5-XML-XPath-[0-9]*:../../textproc/p5-XML-XPath

# Client/Server for Atom API
DEPENDS+=	p5-libwww-[0-9]*:../../www/p5-libwww
DEPENDS+=	p5-LWP-Authen-Wsse-[0-9]*:../../www/p5-LWP-Authen-Wsse
DEPENDS+=	p5-Digest-SHA1-[0-9]*:../../security/p5-Digest-SHA1
DEPENDS+=	p5-DateTime-[0-9]*:../../time/p5-DateTime

# Feed and API Auto-discovery
DEPENDS+=	p5-HTML-Parser-[0-9]*:../../www/p5-HTML-Parser

PERL5_PACKLIST=		auto/XML/Atom/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
