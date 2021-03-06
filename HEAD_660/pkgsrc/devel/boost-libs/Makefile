# $NetBSD: Makefile,v 1.32 2015/01/25 12:21:33 pho Exp $

BOOST_PACKAGE=		libs
BOOST_COMMENT=		(binary libraries)
BOOST_CONFIG=		installed
BOOST_INSTALL_LIBS=	yes

.include "../../meta-pkgs/boost/Makefile.common"

INSTALLATION_DIRS+=	lib

BJAM_ARGS+=		--without-python
PLIST_VARS+=		context log long_double_math

.if $(OPSYS) == "NetBSD" && (($(MACHINE_ARCH) == "i386" || $(MACHINE_ARCH) == "sparc64") || (!empty(MACHINE_ARCH:Mearm*) && !empty(PKGSRC_COMPILER:Mgcc)))
BJAM_ARGS+=		pch=off
.elif !empty(MACHINE_ARCH:Malpha) || !empty(MACHINE_ARCH:Mm68k)
BJAM_ARGS+=		--without-context
.endif

.if empty(BJAM_ARGS:M--without-context)
PLIST.context=		yes
.endif

# Darwin GCC is unable to build Boost.Log
.if ${OPSYS} == "Darwin" && !empty(PKGSRC_COMPILER:Mgcc)
BJAM_ARGS+=		--without-log
.else
PLIST.log=		yes
.endif

# Long double math functions are not available on Darwin. See
# boost/math/tools/config.hpp:53
.if ${OPSYS} != "Darwin"
PLIST.long_double_math=	yes
.endif

UNLIMIT_RESOURCES+=	stacksize

.include "../../devel/boost-jam/bjam.mk"

do-build: bjam-build

do-install: boost-install-libs

.include "../../archivers/bzip2/buildlink3.mk"
.include "../../converters/libiconv/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
