# $NetBSD: Makefile,v 1.54 2008/06/12 02:14:57 joerg Exp $

DISTNAME=	Eterm-0.9.4
PKGNAME=	${DISTNAME:S/^E/e/}
PKGREVISION=	1
CATEGORIES=	x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=eterm/} \
		ftp://ftp.dti.ad.jp/pub/X/Eterm/
DISTFILES=	${ETERM_SRCS} ${PIXMAP_FILES}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.eterm.org/
COMMENT=	Enlightened terminal emulator for the X Window System

PKG_DESTDIR_SUPPORT=	user-destdir

SITES.Eterm-bg-scale-1.tar.gz=	${MASTER_SITE_BACKUP}
SITES.Eterm-bg-scale-2.tar.gz=	${MASTER_SITE_BACKUP}
SITES.Eterm-bg-tile.tar.gz=	${MASTER_SITE_BACKUP}

EXTRACT_ONLY=		${ETERM_SRCS}
ETERM_SRCS=		${DISTNAME}${EXTRACT_SUFX}
PIXMAP_FILES=		Eterm-bg-scale-1.tar.gz Eterm-bg-scale-2.tar.gz \
			Eterm-bg-tile.tar.gz

USE_TOOLS+=		perl:run pax
USE_LIBTOOL=		YES
GNU_CONFIGURE=		YES
CONFIGURE_ARGS+=	--sysconfdir=${PKG_SYSCONFDIR:Q}

PKG_SYSCONFSUBDIR=	Eterm
OWN_DIRS=		${PKG_SYSCONFDIR}/themes

.include "../../mk/bsd.prefs.mk"

# Install Eterm as setuid root so that utmp logging function correctly.
#
# XXX: If installed setuid root on Solaris, pseudo-tty is owned by root,
#      and it's not possible to resume a screen session as a normal user.
#      (this behaviour should be reviewed again, since this workaround
#      is 2 years and several version updates old.)
#
.if ${OPSYS} != "SunOS"
SPECIAL_PERMS=		${PREFIX}/bin/Eterm ${SETUID_ROOT_PERMS}
.endif

.include "options.mk"

post-extract:
	${LN} -sf ${WRKSRC} ${WRKDIR}/Eterm
	set -e; \
	cd ${WRKDIR} && \
	for f in ${PIXMAP_FILES}; do \
		pax -O -zrf ${DISTDIR}/"$$f"; \
	done

.include "../../devel/libast/buildlink3.mk"
.include "../../graphics/imlib2/buildlink3.mk"
.include "../../x11/libXext/buildlink3.mk"
.include "../../x11/libXmu/buildlink3.mk"
.include "../../x11/libXres/buildlink3.mk"
.include "../../x11/xextproto/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
