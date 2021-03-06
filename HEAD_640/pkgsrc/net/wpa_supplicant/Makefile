# $NetBSD: Makefile,v 1.3 2009/01/22 21:19:17 roy Exp $
#

DISTNAME=	wpa_supplicant-0.6.7
CATEGORIES=	net
MASTER_SITES=	http://hostap.epitest.fi/releases/

MAINTAINER=	reed@reedmedia.net
HOMEPAGE=	http://hostap.epitest.fi/wpa_supplicant/
COMMENT=	Wireless connection client daemon for WPA, WPA2, and WEP

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LANGUAGES=	c
USE_TOOLS+=	gmake

BUILD_DIRS=	wpa_supplicant

INSTALLATION_DIRS=	sbin ${PKGMANDIR}/man5 ${PKGMANDIR}/man8

PKG_OPTIONS_VAR=	PKG_OPTIONS.wpa_supplicant
PKG_SUPPORTED_OPTIONS=	dbus
PKG_SUGGESTED_OPTIONS=	dbus

.include "../../mk/bsd.options.mk"

post-extract:
	${CP} ${FILESDIR}/defconfig ${WRKSRC}/wpa_supplicant/.config
	${CAT} ${FILESDIR}/defconfig.${OPSYS} >> ${WRKSRC}/wpa_supplicant/.config
.if !empty(PKG_OPTIONS:Mdbus)
	${ECHO} xxCONFIG_CTRL_IFACE_DBUS=y >> ${WRKSRC}/wpa_supplicant/.config
.endif

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/wpa_supplicant/wpa_cli \
		${DESTDIR}${PREFIX}/sbin/
	${INSTALL_PROGRAM} ${WRKSRC}/wpa_supplicant/wpa_passphrase \
		${DESTDIR}${PREFIX}/sbin/
	${INSTALL_PROGRAM} ${WRKSRC}/wpa_supplicant/wpa_supplicant \
		${DESTDIR}${PREFIX}/sbin/
	${INSTALL_MAN} ${WRKSRC}/wpa_supplicant/doc/docbook/wpa_supplicant.conf.5 \
		${DESTDIR}${PREFIX}/${PKGMANDIR}/man5/
	${INSTALL_MAN} ${WRKSRC}/wpa_supplicant/doc/docbook/wpa_cli.8 \
		${DESTDIR}${PREFIX}/${PKGMANDIR}/man8/
	${INSTALL_MAN} ${WRKSRC}/wpa_supplicant/doc/docbook/wpa_passphrase.8 \
		${DESTDIR}${PREFIX}/${PKGMANDIR}/man8/
	${INSTALL_MAN} ${WRKSRC}/wpa_supplicant/doc/docbook/wpa_supplicant.8 \
		${DESTDIR}${PREFIX}/${PKGMANDIR}/man8/

.if !empty(PKG_OPTIONS:Mdbus)
.include "../../sysutils/dbus/buildlink3.mk"
.endif

.include "../../net/libpcap/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
