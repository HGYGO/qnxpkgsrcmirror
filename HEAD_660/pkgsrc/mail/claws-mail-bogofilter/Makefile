# $NetBSD: Makefile,v 1.28 2013/07/24 15:29:22 drochner Exp $
#

PLUGIN_NAME=	bogofilter
.include "../../mail/claws-mail/plugins.mk"

MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	Enables the scanning of incoming mail using Bogofilter

CONFIGURE_ARGS+=	--enable-${PLUGIN_NAME}-plugin

DEPENDS+=	claws-mail-${CLAWS_VERSION}{,nb[0-9]*}:../../mail/claws-mail
DEPENDS+=	bogofilter>=1.1.7:../../mail/bogofilter

.include "../../mk/bsd.pkg.mk"
