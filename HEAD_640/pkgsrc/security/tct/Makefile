# $NetBSD: Makefile,v 1.21 2006/03/01 22:48:05 wiz Exp $
#

DISTNAME=	tct-1.09
PKGREVISION=	3
CATEGORIES=	security
MASTER_SITES=	http://www.porcupine.org/forensics/

MAINTAINER=	frazee.23@osu.edu
HOMEPAGE=	http://www.porcupine.org/forensics/tct.html
COMMENT=	Programs to aid post-mortem after a break-in

DEPENDS+=	p5-Date-Manip-[0-9]*:../../devel/p5-Date-Manip

USE_TOOLS+=	perl:run
REPLACE_PERL+=	bin/grave-robber bin/mactime bin/strip_tct_home
REPLACE_PERL+=	extras/bdf extras/ils2mac extras/realpath
REPLACE_PERL+=	lazarus/lazarus

MAKE_ENV+=	PERL5=${PERL5:Q}

do-install:
	${INSTALL_PROGRAM_DIR} ${PREFIX}/tct/bin
	cd ${WRKSRC}/bin &&						\
	for f in grave-robber mactime; do				\
		${INSTALL_SCRIPT} $$f ${PREFIX}/tct/bin;		\
	done;								\
	for f in file icat ils lastcomm major_minor md5 pcat timeout unrm; do \
		${INSTALL_PROGRAM} $$f ${PREFIX}/tct/bin;		\
	done
	cd ${WRKSRC}/extras &&						\
	for f in bdf ils2mac realpath; do				\
		${INSTALL_SCRIPT} $$f ${PREFIX}/tct/bin;		\
	done
	${INSTALL_SCRIPT} ${WRKSRC}/lazarus/lazarus ${PREFIX}/tct/bin
	${INSTALL_PROGRAM_DIR} ${PREFIX}/tct/etc
	cd ${WRKSRC}/etc && ${INSTALL_DATA} magic ${PREFIX}/tct/etc
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tct
	cd ${WRKSRC}/docs &&						\
	for f in README design-notes grave-robber.README lazarus.README mac.README; do \
		${INSTALL_DATA} $$f ${PREFIX}/share/doc/tct;		\
	done
	${INSTALL_DATA_DIR} ${PERL5_INSTALLVENDORLIB}
	cd ${WRKSRC}/lib && ${INSTALL_DATA} *.pl ${PERL5_INSTALLVENDORLIB}
	${INSTALL_PROGRAM_DIR} ${PREFIX}/tct/conf
	cd ${WRKSRC}/conf && ${INSTALL_DATA} paths.pl *.cf ${PREFIX}/tct/conf

.include "../../mk/bsd.pkg.mk"
