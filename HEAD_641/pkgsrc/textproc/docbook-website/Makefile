# $NetBSD: Makefile,v 1.26 2009/07/07 22:12:02 joerg Exp $
#

DISTNAME=	docbook-website-2.6.0
PKGREVISION=	3
CATEGORIES=	textproc
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=docbook/}

MAINTAINER=	grant@NetBSD.org
HOMEPAGE=	http://docbook.sourceforge.net/
COMMENT=	DocBook XML DTD for building websites

PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=	docbook-simple-[0-9]*:../../textproc/docbook-simple
DEPENDS+=	docbook-xsl>=1.58:../../textproc/docbook-xsl

USE_LANGUAGES=	# empty
USE_TOOLS+=	pax
NO_BUILD=	YES
NO_CONFIGURE=	YES

DOCDIR=		${PREFIX}/share/doc/docbook-website
DTDDIR=		${PREFIX}/share/xml/website
EGDIR=		${PREFIX}/share/examples/docbook-website

XML_CATALOGS=	${DTDDIR}/catalog.xml
SGML_CATALOGS=	${DTDDIR}/catalog

INSTALLATION_DIRS=	${DOCDIR} ${DTDDIR} ${EGDIR}

do-install:
	cd ${WRKSRC} && ${FIND} . -name "*.orig" -exec ${RM} {} \;
	cd ${WRKSRC} && pax -rwpm ChangeLog README VERSION \
		RELEASE-NOTES.html RELEASE-NOTES.txt RELEASE-NOTES.xml \
		TODO ${DESTDIR}${DOCDIR}
	cd ${WRKSRC}/example && pax -rwpm . ${DESTDIR}${EGDIR}
	cd ${WRKSRC} && pax -rwpm VERSION extensions schema xsl \
		${DESTDIR}${DTDDIR}
	${INSTALL_DATA} ${WRKSRC}/catalog.xml ${WRKSRC}/catalog ${DESTDIR}${DTDDIR}

.include "../../textproc/xmlcatmgr/catalogs.mk"
.include "../../mk/bsd.pkg.mk"
