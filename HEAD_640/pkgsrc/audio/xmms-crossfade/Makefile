# $NetBSD: Makefile,v 1.30 2008/07/14 12:55:58 joerg Exp $
#

DISTNAME=		xmms-crossfade-0.2.9
PKGREVISION=		6
CATEGORIES=		audio
MASTER_SITES=		http://www.mynetcologne.de/~nc-eisenlpe2/xmms-crossfade/ \
			ftp://ftp.falsehope.com/pub/xmms-crossfade/

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://www.mynetcologne.de/~nc-eisenlpe2/xmms-crossfade/
COMMENT=		Crossfading/Gapless Plugin for XMMS

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=		YES
USE_LIBTOOL=		YES

LDFLAGS+=		${LIBOSSAUDIO}
OSS_DEFS+=		-DDEFAULT_OSS_ALT_AUDIO_DEVICE='"${DEVOSSSOUND}"'
MAKE_ENV+=		OSS_DEFS=${OSS_DEFS:Q}

.include "../../audio/xmms/buildlink3.mk"
.include "../../mk/oss.buildlink3.mk"

.if ${OSS_TYPE} == "none"
CONFIGURE_ARGS+=	--disable-oss
.endif

.include "../../mk/bsd.pkg.mk"
