# $NetBSD: Makefile,v 1.14 2007/02/17 20:59:48 wiz Exp $
#

DISTNAME=		fhist-1.16
CATEGORIES=		devel scm
MASTER_SITES=		http://fhist.sourceforge.net/

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://fhist.sourceforge.net/
COMMENT=		File history and comparison tools

USE_TOOLS+=		gsoelim msgfmt yacc
GNU_CONFIGURE=		YES
USE_PKGLOCALEDIR=	YES

CONFIGURE_ARGS+=	--with-nlsdir=${PREFIX}/${PKGLOCALEDIR}/locale
CONFIGURE_ARGS+=	--datadir=${PREFIX}/share/doc

TEST_TARGET=		sure

.include "../../devel/gettext-lib/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
