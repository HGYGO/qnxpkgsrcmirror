# $NetBSD: Makefile,v 1.13 2007/12/12 20:42:30 wiz Exp $
#

DISTNAME=	dvi2tty
PKGNAME=	dvi2tty-1.0
CATEGORIES=	converters
MASTER_SITES=	${MASTER_SITE_LOCAL}
#MASTER_SITES=	ftp://tug.ctan.org/pub/tex-archive/dviware/

MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	Program for previewing DVI files

LICENSE=	no-commercial-use

MAKE_FLAGS+=	CFLAGS=${CFLAGS:M*:Q}

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1

pre-patch:
	cd ${WRKSRC};						\
	    for p in dvi2tty.patch dvi2tty-latin1.patch;	\
	    do							\
		${PATCH} < $$p;					\
	    done

do-install:
	${INSTALL_PROGRAM} \
		${WRKSRC}/disdvi ${WRKSRC}/dvi2tty ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/dvi2tty.1 ${PREFIX}/${PKGMANDIR}/man1

.include "../../mk/bsd.pkg.mk"
