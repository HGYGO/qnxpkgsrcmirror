# $NetBSD: Makefile,v 1.5 2007/01/08 20:30:42 adam Exp $

PKGNAME=	postgresql80-pltcl-${BASE_VERS}
COMMENT=	PL/Tcl procedural language for the PostgreSQL backend

DEPENDS+=	postgresql80-server>=${BASE_VERS}:../../databases/postgresql80-server

.include "../../databases/postgresql80/Makefile.common"

CONFIGURE_ARGS+=	--with-tcl
CONFIGURE_ARGS+=	--with-tclconfig="${BUILDLINK_PREFIX.tcl}/lib"
CONFIGURE_ENV+=		TCLSH=${TCLSH:Q}
TCLSH=			${BUILDLINK_PREFIX.tcl}/bin/tclsh

BUILD_DIRS=		src/pl/tcl

USE_LIBTOOL=		yes
PKG_LIBTOOL=		${PKG_SHLIBTOOL}

.include "../../databases/postgresql80-client/buildlink3.mk"
.include "../../lang/tcl/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
