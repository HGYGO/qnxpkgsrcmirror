# $NetBSD: Makefile,v 1.43 2008/06/18 11:12:54 wiz Exp $

DISTNAME=		vnc-3.3.3r2
PKGNAME=		vnc-3.3.3.2
PKGREVISION=		3
CATEGORIES=		net x11
MASTER_SITES=		ftp://ftp.uk.research.att.com/pub/vnc/dist/
DISTFILES=		vnc-3.3.3r2_unixsrc.tgz \
			vnc-3.3.2r2_doc.tgz

PATCH_SITES=		ftp://ftp.kame.net/pub/kame/misc/
PATCHFILES=		vnc-3.3.3r2-v6-20010421.diff.gz
PATCH_DIST_STRIP=	-p1

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://www.uk.research.att.com/vnc/
COMMENT=		Display X and Win32 desktops on remote X/Win32/Java displays

DEPENDS+=		vncviewer-[0-9]*:../../net/vncviewer

WRKSRC=			${WRKDIR}/vnc_unixsrc
CRYPTO=			yes
NO_INSTALL_MANPAGES=	yes
USE_IMAKE=		yes
USE_TOOLS+=		perl:run
BUILD_DEFS+=		IPV6_READY

BUILD_TARGET=		World

MAKE_ENV+= CC=${CC:Q}	#for make imake in Xvnc/config/imake

# We have to frob a few things, and we want our own permissions, so it's easier
# to do the install ourselves.

.include "../../mk/bsd.prefs.mk"

post-install:
	${INSTALL_PROGRAM} ${WRKSRC}/Xvnc/programs/Xserver/Xvnc ${PREFIX}/bin/Xvnc
.if ${OPSYS} == "SunOS"
	${CHOWN} ${ROOT_USER}:${ROOT_GROUP} ${PREFIX}/bin/Xvnc
	${CHMOD} 2555 ${PREFIX}/bin/Xvnc
.endif
	${INSTALL_PROGRAM} ${WRKSRC}/vncconnect/vncconnect ${PREFIX}/bin/vncconnect
	${SED} -e 's|/usr/local/vnc/classes|${PREFIX}/share/vnc/classes|g' \
		-e 's|/usr/bin/perl|${PERL5}|g' \
		< ${WRKSRC}/vncserver \
		> ${WRKSRC}/vncserver.local
	${INSTALL_SCRIPT} ${WRKSRC}/vncserver.local ${PREFIX}/bin/vncserver
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/vnc
	cd ${WRKDIR}; \
	${INSTALL_DATA} *.GIF *.css *.gif *.jpg *.htm *.html *.pdf \
	  ${PREFIX}/share/doc/vnc

.include "../../x11/libXext/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
