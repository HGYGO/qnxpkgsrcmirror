# $NetBSD: Makefile,v 1.77 2008/12/04 13:29:43 wiz Exp $

DISTNAME=	gettext-0.14.6
PKGREVISION=	1
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=gettext/}

MAINTAINER=	joerg@NetBSD.org
HOMEPAGE=	http://www.gnu.org/software/gettext/gettext.html
COMMENT=	Tools for providing messages in different languages

PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=		gettext-m4-0.14.6{,nb[0-9]*}:../../devel/gettext-m4
DEPENDS+=		gettext-tools-0.14.6{,nb[0-9]*}:../../devel/gettext-tools
BUILDLINK_API_DEPENDS.gettext+=	gettext-lib>=0.14.5

USE_LIBTOOL=		yes
USE_PKGLOCALEDIR=	yes
GNU_CONFIGURE=		yes
SHLIBTOOL_OVERRIDE=	# empty
CONFIGURE_ARGS+=	--without-included-gettext
CONFIGURE_ARGS+=	--disable-csharp
CONFIGURE_ENV+=		GCJ= ac_cv_prog_GCJ=
CONFIGURE_ENV+=		HAVE_GCJ_IN_PATH=
CONFIGURE_ENV+=		HAVE_JAVAC_IN_PATH=
CONFIGURE_ENV+=		HAVE_JIKES_IN_PATH=
CONFIGURE_ENV+=		ac_cv_libexpat=no

INSTALLATION_DIRS+=	lib/gettext ${PKGMANDIR}/man1
TEST_TARGET=		check

BROKEN_GETTEXT_DETECTION=	yes
USE_BUILTIN.gettext=	no # force use of pkgsrc gettext-lib

do-install:
	cd ${WRKSRC}/gettext-tools && ${MAKE} install-gettextsrcSCRIPTS DESTDIR=${DESTDIR}
	cd ${WRKSRC}/gettext-tools/lib && ${MAKE} install-gettextsrcDATA DESTDIR=${DESTDIR}
	cd ${WRKSRC}/gettext-tools/projects && ${MAKE} install DESTDIR=${DESTDIR}
	cd ${WRKSRC}/gettext-tools/misc && ${MAKE} install DESTDIR=${DESTDIR}
	cd ${WRKSRC}/gettext-tools/src && ${MAKE} install-tcl install-exec-local DESTDIR=${DESTDIR}
	cd ${WRKSRC}/gettext-runtime && ${MAKE} install-gettextsrcDATA DESTDIR=${DESTDIR}
	cd ${WRKSRC}/gettext-tools/intl && ${MAKE} install-exec install-data DESTDIR=${DESTDIR}
	cd ${WRKSRC}/gettext-tools/po && ${MAKE} installdirs-data install-data DESTDIR=${DESTDIR}
	${INSTALL_MAN} ${WRKSRC}/gettext-tools/man/autopoint.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1
	${INSTALL_MAN} ${WRKSRC}/gettext-tools/man/gettextize.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1

.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/gettext-asprintf/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

.if ${OPSYS} == "QNX"
# otherwise it pulls out the mcs utility as a C# compiler.
CONFIGURE_ARGS+=	--enable-csharp=no
.endif
