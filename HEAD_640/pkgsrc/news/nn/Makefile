# $NetBSD: Makefile,v 1.35 2007/07/29 14:33:12 joerg Exp $

DISTNAME=	nn-6.7.3
CATEGORIES=	news
MASTER_SITES=	ftp://ftp.nndev.org/pub/nn-6.7/
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	NN newsreader

PKG_SYSCONFSUBDIR=	nntp

.include "../../mk/bsd.prefs.mk"

.if ${OPSYS} == "SunOS"
SFILE=		s-sunos5.h
.elif ${OPSYS} == "Linux"
SFILE=		s-linux.h
.else
SFILE=		s-netbsd.h
.endif

.if ${MACHINE_ARCH} == "i386"
MFILE=		m-i80386.h
.elif ${MACHINE_ARCH} == "mipseb"
MFILE=         m-mipsel.h
.else
MFILE=		m-${LOWER_ARCH}.h
.endif

.if ${OPSYS} == "DragonFly"
CPP+=		-traditional
.endif

.if ${OPSYS} == "IRIX"
CPPFLAGS+=	-DHAVE_TERMIO_H
.endif

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1 ${PKGMANDIR}/man8

post-patch:
	@${SED} -e ' \
	    s#@PREFIX@#${PREFIX}#; \
	    s#@PKG_SYSCONFDIR@#${PKG_SYSCONFDIR}#; \
	    s#@PKGMANDIR@#${PKGMANDIR}#; \
	    s#@BINOWN@#${BINOWN}#; \
	    s#@BINGRP@#${BINGRP}#; \
	    s#@MFILE@#${MFILE}#; \
	    s#@SFILE@#${SFILE}#' \
	    <${WRKSRC}/config.h-dist >${WRKSRC}/config.h
	@${CP} ${FILESDIR}/s-netbsd.h ${WRKSRC}/conf/s-netbsd.h
	@${CP} ${FILESDIR}/m-powerpc.h ${WRKSRC}/conf/m-powerpc.h
	@${CP} ${WRKSRC}/conf/m-m680x0.h ${WRKSRC}/conf/m-m68k.h

.include "../../mk/bsd.pkg.mk"
