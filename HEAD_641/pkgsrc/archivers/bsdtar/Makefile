# $NetBSD: Makefile,v 1.13 2009/07/17 04:47:27 rillig Exp $
#

DISTNAME=	bsdtar-2.5.5
CATEGORIES=	archivers
MASTER_SITES=	http://people.freebsd.org/~kientzle/libarchive/src/
DISTFILES=	# empty

MAINTAINER=	joerg@NetBSD.org
HOMEPAGE=	http://people.freebsd.org/~kientzle/libarchive/
COMMENT=	Fast multi-format tape archiver

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=	yes
# Explicitly do not depend on libtool as this can be used
# as bootstrap dependency.
#
#USE_LIBTOOL=	yes

.include "../../archivers/bzip2/builtin.mk"
.include "../../devel/zlib/builtin.mk"

.if empty(USE_BUILTIN.bzip2:M[yY][eE][sS])
CPPFLAGS+=	-I${WRKDIR}/bzip2
LDFLAGS+=	-L${WRKDIR}/bzip2
.endif
.if empty(USE_BUILTIN.zlib:M[yY][eE][sS])
CPPFLAGS+=	-I${WRKDIR}/zlib
LDFLAGS+=	-L${WRKDIR}/zlib
.endif

FILESDIR.bzip2?=	${.CURDIR}/../../archivers/bzip2/files
FILESDIR.libarchive?=	${.CURDIR}/../../archivers/libarchive/files
FILESDIR.zlib?=		${.CURDIR}/../../devel/zlib/files

CONFIGURE_ARGS+=	--enable-bsdtar=static --disable-shared

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1

do-extract:
.if empty(USE_BUILTIN.bzip2:M[yY][eE][sS])
	${RUN}${CP} -R ${FILESDIR.bzip2} ${WRKDIR}/bzip2
.endif
.if empty(USE_BUILTIN.zlib:M[yY][eE][sS])
	${RUN}${CP} -R ${FILESDIR.zlib} ${WRKDIR}/zlib
.endif
	${RUN}${CP} -R ${FILESDIR.libarchive} ${WRKSRC}

pre-configure:
.if empty(USE_BUILTIN.bzip2:M[yY][eE][sS])
	cd ${WRKDIR}/bzip2 && ${BUILD_MAKE_CMD} libbz2.a
.endif
.if empty(USE_BUILTIN.zlib:M[yY][eE][sS])
	cd ${WRKDIR}/zlib && ${BUILD_MAKE_CMD} libz.a
.endif

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bsdtar ${DESTDIR}${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/tar/bsdtar.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1

.include "../../mk/bsd.pkg.mk"
