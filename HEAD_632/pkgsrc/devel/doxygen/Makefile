# $NetBSD: Makefile,v 1.57 2007/09/23 17:49:08 joerg Exp $

DISTNAME=	doxygen-1.5.1.src
PKGNAME=	doxygen-1.5.1
PKGREVISION=	1
CATEGORIES=	devel
MASTER_SITES=	ftp://ftp.stack.nl/pub/users/dimitri/ \
		http://ftp.stack.nl/pub/users/dimitri/

MAINTAINER=	recht@NetBSD.org
HOMEPAGE=	http://www.doxygen.org/
COMMENT=	Documentation system for C++, Java, IDL and C

PKG_DESTDIR_SUPPORT=	user-destdir

TEX_ACCEPTED=	teTeX3
WRKSRC=			${WRKDIR}/${PKGNAME_NOREV}
USE_TOOLS+=		gmake gs:run perl:run flex
USE_LANGUAGES=		c c++
HAS_CONFIGURE=		yes
CONFIGURE_ARGS+=	--make ${GMAKE}
CONFIGURE_ARGS+=	--perl ${PERL5}
CONFIGURE_ARGS+=	--install ${INSTALL}
CONFIGURE_ARGS+=	--dot ${PREFIX}/bin/dot
CONFIGURE_ARGS+=	--prefix ${PREFIX}
CONFIGURE_ARGS+=	--docdir ${PREFIX}/share/doc
MAKE_ENV+=		PKGSRC_CFLAGS=${CFLAGS:Q}
MAKE_FLAGS+=		MAN1DIR=${PKGMANDIR}/man1

.if exists(./descr)
PLIST_SUBST+=	CASESENSITIVE="@comment " CASEINSENSITIVE=""
.else
PLIST_SUBST+=	CASESENSITIVE="" CASEINSENSITIVE="@comment "
.endif

SUBST_CLASSES+=		pybin
SUBST_STAGE.pybin=	pre-configure
SUBST_FILES.pybin=	doc/Makefile.in
SUBST_SED.pybin=	-e "s|@PYTHONBIN@|${PYTHONBIN}|g"

SUBST_CLASSES+=		perlbin
SUBST_STAGE.perlbin=	pre-configure
SUBST_MESSAGE.perlbin=	Fixing hardcoded path to the Perl interpreter
SUBST_FILES.perlbin=	examples/tag.cfg
SUBST_SED.perlbin=	-e 's,^PERL_PATH.*,PERL_PATH = ${PERL5},'

INSTALL_TARGET=		install install_docs

.include "../../mk/bsd.prefs.mk"

.if ${OPSYS} == "DragonFly"
CONFIGURE_ARGS+=	-platform freebsd-g++
.endif

post-patch:
	touch ${WRKSRC}/src/doxytag.l

BUILDLINK_API_DEPENDS.graphviz+=	graphviz>=2.12nb1

.include "../../graphics/graphviz/buildlink3.mk"
.include "../../lang/python/application.mk"
.include "../../mk/tex.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
