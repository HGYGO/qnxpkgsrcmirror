# $NetBSD: Makefile,v 1.32 2009/07/23 21:23:35 wiz Exp $
#

DISTNAME=	mercurial-1.3.1
CATEGORIES=	devel scm
MASTER_SITES=	http://mercurial.selenic.com/release/

MAINTAINER=	wiz@NetBSD.org
HOMEPAGE=	http://mercurial.selenic.com/wiki/
COMMENT=	Fast, lightweight source control management system
LICENSE=	gnu-gpl-v2

BUILD_DEPENDS+=	xmlto-[0-9]*:../../textproc/xmlto
BUILD_DEPENDS+=	asciidoc-[0-9]*:../../textproc/asciidoc

PKG_DESTDIR_SUPPORT=	user-destdir

PY_PATCHPLIST=			yes
PYDISTUTILSPKG=			yes
PYTHON_VERSIONS_INCOMPATIBLE=	23
USE_TOOLS+=			gmake msgfmt

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1 ${PKGMANDIR}/man5

post-install:
	${INSTALL_DATA} ${WRKSRC}/doc/*.1  ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1
	${INSTALL_DATA} ${WRKSRC}/doc/*.5  ${DESTDIR}${PREFIX}/${PKGMANDIR}/man5
	${INSTALL_DATA_DIR} ${DESTDIR}${PREFIX}/share/doc/mercurial
	${INSTALL_DATA} ${WRKSRC}/README  \
		${DESTDIR}${PREFIX}/share/doc/mercurial

.include "../../lang/python/extension.mk"
.include "../../mk/bsd.pkg.mk"
