# $NetBSD: Makefile,v 1.164 2009/06/14 15:08:45 joerg Exp $

# Notes to package maintainers:
#
# Updating this package does not automatically necessitate bumping
# PKGTOOLS_REQD in bsd.pkg.mk. Do so if and only if there is a critical
# change in the pkg_* tools that pkgsrc relies on for proper operation.

DISTNAME=		pkg_install-${VERSION}
CATEGORIES=		pkgtools
MASTER_SITES=		# empty
DISTFILES=		# empty

MAINTAINER=		joerg@NetBSD.org
HOMEPAGE=		http://www.pkgsrc.org/
COMMENT=		Package management and administration tools for pkgsrc
LICENSE=		modified-bsd

PKG_DESTDIR_SUPPORT=	user-destdir
BOOTSTRAP_PKG=	yes
SKIP_LICENSE_CHECK=	yes

CONFLICTS+=		audit-packages-[0-9]*

GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--sysconfdir=${PKG_SYSCONFDIR:Q}
CONFIGURE_ARGS+=	--with-pkgdbdir=${PKG_DBDIR:Q}

USE_FEATURES=		nbcompat

NBCOMPAT_CONFIGURE_ARGS+=	--enable-bsd-getopt --enable-db

SKIP_AUDIT_PACKAGES=	yes
NO_PKGTOOLS_REQD_CHECK=	yes
PKG_PRESERVE=		yes
CHECK_PERMS=		no

# These are needed to solve a chicken-and-egg problem where pkgsrc uses
# newer features of pkg_install, but older NetBSD installations won't
# support them.  In this case, we explicitly use the native GCC
# compiler to avoid problems with depending on pkgsrc GCC for building
# pkg_install.
#
# We also use the newly built pkg_{add,create,delete} since upgrading
# from an older pkg_install might required features of the new program. 
#
# Note that the definitions are only overriden for the phases that are
# supposed to use them.  pkg_admin pmatch might be used when looking for
# dependencies. If that is ever changed in a incompatible way, this has to
# be rethought.
USE_NATIVE_GCC=		yes

.if defined(_PKGSRC_BARRIER)
PKG_ADD_CMD=		${WRKSRC}/add/pkg_add
PKG_CREATE_CMD=		${WRKSRC}/create/pkg_create
PKG_DELETE_CMD=		${WRKSRC}/delete/pkg_delete
PKG_INFO_CMD=		${WRKSRC}/info/pkg_info
.endif

CPPFLAGS+=		-D_LARGEFILE_SOURCE -D_LARGE_FILES
CPPFLAGS+=		-D_FILE_OFFSET_BITS=64

CPPFLAGS+=		-DDEF_UMASK=${DEF_UMASK}

MAKE_ENV+=		MACHINE_ARCH=${MACHINE_ARCH:Q}
MAKE_ENV+=		OPSYS=${OPSYS:Q}

PKG_DBDIR?=		/var/db/pkg
EGDIR=			${PREFIX}/share/examples/pkg_install

PLIST_SUBST+=		PKG_DBDIR=${PKG_DBDIR:Q}

DEINSTALL_SRC=		# empty
INSTALL_SRC=		${PKGDIR}/INSTALL
FILES_SUBST+=		PKG_DBDIR=${PKG_DBDIR:Q}			\
			PKG_TOOLS_BIN=${PKG_TOOLS_BIN:Q}		\
			MKDIR=${MKDIR:Q}
MESSAGE_SUBST+=		PKGVULNDIR=${PKG_DBDIR:Q}			\
			EGDIR=${EGDIR:Q}

.include "../../mk/bsd.prefs.mk"

VERSION!=		${AWK} -F '"' '/PKGTOOLS_VERSION/ {print $$2}' \
			${FILESDIR}/lib/version.h

# linkresolver interface appeared in libarchive 2.5 and extract
# requires version 2.5.4b to handle hardlinks correctly.
BUILDLINK_API_DEPENDS.libarchive+=	libarchive>=2.5.4b

