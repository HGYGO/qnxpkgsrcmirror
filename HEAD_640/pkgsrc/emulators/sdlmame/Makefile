# $NetBSD: Makefile,v 1.1.1.1 2009/01/18 16:02:17 wiz Exp $
#

# Don't update to 0.XXXuN, those are development snapshots.
DISTNAME=		sdlmame0129
PKGNAME=		sdlmame-0.129

COMMENT=		Multiple Arcade Machine Emulator, SDL port

CONFLICTS=		xmame-[0-9]*

MAKE_FILE=		makefile

DOCDIR=			share/doc/sdlmame
INSTALLATION_DIRS=	bin ${DOCDIR}

do-install:
	set -e; \
	for prg in chdman jedutil mame romcmp; \
	do \
		${INSTALL_PROGRAM} ${WRKSRC}/"$$prg" ${DESTDIR}${PREFIX}/bin; \
	done
	${INSTALL_DATA} ${WRKSRC}/SDLMAME.txt ${DESTDIR}${PREFIX}/${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/docs/license.txt ${DESTDIR}${PREFIX}/${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/docs/mame.txt ${DESTDIR}${PREFIX}/${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/docs/windows.txt ${DESTDIR}${PREFIX}/${DOCDIR}

.include "Makefile.common"
