# $NetBSD: Makefile,v 1.39 2008/11/28 11:45:40 obache Exp $

DISTNAME=		scsh-0.6.7
CATEGORIES=		shells lang
MASTER_SITES=		http://ftp.scsh.net/pub/scsh/0.6/  \
			${MASTER_SITE_SOURCEFORGE:=scsh/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=		http://www.scsh.net/
COMMENT=		Unix shell embedded into Scheme, with access to all Posix calls

NOT_FOR_PLATFORM=	*-*-alpha	# Needs scheme

GNU_CONFIGURE=		yes

BUILD_TARGET=		enough
TEST_TARGET=		check

PKG_SHELL=		bin/scsh

INSTALLATION_DIRS=	share/doc

# Build references from dumped environment variables is not a problem.
CHECK_WRKREF_SKIP+=	lib/scsh/scsh.image
CHECK_WRKREF_SKIP+=	lib/scsh/stripped-scsh.image

post-configure:
	cd ${WRKSRC}/scsh/bsd; ${SED} -e '/LIBGEN/d' sysdep.h >xx ; ${MV} xx sysdep.h

post-install:
	@strip ${PREFIX}/bin/scsh
	(cd ${WRKSRC} ; \
	 ${INSTALL_DATA} README RELEASE COPYING ${PREFIX}/lib/scsh/doc)
	${RM} -f ${PREFIX}/share/doc/scsh
	${LN} -fs ${PREFIX}/lib/scsh/doc ${PREFIX}/share/doc/scsh

.include "../../mk/bsd.pkg.mk"
