# $NetBSD: Makefile,v 1.13 2008/03/03 17:45:34 jlam Exp $
#

DISTNAME=	cvs2html-1.82
CATEGORIES=	devel scm
MASTER_SITES=	${MASTER_SITE_LOCAL}

MAINTAINER=	zuntum@NetBSD.org
HOMEPAGE=	http://cvs.sslug.dk/cvs2html/
COMMENT=	Perl script to turn ``cvs log'' output into HTML

PKG_DESTDIR_SUPPORT=	user-destdir

NO_BUILD=	YES
USE_TOOLS+=	perl:run
REPLACE_PERL=	cvs2html

INSTALLATION_DIRS=	bin

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/cvs2html ${DESTDIR}${PREFIX}/bin

.include "../../mk/bsd.pkg.mk"
