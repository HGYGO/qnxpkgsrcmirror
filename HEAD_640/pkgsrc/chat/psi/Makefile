# $NetBSD: Makefile,v 1.53 2008/06/12 02:14:16 joerg Exp $

PSI_VERSION=	0.11
DISTNAME=	psi-${PSI_VERSION}
PKGREVISION=	1
CATEGORIES=	chat
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=psi/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	jdolecek@NetBSD.org
HOMEPAGE=	http://psi-im.org/
COMMENT=	PSI Jabber Client

PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=	qca2-ossl>=2.0.0beta3:../../security/qca2-ossl

DIST_SUBDIR=	${DISTNAME}-20071115-1
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} ${LANG_FILES}
EXTRACT_ONLY=	${DISTNAME}${EXTRACT_SUFX}

USE_TOOLS+=	gmake
USE_LANGUAGES=	c c++
USE_LIBTOOL=	yes
HAS_CONFIGURE=	yes

CONFIG_SHELL=	${SH}

CONFIGURE_ARGS+=	--prefix=${PREFIX:Q}
CONFIGURE_ARGS+=	--qtdir=${QTDIR:Q}
CONFIGURE_ARGS+=	--disable-bundled-qca
CONFIGURE_ARGS+=	--with-zlib-inc=${BUILDLINK_PREFIX.zlib}/include
CONFIGURE_ARGS+=	--with-zlib-lib=${BUILDLINK_PREFIX.zlib}/lib

# no lang files for 0.13 yet
#LANG_FILES=	psi_bg.qm psi_ca.qm psi_eo.qm psi_es.qm psi_fr.qm	\
#		psi_hu.qm psi_mk.qm psi_nl.qm psi_pl.qm psi_pt.qm	\
#		psi_pt_BR.qm psi_sk.qm psi_sl.qm psi_vi.qm psi_zh.qm
LANG_FILES=

.for l in ${LANG_FILES}
SITES.${l}=	http://psi-im.org/files/translation/${PSI_VERSION}/
.endfor

INSTALLATION_DIRS=	bin share/psi share/doc/psi
INSTALL_DIRS=		src
INSTALL_TARGET=		install_target install_sharedfiles
INSTALL_MAKE_FLAGS=	INSTALL_ROOT=${DESTDIR}

# custom install targets, we don't want psi to install the desktop & icon
# stuff
post-install:
	${INSTALL_DATA} ${WRKSRC}/README ${DESTDIR}${PREFIX}/share/doc/psi
	${RM} ${DESTDIR}${PREFIX}/share/psi/README
	${INSTALL_DATA} ${WRKSRC}/COPYING ${DESTDIR}${PREFIX}/share/doc/psi
	${RM} ${DESTDIR}${PREFIX}/share/psi/COPYING
.for f in ${LANG_FILES}
	${INSTALL_DATA} ${DISTDIR}/${DIST_SUBDIR}/${f} ${DESTDIR}${PREFIX}/share/psi
.endfor
	${INSTALL_PROGRAM} ${WRKSRC}/psi ${DESTDIR}${PREFIX}/bin/psi

.include "../../devel/libidn/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../security/qca2/buildlink3.mk"
.include "../../x11/qt4-libs/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
