# $NetBSD: Makefile,v 1.6 2007/10/03 14:45:42 heinz Exp $

DISTNAME=	ncurses-ruby-1.1
PKGNAME=	${DISTNAME:S/ncurses-ruby/${RUBY_PKGPREFIX}-ncurses/}
CATEGORIES=	devel
MASTER_SITES=	http://download.berlios.de/ncurses-ruby/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://ncurses-ruby.berlios.de/
COMMENT=	Ruby interface to ncurses

USE_RUBY_EXTCONF=	yes
USE_NCURSES=		yes	# mouse functions

EXAMPLES=		example.rb hello_ncurses.rb rain.rb read_line.rb \
			tclock.rb test_scanw.rb
.for f in ${EXAMPLES}
REPLACE_RUBY+=		example/${f}
.endfor

post-install:
	${INSTALL_DATA_DIR} ${RUBY_EXAMPLESDIR}/ncurses
	${INSTALL_DATA} ${WRKSRC}/examples/LICENSES_for_examples \
		${RUBY_EXAMPLESDIR}/ncurses
.for f in ${EXAMPLES}
	${INSTALL_DATA} ${WRKSRC}/examples/${f} ${RUBY_EXAMPLESDIR}/ncurses
.endfor

.include "../../devel/ncurses/buildlink3.mk"
.include "../../lang/ruby/modules.mk"
.include "../../mk/bsd.pkg.mk"
