# $NetBSD: Makefile,v 1.14 2006/03/04 21:30:38 jlam Exp $

# Date-based distfile name for pre-releases leading to 0.6.6.
DISTNAME=	pyca-20031021
PKGNAME=	${DISTNAME:S/pyca-/pyca-0.6.6./}
PKGREVISION=	2
CATEGORIES=	security python
MASTER_SITES=	http://www.pyca.de/download/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.pyca.de/
COMMENT=	Administration tools for X.509/PKIX CA

NO_BUILD=	yes

.include "../../mk/bsd.prefs.mk"

PKG_SYSCONFVAR=			openssl
PKG_SYSCONFSUBDIR=		openssl

.if ${OPSYS} == "NetBSD"
PKG_SYSCONFDIR.openssl?=	/etc/openssl
.endif

PYTHON_PATCH_SCRIPTS=	bin/*.py cgi-bin/*.py sbin/*.py

PYCA_SCRIPT_FIXUP_SED= \
	-e "s|/usr/local/pyca/pylib|${PREFIX}/lib/pyca|g"		\
	-e "s|/etc/openssl/openssl.cnf|${PKG_SYSCONFDIR}/openssl.cnf|g"	\
	-e "s|/home/.*/openssl.cnf|${PKG_SYSCONFDIR}/openssl.cnf|g"	\
	-e "s|/home/.*/pylib|${PREFIX}/lib/pyca|g"

INSTALLATION_DIRS=	bin libexec/cgi-bin sbin

pyca-script-fixup:
	cd ${WRKSRC}; for file in ${PYTHON_PATCH_SCRIPTS}; do \
		${SED} ${PYCA_SCRIPT_FIXUP_SED} \
			<$${file} >$${file}.fixed; \
		${MV} $${file}.fixed $${file}; \
	done

post-configure: pyca-script-fixup

do-install:
	cd ${WRKSRC}; for file in bin/*.py; do				\
		${INSTALL_SCRIPT} $${file} ${PREFIX}/bin;		\
	done
	cd ${WRKSRC}; for file in cgi-bin/*.py; do			\
		${INSTALL_SCRIPT} $${file} ${PREFIX}/libexec/cgi-bin;	\
	done
	cd ${WRKSRC}; for file in sbin/*.py; do				\
		${INSTALL_SCRIPT} $${file} ${PREFIX}/sbin;		\
	done
	${INSTALL_DATA_DIR} ${PREFIX}/lib/pyca
	cd ${WRKSRC}; for file in pylib/*.py; do			\
		${INSTALL_DATA} $${file} ${PREFIX}/lib/pyca;		\
	done
	${INSTALL_DATA_DIR} ${PREFIX}/lib/pyca/openssl
	cd ${WRKSRC}; for file in pylib/openssl/*.py; do		\
		${INSTALL_DATA} $${file} ${PREFIX}/lib/pyca/openssl;	\
	done
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pyca
	cd ${WRKSRC}; for file in conf/*.cnf; do			\
		${INSTALL_DATA} $${file} ${PREFIX}/share/examples/pyca;	\
	done
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/html/pyca
	cd ${WRKSRC}; for file in htdocs/*.html; do			\
		${INSTALL_DATA} $${file} ${PREFIX}/share/doc/html/pyca;	\
	done
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/html/pyca/help
	cd ${WRKSRC}; for file in htdocs/help/*; do			\
		${INSTALL_DATA} $${file} ${PREFIX}/share/doc/html/pyca/help; \
	done
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/html/pyca/ssi
	cd ${WRKSRC}; for file in htdocs/ssi/*.html; do			\
		${INSTALL_DATA} $${file} ${PREFIX}/share/doc/html/pyca/ssi; \
	done

.include "../../lang/python/application.mk"
.include "../../mk/bsd.pkg.mk"
