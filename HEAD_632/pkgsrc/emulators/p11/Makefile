# $NetBSD: Makefile,v 1.16 2007/01/27 12:02:16 wiz Exp $
#

DISTNAME=	p11-2.10i
CATEGORIES=	emulators
MASTER_SITES=	http://people.freebsd.org/~harti/p11/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	packages@grumpf.hope-2000.org
COMMENT=	PDP11 emulator

GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--with-begemot=${PREFIX:Q}
USE_LIBTOOL=		yes
USE_TOOLS+=		gmake

.include "../../mk/bsd.prefs.mk"

# bfp, tap, and tun tests taken from p11 configure script
.if exists(/dev/bpf0)
PLIST_SUBST+=		BPF=
.else
PLIST_SUBST+=		BPF="@comment "
.endif
.if exists(/dev/tap0) || exists(/dev/net/tun)
PLIST_SUBST+=		TAP=
.elif ${OPSYS} == "DragonFly"
PLIST_SUBST+=		TAP=		# DragonFly has TAP
.else
PLIST_SUBST+=		TAP="@comment "
.endif
.if exists(/dev/tun) || exists(/dev/tun0) || exists(/dev/net/tun) || ${OPSYS} == "DragonFly"
PLIST_SUBST+=		TUN=
.else
PLIST_SUBST+=		TUN="@comment "
.endif

# Force the bpf, tun, and tap epp backends to be built on DragonFly.
.if ${OPSYS} == "DragonFly"
CONFIGURE_ENV+=		ac_cv_epp_bpf=yes ac_cv_epp_tun=yes ac_cv_epp_tap=yes
.endif

# override MAKEFLAGS in the build and install stages
do-build:
	cd ${WRKSRC} && ${GMAKE} ${BUILD_TARGET} MAKEFLAGS=

do-install:
	cd ${WRKSRC} && ${GMAKE} ${INSTALL_TARGET} MAKEFLAGS=

.include "../../devel/libbegemot/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
