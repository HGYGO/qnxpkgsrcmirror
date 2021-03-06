# $NetBSD: options.mk,v 1.5 2008/07/24 22:39:30 obache Exp $

PKG_OPTIONS_VAR=	PKG_OPTIONS.libsndfile
PKG_OPTIONS_OPTIONAL_GROUPS=	output
PKG_OPTIONS_GROUP.output=	oss sun

SNDFILE_OUTPUT.NetBSD=		sun
SNDFILE_OUTPUT.OpenBSD=		sun
SNDFILE_OUTPUT.SunOS=		sun

.include "../../mk/bsd.fast.prefs.mk"

.if !defined(SNDFILE_OUTPUT.${OPSYS})
CHECK_BUILTIN.oss:=	yes
.  include "../../mk/oss.builtin.mk"
CHECK_BUILTIN.oss:=	no
.  if defined(IS_BUILTIN.oss) && !empty(IS_BUILTIN.oss:M[yY][eE][sS])
SNDFILE_OUTPUT.${OPSYS}?=	oss
.  endif
.endif

PKG_SUGGESTED_OPTIONS=		${SNDFILE_OUTPUT.${OPSYS}}

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Moss)
.include "../../mk/oss.buildlink3.mk"
OSS_DEFS=	-DDEV_DSP=\"${DEVOSSAUDIO:Q}\" -DUSE_OSS=1
MAKE_ENV+=	AM_CFLAGS=${OSS_DEFS:Q}
.elif !empty(PKG_OPTIONS:Msun)
DEVSUNAUDIO?=	/dev/audio
SUN_DEFS=	-DUSE_SUN -DDEV_SUN=\"${DEVSUNAUDIO:Q}\"
MAKE_ENV+=	AM_CFLAGS=${SUN_DEFS:Q}
.endif
