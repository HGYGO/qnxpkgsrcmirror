# $NetBSD: Makefile,v 1.7 2008/03/13 17:38:48 joerg Exp $
#

PKGNAME=	nagios-plugin-pgsql-${PLUGINSVERSION}
PKGREVISION=	3
CATEGORIES=	net sysutils databases

MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	Nagios pgsql plugin

DEPENDS+=	nagios-plugins-${PLUGINSVERSION}{,nb[0-9]*}:../../net/nagios-plugins

CONFIGURE_ARGS+=	--with-pgsql=${BUILDLINK_PREFIX.pgsql-lib}
#CPPFLAGS+=		-I${PGSQL_PREFIX}/include/pgsql

.include "../../net/nagios-plugins/Makefile.common"

BINARY_TARGET=	check_pgsql

.include "../../net/nagios-plugins/Makefile.plugin"
.include "../../mk/pgsql.buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
