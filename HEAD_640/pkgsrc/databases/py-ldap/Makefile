# $NetBSD: Makefile,v 1.37 2008/06/12 02:14:20 joerg Exp $

DISTNAME=	python-ldap-2.3.1
PKGNAME=	${DISTNAME:S/python/${PYPKGPREFIX}/}
PKGREVISION=	1
CATEGORIES=	databases python
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=python-ldap/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://sourceforge.net/projects/python-ldap/
COMMENT=	LDAP client API for Python

PKG_DESTDIR_SUPPORT=	user-destdir

PYDISTUTILSPKG=			yes

PY_LDAP_LIBRARY_DIRS=		${BUILDLINK_PREFIX.openldap-client}/lib
PY_LDAP_INCLUDE_DIRS=		${BUILDLINK_PREFIX.openldap-client}/include
PY_LDAP_LIBS=			ldap_r lber ssl crypto

.include "options.mk"

SUBST_CLASSES+=		setup
SUBST_STAGE.setup=	pre-configure
SUBST_FILES.setup=	setup.cfg
SUBST_SED.setup=	-e "s|@PY_LDAP_LIBRARY_DIRS@|${PY_LDAP_LIBRARY_DIRS}|"
SUBST_SED.setup+=	-e "s|@PY_LDAP_INCLUDE_DIRS@|${PY_LDAP_INCLUDE_DIRS}|"
SUBST_SED.setup+=	-e "s|@PY_LDAP_LIBS@|${PY_LDAP_LIBS}|"

PY_LDAP_DOCDIR=		${PREFIX}/share/doc/py-ldap

USE_TOOLS+=		pax

INSTALLATION_DIRS=	${PY_LDAP_DOCDIR}

post-install:
	cd ${WRKSRC} && pax -rw CHANGES README INSTALL TODO Demo \
		${DESTDIR}${PY_LDAP_DOCDIR}

.include "../../databases/openldap-client/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"
.include "../../lang/python/extension.mk"
.include "../../mk/bsd.pkg.mk"
