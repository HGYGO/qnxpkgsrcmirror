# $NetBSD: Makefile,v 1.2 2008/10/11 09:31:57 uebayasi Exp $
#

DISTNAME=	prime-el-1.5.1.3
PKGNAME=	${EMACS_PKGNAME_PREFIX}${DISTNAME}
CATEGORIES=	inputmethod
MASTER_SITES=	http://prime.sourceforge.jp/src/

MAINTAINER=	obache@NetBSD.org
HOMEPAGE=	http://taiyaki.org/prime/emacs/
COMMENT=	PRIME client for emacsen

PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=	${EMACS_PKGNAME_PREFIX}suikyo-elisp-[0-9]*:../../textproc/suikyo-elisp

GNU_CONFIGURE=	yes
USE_LANGUAGES=	# none

CONFIGURE_ARGS+=	--with-emacs-sitelispdir=${EMACS_LISPPREFIX}
CONFIGURE_ARGS+=	--with-prime-configdir=${PKG_SYSCONFDIR}

PKG_SYSCONFSUBDIR=	prime

CONF_FILES+=	${PREFIX}/share/doc/prime/examples/Custom_prime-el.el \
		${PKG_SYSCONFDIR}/Custom_prime-el.el

.include "../../devel/apel/buildlink3.mk"
.include "../../devel/mell/buildlink3.mk"
.include "../../inputmethod/prime/buildlink3.mk"
.include "../../editors/emacs/modules.mk"
.include "../../mk/bsd.pkg.mk"
