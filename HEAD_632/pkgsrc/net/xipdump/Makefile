# $NetBSD: Makefile,v 1.30 2007/10/09 19:19:14 martti Exp $
#

DISTNAME=	xipdump-1.5.4
PKGREVISION=	3
CATEGORIES=	net
MASTER_SITES=	http://www.lse.epita.fr/twiki/pub/Projects/XipDump/
EXTRACT_SUFX=	.tgz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.lse.epita.fr/twiki/bin/view/Projects/XipDump
COMMENT=	Displays IP packets using X Window System

PLIST_SRC=	${WRKDIR}/PLIST

USE_X11BASE=	yes
GNU_CONFIGURE=	yes
CFLAGS+=	-I${PREFIX}/include
LIBS+=		-L${PREFIX}/lib ${COMPILER_RPATH_FLAG}${PREFIX}/lib -lnet

INSTALLATION_DIRS=	bin lib/X11/app-defaults ${PKGMANDIR}/man8

post-build:
	@${CP} ${PKGDIR}/PLIST ${PLIST_SRC}
	@(cd ${WRKSRC}/data; ${FIND} pkc pkt ! -type d -print | \
		${SED} -e 's|^|share/xipdump/|' >> ${PLIST_SRC})
	@${ECHO} "@dirrm share/xipdump/pkt" >> ${PLIST_SRC}
	@${ECHO} "@dirrm share/xipdump/pkc" >> ${PLIST_SRC}
	@${ECHO} "@dirrm share/xipdump" >> ${PLIST_SRC}

post-install:
	${FIND} ${PREFIX}/share/xipdump -name *.pkc | \
		${XARGS} ${CHMOD} ${DOCMODE}
	${FIND} ${PREFIX}/share/xipdump -name *.pkt | \
		${XARGS} ${CHMOD} ${DOCMODE}
	${CHMOD} ${MANMODE} ${PREFIX}/${PKGMANDIR}/man8/xipdump.8
	${CHMOD} ${SHAREMODE} ${PREFIX}/lib/X11/app-defaults/Xipdump

.include "../../devel/libnet10/buildlink3.mk"
.include "../../x11/libXaw/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
