# $NetBSD: Makefile,v 1.30 2007/12/02 12:11:09 wiz Exp $
#

DISTNAME=	unix_jb35foundation
PKGNAME=	jbuilder-jit-1.2.15
PKGREVISION=	2
CATEGORIES=	lang java
MASTER_SITES=	http://ftp.cdut.edu.cn/pub2/linux/develop/jbuilder/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.borland.com/
COMMENT=	Just-In-Time compiler for Linux Java Virtual Machine

WRKSRC=		${WRKDIR}/javacomp-1.2.15
USE_JAVA=	run
USE_JAVA2=	yes
PLIST_SUBST+=	JAVADIR=${PKG_JAVA_HOME:C|${PREFIX}/||}

EXTRACT_ELEMENTS=	LinuxJIT/javacomp-1.2.15.tar.gz

LICENSE=		jbuilder-jit-license
RESTRICTED=		Redistribution of binaries not permitted
NO_BIN_ON_CDROM=	${RESTRICTED}
NO_SRC_ON_CDROM=	${RESTRICTED}
NO_BIN_ON_FTP=		${RESTRICTED}
NO_SRC_ON_FTP=		${RESTRICTED}
USE_TOOLS+=		gtar

NO_BUILD=		yes

# this package is only for Sun 1.3 JVMs built for x86 Linux
ONLY_FOR_PLATFORM=	NetBSD-*-i386 Linux-*-i386 DragonFly-*-i386
PKG_JVMS_ACCEPTED=	blackdown-jdk13

post-extract:
	@cd ${WRKDIR} && ${GTAR} -xzf ${EXTRACT_ELEMENTS}

do-install:
	${INSTALL_LIB_DIR} ${PKG_JAVA_HOME}/lib/i386
	${INSTALL_PROGRAM} ${WRKSRC}/libjavacomp.so ${WRKSRC}/libjavacomp_g.so \
		${PKG_JAVA_HOME}/lib/i386/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/jbuilder-jit
	${INSTALL_DATA} ${WRKSRC}/readme.txt ${PREFIX}/share/doc/jbuilder-jit/README.javacomp
	${INSTALL_DATA} ${WRKSRC}/LICENSE.TXT ${PREFIX}/share/doc/jbuilder-jit/LICENSE.javacomp

.include "../../mk/java-vm.mk"
.include "../../mk/bsd.pkg.mk"
