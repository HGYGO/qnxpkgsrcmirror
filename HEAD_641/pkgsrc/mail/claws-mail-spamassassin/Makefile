# $NetBSD: Makefile,v 1.10 2008/10/15 16:22:03 smb Exp $
#
PKG_DESTDIR_SUPPORT=	user-destdir

PLUGIN_NAME=	spamassassin
.include "../../mail/claws-mail/plugins.mk"

MAINTAINER=	smb@NetBSD.org
COMMENT=	Enables the scanning of incoming mail using SpamAssassin

CONFIGURE_ARGS+=	--enable-${PLUGIN_NAME}-plugin

DEPENDS+=	claws-mail-${CLAWS_VERSION}{,nb[0-9]*}:../../mail/claws-mail
DEPENDS+=	spamassassin>=3.2.5:../../mail/spamassassin

.include "../../mail/claws-mail/Makefile.vers"

.include "../../mk/bsd.pkg.mk"
