# $NetBSD: Makefile,v 1.35 2009/01/16 12:31:51 obache Exp $
#

DISTNAME=	nvi-1.81.6
PKGREVISION=	3
CATEGORIES=	editors
MASTER_SITES=	${HOMEPAGE}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.kotnet.org/~skimo/nvi/devel/
COMMENT=	Berkeley nvi with additional features

PKG_DESTDIR_SUPPORT=	user-destdir

.include "options.mk"

WRKSRC=			${WRKDIR}/${DISTNAME}/build.unix
USE_TOOLS+=		sh
USE_LIBTOOL=		yes
GNU_CONFIGURE=		yes

CONFIGURE_SCRIPT=	../dist/configure
CONFIGURE_ARGS+=	--program-transform-name='s,^,n,'
CONFIGURE_ENV+=		vi_cv_path_shell=${TOOLS_SH:Q}

.if ${OPSYS} == "NetBSD"
.  if !empty(OS_VERSION:M[2-9].*) || !empty(OS_VERSION:M1.6[A-Z]*)
CONFIGURE_ENV+=		vi_cv_include_sys_select=no
.  endif
# XXX ignore NetBSD 2.0F and later's granpt(2) and SysV pty for just now
CONFIGURE_ENV+=		vi_cv_sys5_pty=no
# XXX also ignore it on Darwin (fixes Tiger build)
.elif ${OPSYS} == "DragonFly"
CONFIGURE_ENV+=		vi_cv_include_sys_select=no
.elif ${OPSYS} == "Darwin"
CONFIGURE_ENV+=		vi_cv_sys5_pty=no
LDFLAGS+=		-flat_namespace
INSTALL_UNSTRIPPED=	yes
.endif

# Use of db1 is not officially supported.
BDB_ACCEPTED=		db3 db4
.include "../../mk/bdb.buildlink3.mk"
.if ${BDB_TYPE} == "db1" || ${BDB_TYPE} == "db2"
CONFIGURE_ARGS+=	--with-db_type=db1
.endif
CONFIGURE_ARGS+=	--with-db-prefix=${BDBBASE}
.include "../../mk/bsd.pkg.mk"
