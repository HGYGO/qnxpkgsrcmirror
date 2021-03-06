# $NetBSD: Makefile,v 1.8 2007/12/13 14:46:58 taca Exp $

DISTNAME=	rails-1.2.6
CATEGORIES=	www
MASTER_SITES=	http://rubyforge.org/frs/download.php/28338/
EXTRACT_SUFX=	.tgz

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	http://www.rubyonrails.org/
COMMENT=	Framework for developing database-backed web applications

DEPENDS+=	${RUBY_PKGPREFIX}-activesupport>=1.4.4:../../devel/ruby-activesupport
DEPENDS+=	${RUBY_PKGPREFIX}-activerecord>=1.15.5:../../databases/ruby-activerecord
DEPENDS+=	${RUBY_PKGPREFIX}-actionpack>=1.13.5:../../www/ruby-actionpack
DEPENDS+=	${RUBY_PKGPREFIX}-actionmailer>=1.3.5:../../mail/ruby-actionmailer
DEPENDS+=	${RUBY_PKGPREFIX}-actionwebservice>=1.2.5:../../www/ruby-actionwebservice

NO_BUILD=	yes
WRKSRC=		${WRKDIR}/rails/vendor/rails/railties

REPLACE_RUBY_DIRS=	${WRKSRC}/bin ${WRKSRC}/dispatches	\
			${WRKSRC}/lib/commands/ncgi
REPLACE_RUBY_PAT=	*

SUBST_CLASSES+=		paths
SUBST_MESSAGE.paths=	Fixing hardcoded paths.
SUBST_STAGE.paths=	pre-configure
SUBST_FILES.paths=	lib/rails_generator/generators/applications/app/app_generator.rb
SUBST_SED.paths=	-e 's,:source =>.*,:source => "${PREFIX}/share/rails",g'

INSTALLATION_DIRS=	bin

.include "../../lang/ruby/modules.mk"

post-configure:
	${FIND} ${WRKSRC} -name \*.orig -exec ${RM} -f {} \;

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/bin/rails ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${RUBY_SITELIBDIR}/rails
	cd ${WRKSRC}/lib && ${PAX} -rwppm * ${RUBY_SITELIBDIR}/
	${INSTALL_DATA_DIR} ${PREFIX}/share/rails
.for f in CHANGELOG MIT-LICENSE README
	${INSTALL_DATA} ${WRKSRC}/${f} ${PREFIX}/share/rails
.endfor
	cd ${WRKSRC} && ${PAX} -rwppm bin builtin configs dispatches doc \
		environments fresh_rakefile helpers html \
		${PREFIX}/share/rails/

.include "../../mk/bsd.pkg.mk"
