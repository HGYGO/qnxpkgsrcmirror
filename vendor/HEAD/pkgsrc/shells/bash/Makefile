# $NetBSD: Makefile,v 1.60 2014/01/11 18:18:46 chopps Exp $

BASH_VERSION=		4.2

DISTNAME=	bash-${BASH_VERSION}
#PKGNAME=	bash-${BASH_VERSION}.${BASH_PATCHLEVEL}
PKGREVISION=	4
CATEGORIES=	shells
MASTER_SITES=	${MASTER_SITE_GNU:=bash/} \
		ftp://ftp.cwru.edu/pub/bash/

#PATCH_SITES=	${MASTER_SITES:=bash-4.0-patches/}
#PATCHFILES+=	bash40-001 bash40-002 bash40-003 bash40-004 bash40-005

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.gnu.org/software/bash/bash.html
COMMENT=	The GNU Bourne Again Shell
LICENSE=	gnu-gpl-v3

CONFLICTS=	static-bash-[0-9]*

PKG_INSTALLATION_TYPES=	overwrite pkgviews

USE_TOOLS+=		makeinfo bison
USE_PKGLOCALEDIR=	yes
TEXINFO_REQD=		4.1
GNU_CONFIGURE=		yes
MAKE_ENV+=		INSTALL_SCRIPT=${INSTALL_SCRIPT:Q}
CONFIGURE_ARGS=		LOCAL_LDFLAGS=${EXPORT_SYMBOLS_LDFLAGS:M*:Q}
CPPFLAGS+=		-DDEFAULT_PATH_VALUE="\"/usr/bin:/bin:${LOCALBASE}/bin:/usr/local/bin\""
MAKE_JOBS_SAFE=		no
TEST_TARGET=		test

INFO_FILES=		YES # PLIST
PKG_SHELL=		bin/bash
INSTALLATION_DIRS=	${PKGMANDIR}/man1

# All features enabled by default.
CONFIGURE_ARGS+=	--enable-readline
CONFIGURE_ARGS+=	--enable-progcomp
CONFIGURE_ARGS+=	--enable-process-substitution
CONFIGURE_ARGS+=	--enable-history
CONFIGURE_ARGS+=	--enable-help-builtin
CONFIGURE_ARGS+=	--enable-extended-glob
CONFIGURE_ARGS+=	--enable-dparen-arithmetic
CONFIGURE_ARGS+=	--enable-directory-stack
CONFIGURE_ARGS+=	--enable-debugger
CONFIGURE_ARGS+=	--enable-cond-regexp
CONFIGURE_ARGS+=	--enable-alias
CONFIGURE_ARGS+=	--enable-brace-expansion
CONFIGURE_ARGS+=	--enable-array-variables

.include "../../mk/bsd.prefs.mk"

PKG_OPTIONS_VAR=	PKG_OPTIONS.bash
PKG_SUPPORTED_OPTIONS=	static

.include "../../mk/bsd.options.mk"

##
## Static link
##
.if !empty(PKG_OPTIONS:Mstatic)
CONFIGURE_ARGS+=	--enable-static-link
BUILDLINK_DEPMETHOD.gettext=	build
BUILDLINK_DEPMETHOD.readline=	build
.endif

# Minix lacks setpgid() which is needed for job control.
# bash malloc() is also broken on Minix
.if ${OPSYS} == "Minix"
CONFIGURE_ARGS+=	--disable-job-control
CONFIGURE_ARGS+=	--with-bash-malloc=no
.else
CONFIGURE_ARGS+=	--enable-job-control
.endif

# Use "readline" package on Darwin to avoid link erros.
.if ${OPSYS} == "Darwin"
CONFIGURE_ARGS+=		--with-installed-readline

BUILDLINK_API_DEPENDS.readline+=	readline>=6.0
.include "../../devel/readline/buildlink3.mk"
.endif

.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS]) && ${OPSYS} == "NetBSD"
CONFIGURE_ENV+=		CC_FOR_BUILD=${NATIVE_CC:Q}
CONFIGURE_ENV+=		ac_cv_c_long_long=yes
CONFIGURE_ENV+=		ac_cv_c_long_double=yes
CONFIGURE_ENV+=		bash_cv_type_rlimit=yes
CONFIGURE_ENV+=		bash_cv_getcwd_malloc=yes
CONFIGURE_ENV+=		bash_cv_func_sigsetjmp=yes
CONFIGURE_ENV+=		bash_cv_printf_a_format=yes
CONFIGURE_ENV+=		bash_cv_job_control_missing=present
CONFIGURE_ENV+=		bash_cv_sys_named_pipes=present
CONFIGURE_ENV+=		bash_cv_unusable_rtsigs=no
CONFIGURE_ENV+=		bash_cv_func_ctype_nonascii=yes
CONFIGURE_ENV+=		bash_cv_wexitstatus_offset=8
.endif

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/bash.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1
	${INSTALL_MAN} ${WRKSRC}/doc/bashbug.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1

.include "../../mk/termcap.buildlink3.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
