# $NetBSD: modules.mk,v 1.23 2008/06/19 14:30:45 taca Exp $

.if !defined(_RUBY_MODULE_MK)
_RUBY_MODULE_MK=	# defined

.include "../../lang/ruby/rubyversion.mk"

.if defined(NO_BUILD) && empty(NO_BUILD:M[Nn][Oo])
DEPENDS+= ruby${RUBY_VER}-base>=${RUBY_REQD}:../../lang/ruby${RUBY_VER}-base
.else
.include "../../lang/ruby/buildlink3.mk"
.endif

CONFIGURE_ENV+=		RUBY=${RUBY:Q} RDOC=${RDOC:Q}

#
# extconf.rb support
#
# RUBY_EXTCONF		specify extconf script name (default: extconf.rb).
# RUBY_EXTCONF_CHECK	make sure to check existence of Makefile after
#			executing extconf script (default: yes).
# RUBY_EXTCONF_MAKEFILE	name of Makefile checked by RUBY_EXTCONF_CHECK
#			(default: Makefile)
#
.if defined(USE_RUBY_EXTCONF) && empty(USE_RUBY_EXTCONF:M[nN][oO])

RUBY_EXTCONF?=		extconf.rb
INSTALL_TARGET?=	site-install
CONFIGURE_ARGS+=	${RUBY_EXTCONF_ARGS}
RUBY_EXTCONF_ARGS?=	--with-opt-dir=${PREFIX:Q} --vendor
RUBY_EXTCONF_CHECK?=	yes
RUBY_EXTCONF_MAKEFILE?=	Makefile

do-configure:	ruby-extconf-configure

.if defined(RUBY_EXTCONF_SUBDIRS)
ruby-extconf-configure:
.for d in ${RUBY_EXTCONF_SUBDIRS}
	@${ECHO_MSG} "===>  Running ${RUBY_EXTCONF} in ${d} to configure"
	${_PKG_SILENT}${_PKG_DEBUG}cd ${WRKSRC}/${d}; \
	${SETENV} ${CONFIGURE_ENV} ${RUBY} ${RUBY_EXTCONF} ${CONFIGURE_ARGS}
.if empty(RUBY_EXTCONF_CHECK:M[nN][oO])
	${_PKG_SILENT}${_PKG_DEBUG}cd ${WRKSRC}/${d}; \
		${TEST} -f ${RUBY_EXTCONF_MAKEFILE}
.endif
.endfor

.if !target(do-build)
do-build:	ruby-extconf-build

ruby-extconf-build:
.for d in ${RUBY_EXTCONF_SUBDIRS}
	@${ECHO_MSG} "===>  Building ${d}"
	${_PKG_SILENT}${_PKG_DEBUG}cd ${WRKSRC}/${d}; ${SETENV} ${MAKE_ENV} ${MAKE} ${BUILD_TARGET}
.endfor
.endif

.if !target(do-install)
do-install:	ruby-extconf-install

ruby-extconf-install:
.for d in ${RUBY_EXTCONF_SUBDIRS}
	@${ECHO_MSG} "===>  Installing ${d}"
	${_PKG_SILENT}${_PKG_DEBUG}cd ${WRKSRC}/${d}; ${SETENV} ${INSTALL_ENV} ${MAKE_ENV} ${MAKE} ${INSTALL_TARGET}
.endfor
.endif

.else
ruby-extconf-configure:
	@${ECHO_MSG} "===>  Running ${RUBY_EXTCONF} to configure"
	${_PKG_SILENT}${_PKG_DEBUG}cd ${WRKSRC}; \
	${SETENV} ${CONFIGURE_ENV} ${RUBY} ${RUBY_EXTCONF} ${CONFIGURE_ARGS}
.if empty(RUBY_EXTCONF_CHECK:M[nN][oO])
	${_PKG_SILENT}${_PKG_DEBUG}cd ${WRKSRC}/${d}; \
		${TEST} -f ${RUBY_EXTCONF_MAKEFILE}
.endif
.endif

