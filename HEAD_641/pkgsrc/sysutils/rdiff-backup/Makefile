# $NetBSD: Makefile,v 1.37 2009/08/08 16:19:13 wiz Exp $

DISTNAME=	rdiff-backup-1.2.8
CATEGORIES=	sysutils net
MASTER_SITES=	http://savannah.nongnu.org/download/rdiff-backup/

MAINTAINER=	snj@NetBSD.org
HOMEPAGE=	http://www.nongnu.org/rdiff-backup/
COMMENT=	Remote incremental backup utility

PKG_DESTDIR_SUPPORT=	user-destdir

PYDISTUTILSPKG=		yes

PYTHON_VERSIONS_ACCEPTED=	26 25 24

SUBST_CLASSES+=		path
SUBST_STAGE.path=	post-patch
SUBST_FILES.path=	setup.py
SUBST_SED.path=		-e "s|share/man|${PKGMANDIR}|"
SUBST_MESSAGE.path=	Fixing path to manpages.

BUILDLINK_API_DEPENDS.librsync+=	librsync>=0.9.6

post-install:
	${INSTALL_DATA} ${WRKSRC}/examples.html \
		${DESTDIR}${PREFIX}/share/doc/${DISTNAME}

.include "../../devel/librsync/buildlink3.mk"
.include "../../lang/python/application.mk"
.include "../../lang/python/extension.mk"

.include "../../mk/bsd.pkg.mk"
