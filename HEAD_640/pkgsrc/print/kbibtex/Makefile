# $NetBSD: Makefile,v 1.12 2008/06/10 10:11:21 markd Exp $

DISTNAME=		kbibtex-0.2.1
PKGREVISION=		1
CATEGORIES=		print kde
MASTER_SITES=		http://www.unix-ag.uni-kl.de/~fischer/kbibtex/download/
EXTRACT_SUFX=		.tar.bz2

MAINTAINER=		markd@NetBSD.org
HOMEPAGE=		http://www.unix-ag.uni-kl.de/~fischer/kbibtex/
COMMENT=		BibTeX editor for KDE

PKG_DESTDIR_SUPPORT=	user-destdir

USE_TOOLS+=		gmake perl msgfmt
USE_LANGUAGES=		c c++
USE_LIBTOOL=		yes
GNU_CONFIGURE=		yes

.include "../../meta-pkgs/kde3/kde3.mk"
.include "../../x11/kdelibs3/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
