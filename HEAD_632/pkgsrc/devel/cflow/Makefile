# $NetBSD: Makefile,v 1.5 2007/07/08 12:35:10 wiz Exp $

DISTNAME=	cflow-1.1
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=cflow/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.gnu.org/software/cflow/
COMMENT=	Code-path flow analyzer for C

GNU_CONFIGURE=		YES
USE_TOOLS+=		yacc lex
INFO_FILES=		# PLIST

SUBST_CLASSES+=		emacs
SUBST_MESSAGE.emacs=	Removing cflow Emacs mode
SUBST_STAGE.emacs=	pre-configure
SUBST_FILES.emacs=	Makefile.in
SUBST_SED.emacs=	-e 's| elisp||g'

.include "../../mk/bsd.pkg.mk"
