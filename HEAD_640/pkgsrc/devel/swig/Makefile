# $NetBSD: Makefile,v 1.26 2009/01/23 13:00:11 gdt Exp $

DISTNAME=	swig-1.3.31
PKGREVISION=	1
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=swig/}

# 1.3.37 has a bug where .py files are written to the directory of the
# .i file instead of where the output is supposed to go, and this
# breaks gnuradio.  Please try to contact gdt@netbsd.org before
# updating to 1.3.37.  See message on discuss-gnuradio:
# Message-Id: <FA0E4567-C660-4C30-B604-2FA000330874@alum.mit.edu>


MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.swig.org/
COMMENT=	Simplified Wrapper and Interface Generator

PKG_DESTDIR_SUPPORT=	user-destdir

CONFLICTS=		swig-build-[0-9]*

CONFIGURE_ARGS+=	--with-swiglibdir=${PREFIX}/share/swig/1.3
BUILD_TARGET=		swig

USE_TOOLS+=		gmake pax
GNU_CONFIGURE=		YES
USE_LANGUAGES=		c c++
USE_LIBTOOL=		YES

INSTALLATION_DIRS+=	share/doc/swig share/examples/swig

CHECK_INTERPRETER_SKIP+=	share/examples/swig/*

post-install:
	cd ${WRKSRC:Q}/Doc/Manual && \
	${INSTALL_DATA} SWIGDocumentation.html SWIGDocumentation.pdf	\
		*.png ${DESTDIR:Q}${PREFIX:Q}/share/doc/swig
	cd ${WRKSRC:Q}/Examples &&					\
	pax -wr								\
		-s ',.*CVS.*,,'						\
		-s ',.*Makefile\.in$$,,'				\
		-s ',^test-suite.*,,'					\
		. ${DESTDIR:Q}${PREFIX:Q}/share/examples/swig

.include "../../mk/bsd.pkg.mk"
