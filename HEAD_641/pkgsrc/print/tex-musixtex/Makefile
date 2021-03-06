# $NetBSD: Makefile,v 1.24 2009/07/22 09:01:44 wiz Exp $
#

DISTNAME=	musixtex-112
PKGNAME=	tex-${DISTNAME}
PKGREVISION=	3
CATEGORIES=	print
MASTER_SITES=	${MASTER_SITE_TEX_CTAN:=macros/musixtex/taupin/}
DISTFILES=	musixtex-T112.tar.gz

MAINTAINER=	dgriffi@cs.csubak.edu
HOMEPAGE=	http://icking-music-archive.org/
COMMENT=	TeX macros to typeset music

BUILD_DEPENDS+=	dvipsk-[0-9]*:../../print/dvipsk

TEX_ACCEPTED=	teTeX3

WRKSRC=		${WRKDIR}/musixtex-T112
NO_CONFIGURE=	yes

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1

.include "../../print/teTeX/module.mk"

do-build:
	@${ECHO} "======> Building musixtex.fmt"
	${CP} -f ${WRKSRC}/system/dos/musixtex.ins \
		${WRKSRC}/tex
	cd ${WRKSRC}/tex ; \
		(TEXFONTS=${WRKSRC}/tfm tex -ini '&tex musixtex.ins \dump')
	@${ECHO} "======> Building musixflx executable"
	cd ${WRKSRC}/system/c-source; ${CC} -o musixflx musixflx.c

do-install:
	${INSTALL_DATA_DIR} ${PKG_LOCALTEXMFPREFIX}/doc/musixtex
	${INSTALL_DATA_DIR} ${PKG_LOCALTEXMFPREFIX}/fonts/tfm/musixtex
	${INSTALL_DATA_DIR} ${PKG_LOCALTEXMFPREFIX}/fonts/source/musixtex
	${INSTALL_DATA_DIR} ${PKG_LOCALTEXMFPREFIX}/tex/latex/musixtex

	${INSTALL_DATA} ${WRKSRC}/doc/* \
		${PKG_LOCALTEXMFPREFIX}/doc/musixtex

	${INSTALL_DATA} ${WRKSRC}/tex/musixtex.fmt \
		${PKG_LOCALTEXMFPREFIX}/web2c

	${INSTALL_DATA} ${WRKSRC}/tex/* \
		${PKG_LOCALTEXMFPREFIX}/tex/latex/musixtex

	${INSTALL_DATA} ${WRKSRC}/mf/*.mf \
		${PKG_LOCALTEXMFPREFIX}/fonts/source/musixtex

	${INSTALL_DATA} ${WRKSRC}/tfm/*.tfm \
		${PKG_LOCALTEXMFPREFIX}/fonts/tfm/musixtex

	${INSTALL_PROGRAM} ${WRKSRC}/system/c-source/musixflx \
		${PREFIX}/bin

	${INSTALL_MAN} ${WRKSRC}/system/c-source/musixflx.1 \
		${PREFIX}/${PKGMANDIR}/man1

.if exists(${LOCALBASE}/bin/virtex)
	cd ${PREFIX}/bin ; ${LN} -sf virtex musixtex	# teTeX2
.else
	cd ${PREFIX}/bin ; ${LN} -sf tex musixtex	# teTeX3
.endif

	${LOCALBASE}/bin/mktexlsr ${PKG_LOCALTEXMFPREFIX}

post-install:
	@${ECHO} "======> Building musixdoc.ps"
	cd ${PKG_LOCALTEXMFPREFIX}/doc/musixtex ; \
		latex musixdoc ; \
		musixflx musixdoc ; \
		latex  musixdoc ; \
		makeindex musixdoc.idx ; \
		latex  musixdoc ; \
		makeindex musixdoc.idx ; \
		latex  musixdoc ; \
		dvips musixdoc.dvi -o musixdoc.ps

.include "../../mk/bsd.pkg.mk"
