# $NetBSD: Makefile,v 1.13 2008/07/14 12:56:14 joerg Exp $

DISTNAME=	webunit-${VERSION}
PKGNAME=	${RUBY_PKGPREFIX}-${DISTNAME}
PKGREVISION=	3
CATEGORIES=	www textproc ruby
MASTER_SITES=	http://www.xpenguin.biz/download/webunit/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.xpenguin.biz/download/webunit/index-en.html
COMMENT=	HTTP unit testing framework for Ruby

PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+= ${RUBY_PKGPREFIX}-html-parser>=19990912p1:../../textproc/ruby-html-parser
DEPENDS+= ${RUBY_PKGPREFIX}-htmlsplit>=1.0.2:../../www/ruby-htmlsplit

USE_TOOLS=	pax
USE_RUBY_SETUP=	yes
RUBY_SETUP=	install.rb
WRKSRC=		${WRKDIR}/webunit
VERSION=	20040429++

CONFIGURE_ARGS=	--site-ruby=${PREFIX}/${RUBY_VENDORLIB} \
		--so-dir=${PREFIX}/${RUBY_VENDORARCHLIB}

pre-patch:
	cd ${WRKSRC}/lib; \
		${RM} formatter.rb html-parser.rb sgml-parser.rb htmlsplit.rb

post-install:
	cd ${WRKSRC}/doc; ${PAX} -rw . ${DESTDIR}${PREFIX}/${RUBY_DOC}/webunit
	cd ${WRKSRC}/sample; ${PAX} -rw . ${DESTDIR}${PREFIX}/${RUBY_EG}/webunit

.include "../../lang/ruby/modules.mk"
.include "../../mk/bsd.pkg.mk"
