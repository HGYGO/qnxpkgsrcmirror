# $NetBSD: Makefile,v 1.23 2008/09/06 20:54:32 wiz Exp $

DISTNAME=	cvs2svn-2.1.1
PKGREVISION=	1
CATEGORIES=	devel scm
MASTER_SITES=	http://cvs2svn.tigris.org/files/documents/1462/42521/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://cvs2svn.tigris.org/
COMMENT=	Converts a CVS repository to a Subversion repository

DEPENDS+=	subversion-base-[0-9]*:../../devel/subversion-base

CONFLICTS+=	py*-subversion<1.0.1

PYDISTUTILSPKG=			yes
PYTHON_PATCH_SCRIPTS=		run-tests.py cvs2svn_rcsparse/run-tests.py \
	cvs2svn_rcsparse/parse_rcs_file.py
USE_TOOLS+=			gtar
EXTRACT_USING=			gtar

# XXX cvs2svn depends on sort(1) with '-T' option. A dependency and a patch
# to resort on GNU sort from coreutils may be required.

INSTALLATION_DIRS+=	share/doc/cvs2svn
INSTALLATION_DIRS+=	share/examples/cvs2svn

post-install:
	cd ${WRKSRC}/www && \
	${INSTALL_DATA} *.html ${PREFIX}/share/doc/cvs2svn
	cd ${WRKSRC} && \
	${INSTALL_DATA} cvs2svn-example.options ${PREFIX}/share/examples/cvs2svn

do-test:
	cd ${WRKSRC} && ./run-tests.py

.include "../../databases/py-bsddb3/buildlink3.mk"
.include "../../lang/python/application.mk"
.include "../../lang/python/extension.mk"
.include "../../mk/bsd.pkg.mk"
