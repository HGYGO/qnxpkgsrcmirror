# $NetBSD: Makefile,v 1.4 2008/07/14 12:56:08 joerg Exp $

DISTNAME=	rb-gsl-1.10.3
PKGNAME=	${RUBY_PKGPREFIX}-${DISTNAME}
CATEGORIES=	math ruby
MASTER_SITES=	http://rubyforge.org/frs/download.php/28909/

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	http://rb-gsl.rubyforge.org/
COMMENT=	Ruby interface to the GNU Scientific Library

PKG_DESTDIR_SUPPORT=	user-destdir

USE_RUBY_SETUP=	yes
USE_TOOLS=	pax
CONFIGURE_ARGS+=	--siteruby=${PREFIX}/${RUBY_VENDORLIB_BASE} \
			--siterubyver=${PREFIX}/${RUBY_VENDORLIB} \
			--siterubyverarch=${PREFIX}/${RUBY_VENDORARCHLIB}

REPLACE_RUBY_DIRS=	examples

INSTALLATION_DIRS=	${RUBY_DOC}/gsl ${RUBY_EG}/gsl

.include "../../lang/ruby/modules.mk"
.include "../../math/gsl/buildlink3.mk"

post-patch:
	cd ${WRKSRC} && \
		chmod u+w include/rb_gsl_config.h

post-install:
	${INSTALL_DATA} ${WRKSRC}/README ${DESTDIR}${PREFIX}/${RUBY_DOC}/gsl
	${INSTALL_DATA} ${WRKSRC}/html/*.html ${DESTDIR}${PREFIX}/${RUBY_DOC}/gsl
	cd ${WRKSRC}/examples; ${PAX} -rw . ${DESTDIR}${PREFIX}/${RUBY_EG}/gsl
	${CHOWN} -R ${SHAREOWN}:${SHAREGRP} ${DESTDIR}${PREFIX}/${RUBY_EG}/gsl

.include "../../mk/bsd.pkg.mk"
