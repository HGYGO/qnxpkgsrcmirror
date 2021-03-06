# $NetBSD: hacks.mk,v 1.2 2008/11/13 17:36:54 chuck Exp $

### [Tue Jan  9 15:57:05 EST 2007 : tv]
### Interix has u_int64_t, but not uint64_t
### (gdevpdfe.c doesn't use the autoconf test based int64 type,
### but absolutely requires a 64-bit unsigned int)
###
.if ${OPSYS} == "Interix"
PKG_HACKS+=		interix-uint64_t
CPPFLAGS.Interix+=	-Duint64_t=u_int64_t
.endif

### [ Thu Nov 13 12:30:45 EST 2008 : chuck]
### gs has hand-rolled shared lib handling that doesn't do the right
### thing on Darwin by default, you need to reconfigure unix-dll.mak
### to make it work.
.if ${OPSYS} == "Darwin"
post-patch:
	${SED} -e 's/^#Darwin#//' ${WRKSRC}/src/unix-dll.mak > \
		${WRKSRC}/src/unix-darwin.mak
	${MV} ${WRKSRC}/src/unix-darwin.mak ${WRKSRC}/src/unix-dll.mak
.endif
