# $NetBSD: Makefile,v 1.7 2006/03/04 21:30:09 jlam Exp $
#

DISTNAME=		rtptools-1.18
CATEGORIES=		mbone
MASTER_SITES=		http://www.cs.columbia.edu/IRT/software/rtptools/download/

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://www.cs.columbia.edu/IRT/software/rtptools/
COMMENT=		Tools for processing RTP data

GNU_CONFIGURE=		yes
CPPFLAGS+=		-Dunix

HTMLDIR=	${PREFIX}/share/doc/html/rtptools
EGDIR=		${PREFIX}/share/examples/rtptools

post-install:
	${INSTALL_DATA_DIR} ${HTMLDIR}
	${INSTALL_DATA_DIR} ${EGDIR}
	${INSTALL_DATA} ${WRKSRC}/rtptools.html ${HTMLDIR}
	${INSTALL_DATA} ${WRKSRC}/ChangeLog.html ${HTMLDIR}
	${INSTALL_SCRIPT} ${WRKSRC}/multidump ${EGDIR}
	${INSTALL_SCRIPT} ${WRKSRC}/multiplay ${EGDIR}

.include "../../mk/bsd.pkg.mk"