#
# setup.rb support
#
# RUBY_SETUP		specify setup script name (default: setup.rb).
#
.elif defined(USE_RUBY_SETUP) && empty(USE_RUBY_SETUP:M[nN][oO])

RUBY_SETUP?=		setup.rb

.if !target(do-configure)
do-configure:	ruby-setup-configure

ruby-setup-configure:
	@${ECHO_MSG} "===>  Running ${RUBY_SETUP} to configure"
	${_PKG_SILENT}${_PKG_DEBUG}cd ${WRKSRC}; \
	${SETENV} ${CONFIGURE_ENV} ${RUBY} ${RUBY_SETUP} config ${CONFIGURE_ARGS}
.endif

.if !target(do-build)
do-build:	ruby-setup-build

ruby-setup-build:
	@${ECHO_MSG} "===>  Running ${RUBY_SETUP} to build"
	${_PKG_SILENT}${_PKG_DEBUG}cd ${WRKSRC}; \
	${SETENV} ${MAKE_ENV} ${RUBY} ${RUBY_SETUP} setup
.endif

.if !target(do-install)
do-install:	ruby-setup-install

_RUBY_SETUP_INSTALLARGS=   ${INSTALL_TARGET}
.if ${_USE_DESTDIR} != "no"
_RUBY_SETUP_INSTALLARGS+=   --prefix=${DESTDIR:Q}
.endif

ruby-setup-install:
	@${ECHO_MSG} "===>  Running ${RUBY_SETUP} to ${INSTALL_TARGET}"
	${_PKG_SILENT}${_PKG_DEBUG}cd ${WRKSRC}; \
	${SETENV} ${INSTALL_ENV} ${MAKE_ENV} ${RUBY} ${RUBY_SETUP} ${_RUBY_SETUP_INSTALLARGS}
.endif

#
# install.rb support
#
# USE_RUBY_INSTALL	use simple install.rb script to install
#			(default: undefined)
# RUBY_SIMPLE_INSTALL	name of simple install.rb script (default: install.rb)
#
.elif defined(USE_RUBY_INSTALL) && empty(USE_RUBY_INSTALL:M[nN][oO])

RUBY_SIMPLE_INSTALL?=	install.rb
INSTALL_TARGET?=	# empty

SUBST_CLASSES+=		rinstall
SUBST_STAGE.rinstall=	pre-install
SUBST_FILES.rinstall=	${RUBY_SIMPLE_INSTALL}
SUBST_SED.rinstall=	-e "s|'sitedir'|'vendordir'|g"
SUBST_SED.rinstall+=	-e "s|'sitelibdir'|'vendorlibdir'|g"
SUBST_SED.rinstall+=	-e 's|"sitelibdir"|"vendorlibdir"|g'
SUBST_SED.rinstall+=	-e 's|/site_ruby/|/vendor_ruby/|g'
SUBST_MESSAGE.rinstall=	Fixing ${RUBY_SIMPLE_INSTALL} files.

.if !target(do-install)
do-install:	ruby-simple-install

ruby-simple-install:
	@${ECHO_MSG} "===>  Running ${RUBY_SIMPLE_INSTALL} to ${INSTALL_TARGET}"
	${_PKG_SILENT}${_PKG_DEBUG}cd ${WRKSRC}; \
	${SETENV} ${INSTALL_ENV} ${MAKE_ENV} ${RUBY} ${RUBY_SIMPLE_INSTALL} ${INSTALL_TARGET}
.endif
.endif # USE_RUBY_INSTALL

.include "replace.mk"

PRINT_PLIST_AWK+=	/^@dirrm ${RUBY_SITEARCHLIB:S|/|\\/|g}$$/ \
			{ next; }
PRINT_PLIST_AWK+=	/^@dirrm ${RUBY_SITELIB:S|/|\\/|g}$$/ \
			{ next; }
PRINT_PLIST_AWK+=	/^@dirrm ${RUBY_VENDORARCHLIB:S|/|\\/|g}$$/ \
			{ next; }
PRINT_PLIST_AWK+=	/^@dirrm ${RUBY_VENDORLIB:S|/|\\/|g}$$/ \
			{ next; }

.endif
