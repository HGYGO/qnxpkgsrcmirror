# $NetBSD: Makefile,v 1.12 2009/06/13 06:46:48 rillig Exp $

DISTNAME=	stgit-0.14.3
PKGREVISION=	1
CATEGORIES=	devel
MASTER_SITES=	http://homepage.ntlworld.com/cmarinas/stgit/

MAINTAINER=	bjs@NetBSD.org
HOMEPAGE=	http://www.procode.org/stgit/
COMMENT=	Stacked GIT

PKG_DESTDIR_SUPPORT=	user-destdir

BUILD_DEPENDS+=	asciidoc-[0-9]*:../../textproc/asciidoc
BUILD_DEPENDS+= xmlto-[0-9]*:../../textproc/xmlto
DEPENDS+=	scmgit-base-[0-9]*:../../devel/scmgit-base

AUTO_MKDIRS=	yes
USE_TOOLS+=	bash:run perl gmake

REPLACE_PERL=	Documentation/build-docdep.perl
REPLACE_BASH=	contrib/stg-*

PYTHON_PATCH_SCRIPTS=	*.py stgit/*.py stg
PYDISTUTILSPKG=		yes
PYSETUPINSTALLARGS=	--prefix=${PREFIX}

MAKE_ENV+=	ASCIIDOC=${PREFIX}/bin/asciidoc
MAKE_ENV+=	ASCIIDOC_EXTRA=${ASCIIDOC_EXTRA:M*:Q}

.include "../../mk/bsd.prefs.mk"

.for d in asciidoc docbook-xsl
GITDOCDEP.${d}=	${${${PKG_INFO} -E ${d} || echo:L:sh}:L:C/[^[0-9]]*/ /g:[1..3]:ts.}
.endfor

ASCIIDOC_EXTRA=	# empty

.if !empty(GITDOCDEP.asciidoc:M[8]*)
ASCIIDOC_EXTRA+= -a ascidoc7compatible
.endif

.if !empty(GITDOCDEP.docbook-xsl:M1.7[2-9]*)
ASCIIDOC_EXTRA+= -a docbook-xsl-172
.endif

.include "../../lang/python/application.mk"
.include "../../lang/python/extension.mk"

pre-build:
	cd ${WRKSRC}/Documentation && \
	${SETENV} ${MAKE_ENV} ${GMAKE} all

pre-install:
	${CHMOD} a-x ${WRKSRC}/contrib/stgbashprompt.sh

post-install:
	cd ${WRKSRC}/contrib && \
	${RM} -f *.orig && \
	${INSTALL_SCRIPT} stg-* ${DESTDIR}${PREFIX}/bin
	cd ${WRKSRC}/Documentation && \
	${INSTALL_MAN} *.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1 && \
	${INSTALL_DATA} *.html \
	    ${DESTDIR}${PREFIX}/share/doc/${PKGBASE}/html

.include "../../mk/bsd.pkg.mk"
