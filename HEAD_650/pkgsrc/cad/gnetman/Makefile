# $NetBSD: Makefile,v 1.13 2013/06/06 12:54:07 wiz Exp $
#

DISTNAME=		gnetman-11Feb05
PKGNAME=		gnetman-20050211
PKGREVISION=		5
CATEGORIES=		cad
MASTER_SITES=		http://www.viasic.com/opensource/

MAINTAINER=		dmcmahill@NetBSD.org
HOMEPAGE=		http://www.viasic.com/opensource/
COMMENT=		Advanced Netlister and Netlist Manipulation Database for gEDA

USE_PKGLOCALEDIR=	yes
GNU_CONFIGURE=		yes
CONFIGURE_ENV+=		TCL_CONFIG_SH=${BUILDLINK_PREFIX.tcl}/lib/tclConfig.sh

post-extract:
	${RM} ${WRKSRC}/src/include/tcl.h
	${RM} ${WRKSRC}/src/include/tk.h

.include "../../lang/tcl/buildlink3.mk"
.include "../../x11/tk/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