.include "../../archivers/bzip2/builtin.mk"
.include "../../archivers/libarchive/builtin.mk"
.include "../../devel/zlib/builtin.mk"
.include "../../security/openssl/builtin.mk"

.if !empty(USE_BUILTIN.openssl:M[yY][eE][sS])
CONFIGURE_ARGS+=	--with-ssl

.include "../../security/openssl/buildlink3.mk"
.endif

.if empty(USE_BUILTIN.bzip2:M[yY][eE][sS]) || \
    empty(USE_BUILTIN.zlib:M[yY][eE][sS])
USE_BUILTIN.libarchive=	no
.endif

FILESDIR.bzip2?=	${.CURDIR}/../../archivers/bzip2/files
FILESDIR.libarchive?=	${.CURDIR}/../../archivers/libarchive/files
FILESDIR.zlib?=		${.CURDIR}/../../devel/zlib/files
FILESDIR.libfetch?=	${.CURDIR}/../../net/libfetch/files

.if empty(USE_BUILTIN.bzip2:M[yY][eE][sS])
CPPFLAGS+=	-I${WRKDIR}/bzip2
LDFLAGS+=	-L${WRKDIR}/bzip2
.endif
.if empty(USE_BUILTIN.zlib:M[yY][eE][sS])
CPPFLAGS+=	-I${WRKDIR}/zlib
LDFLAGS+=	-L${WRKDIR}/zlib
.endif
.if empty(USE_BUILTIN.libarchive:M[yY][eE][sS])
CPPFLAGS+=	-I${WRKDIR}/libarchive/libarchive
LDFLAGS+=	-L${WRKDIR}/libarchive/.libs
.endif
CPPFLAGS+=	-I${WRKDIR}/libfetch
LDFLAGS+=	-L${WRKDIR}/libfetch

do-extract:
	@${CP} -R ${FILESDIR} ${WRKSRC}
.if empty(USE_BUILTIN.bzip2:M[yY][eE][sS])
	@${CP} -R ${FILESDIR.bzip2} ${WRKDIR}/bzip2
.endif
.if empty(USE_BUILTIN.zlib:M[yY][eE][sS])
	@${CP} -R ${FILESDIR.zlib} ${WRKDIR}/zlib
.endif
.if empty(USE_BUILTIN.libarchive:M[yY][eE][sS])
	@${CP} -R ${FILESDIR.libarchive} ${WRKDIR}/libarchive
.endif
	@${CP} -R ${FILESDIR.libfetch} ${WRKDIR}/libfetch

pre-configure:
.if empty(USE_BUILTIN.bzip2:M[yY][eE][sS])
	cd ${WRKDIR}/bzip2 && ${BUILD_MAKE_CMD} libbz2.a
.endif
.if empty(USE_BUILTIN.zlib:M[yY][eE][sS])
	cd ${WRKDIR}/zlib && ${BUILD_MAKE_CMD} libz.a
.endif
.if empty(USE_BUILTIN.libarchive:M[yY][eE][sS])
	cd ${WRKDIR}/libarchive &&					\
	${SETENV} ${_CONFIGURE_SCRIPT_ENV}				\
		${CONFIG_SHELL} ${CONFIG_SHELL_FLAGS}			\
		./configure --disable-shared --disable-bsdtar		\
		--disable-dependency-tracking --disable-acl
	cd ${WRKDIR}/libarchive && ${BUILD_MAKE_CMD}
.endif
	cd ${WRKDIR}/libfetch && ${SETENV} ${MAKE_ENV}			\
		${MAKE_PROGRAM} ${MAKE_FLAGS} ${BUILD_MAKE_FLAGS}	\
			-f ${MAKE_FILE} depend all


# XXX Reverse the order that update does things since
# XXX we need pkg_delete built before we can deinstall.
# XXX This should probably be the default order for all packages.
update:
	${MAKE}
	${MAKE} deinstall _UPDATE_RUNNING=YES
	${MAKE} ${UPDATE_TARGET}
	${MAKE} clean

.include "../../mk/bsd.pkg.mk"
