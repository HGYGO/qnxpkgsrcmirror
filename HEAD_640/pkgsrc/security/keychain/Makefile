# $NetBSD: Makefile,v 1.24 2007/10/30 19:31:42 martti Exp $

DISTNAME=	keychain-2.6.8
CATEGORIES=	security
MASTER_SITES=	http://www.ibiblio.org/pub/linux/distributions/gentoo/distfiles/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	martti@NetBSD.org
HOMEPAGE=	http://www.gentoo.org/proj/en/keychain/
COMMENT=	Nice ssh-agent front-end
#LICENSE=	gnu-gpl-v2

.if !exists(/usr/bin/ssh-agent)
DEPENDS+=	openssh-[0-9]*:../../security/openssh
.endif

PKG_INSTALLATION_TYPES=	overwrite pkgviews

NO_BUILD=		yes

INSTALLATION_DIRS=	bin ${PKGMANDIR:Q}/man1 share/doc/${PKGBASE:Q}

do-install:
	${INSTALL_SCRIPT} ${WRKSRC:Q}/keychain ${PREFIX:Q}/bin
	${INSTALL_MAN} ${WRKSRC:Q}/keychain.1 ${PREFIX:Q}/${PKGMANDIR:Q}/man1
	${INSTALL_DATA} ${WRKSRC:Q}/README ${PREFIX:Q}/share/doc/${PKGBASE:Q}

.include "../../mk/bsd.pkg.mk"
