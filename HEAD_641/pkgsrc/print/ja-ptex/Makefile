# $NetBSD: Makefile,v 1.17 2009/04/08 23:28:34 joerg Exp $

DISTNAME=	ja-ptex-1.0
PKGREVISION=	3
CATEGORIES=	meta-pkgs print japanese

MAINTAINER=	kei@NetBSD.org
COMMENT=	Meta-package for pTeX et al, supports Japanese language

META_PACKAGE=		# empty

DEPENDS+=	ja-ptex-bin>=3.1.9:../../print/ja-ptex-bin
DEPENDS+=	ja-jsclasses>=030624nb3:../../print/ja-jsclasses
DEPENDS+=	ja-vfxdvik>=22.40v.j1.14nb9:../../print/ja-vfxdvik
DEPENDS+=	dvipdfmx>=0.0.0.20021230nb1:../../print/dvipdfmx

MESSAGE_SRC=	${PKGDIR}/MESSAGE

.include "../../mk/bsd.pkg.mk"
