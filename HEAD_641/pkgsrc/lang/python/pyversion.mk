# $NetBSD: pyversion.mk,v 1.73 2009/07/08 13:55:59 joerg Exp $

# This file determines which Python version is used as a dependency for
# a package.
#
# === User-settable variables ===
#
# PYTHON_VERSION_DEFAULT
#	The preferred Python version to use.
#
#	Possible values: 23 24 25 26
#	Default: 25
#
# === Package-settable variables ===
#
# PYTHON_VERSIONS_ACCEPTED
#	The Python versions that are acceptable for the package. The
#	order of the entries matters, since earlier entries are
#	preferred over later ones.
#
#	Possible values: 26 25 24 23
#	Default: 26 25 24 23
#
# PYTHON_VERSIONS_INCOMPATIBLE
#	The Python versions that are NOT acceptable for the package.
#
#	Possible values: 23 24 25 26
#	Default: (depends on the platform)
#
# PYTHON_FOR_BUILD_ONLY
#	Whether Python is needed only at build time or at run time.
#
#	Possible values: (defined) (undefined)
#	Default: (undefined)
#
# === Defined variables ===
#
# PYPKGPREFIX
#	The prefix to use in PKGNAME for extensions which are meant
#	to be installed for multiple Python versions.
#
#	Example: py25
#
# PYVERSSUFFIX
#	The suffix to executables and in the library path, equal to
#	sys.version[0:3].
#
#	Example: 2.5
#
# Keywords: python
#

.if !defined(PYTHON_PYVERSION_MK)
PYTHON_PYVERSION_MK=	defined

# derive a python version from the package name if possible
# optionally handled quoted package names
.if defined(PKGNAME_REQD) && !empty(PKGNAME_REQD:Mpy[0-9][0-9]-*) || \
    defined(PKGNAME_REQD) && !empty(PKGNAME_REQD:M*-py[0-9][0-9]-*)
PYTHON_VERSION_REQD?= ${PKGNAME_REQD:C/(^.*-|^)py([0-9][0-9])-.*/\2/}
.elif defined(PKGNAME_OLD) && !empty(PKGNAME_OLD:Mpy[0-9][0-9]-*) || \
      defined(PKGNAME_OLD) && !empty(PKGNAME_OLD:M*-py[0-9][0-9]-*)
PYTHON_VERSION_REQD?= ${PKGNAME_OLD:C/(^.*-|^)py([0-9][0-9])-.*/\2/}
.endif

.include "../../mk/bsd.prefs.mk"

BUILD_DEFS+=		PYTHON_VERSION_DEFAULT
BUILD_DEFS_EFFECTS+=	PYPACKAGE

PYTHON_VERSION_DEFAULT?=		25
PYTHON_VERSIONS_ACCEPTED?=		26 25 24 23
PYTHON_VERSIONS_INCOMPATIBLE?=		# empty by default

BUILDLINK_API_DEPENDS.python23?=		python23>=2.3
BUILDLINK_API_DEPENDS.python24?=		python24>=2.4
BUILDLINK_API_DEPENDS.python25?=		python25>=2.5.1
BUILDLINK_API_DEPENDS.python26?=		python26>=2.6

# transform the list into individual variables
.for pv in ${PYTHON_VERSIONS_ACCEPTED}
.if empty(PYTHON_VERSIONS_INCOMPATIBLE:M${pv})
_PYTHON_VERSION_${pv}_OK=	yes
_PYTHON_VERSIONS_ACCEPTED+=	${pv}
.endif
.endfor

#
# choose a python version where to add,
# try to be intelligent
#
# if a version is explicitely required, take it
.if defined(PYTHON_VERSION_REQD)
# but check if it is acceptable first, error out otherwise
. if defined(_PYTHON_VERSION_${PYTHON_VERSION_REQD}_OK)
_PYTHON_VERSION=	${PYTHON_VERSION_REQD}
. endif
.else
# if the default is accepted, it is first choice
. if !defined(_PYTHON_VERSION)
. if defined(_PYTHON_VERSION_${PYTHON_VERSION_DEFAULT}_OK)
_PYTHON_VERSION=	${PYTHON_VERSION_DEFAULT}
. endif
. endif
# prefer an already installed version, in order of "accepted"
. if !defined(_PYTHON_VERSION)
. for pv in ${PYTHON_VERSIONS_ACCEPTED}
. if defined(_PYTHON_VERSION_${pv}_OK)
_PYTHON_VERSION?=	${pv}
. endif
. endfor
. endif
.endif

# No supported version found, annotate to simplify statements below.
.if !defined(_PYTHON_VERSION)
_PYTHON_VERSION=	none
.endif

.if ${_PYTHON_VERSION} == "26"
PYPKGSRCDIR=	../../lang/python26
PYDEPENDENCY=	${BUILDLINK_API_DEPENDS.python26}:${PYPKGSRCDIR}
PYPACKAGE=	python26
PYVERSSUFFIX=	2.6
PYPKGPREFIX=	py26
.elif ${_PYTHON_VERSION} == "25"
PYPKGSRCDIR=	../../lang/python25
PYDEPENDENCY=	${BUILDLINK_API_DEPENDS.python25}:${PYPKGSRCDIR}
PYPACKAGE=	python25
PYVERSSUFFIX=	2.5
PYPKGPREFIX=	py25
.elif ${_PYTHON_VERSION} == "24"
PYPKGSRCDIR=	../../lang/python24
PYDEPENDENCY=	${BUILDLINK_API_DEPENDS.python24}:${PYPKGSRCDIR}
PYPACKAGE=	python24
PYVERSSUFFIX=	2.4
PYPKGPREFIX=	py24
.elif ${_PYTHON_VERSION} == "23"
PYPKGSRCDIR=	../../lang/python23
PYDEPENDENCY=	${BUILDLINK_API_DEPENDS.python23}:${PYPKGSRCDIR}
PYPACKAGE=	python23
PYVERSSUFFIX=	2.3
PYPKGPREFIX=	py23
.else
PKG_FAIL_REASON+=   "No valid Python version"
.endif

PTHREAD_OPTS+=	require
.include "../../mk/pthread.buildlink3.mk"

.if defined(PYTHON_FOR_BUILD_ONLY)
BUILDLINK_DEPMETHOD.python?=	build
.endif
.if defined(PYPKGSRCDIR)
.include "${PYPKGSRCDIR}/buildlink3.mk"
.endif

PYTHONBIN=	${LOCALBASE}/bin/python${PYVERSSUFFIX}
PY_COMPILE_ALL= \
	${PYTHONBIN} ${PREFIX}/lib/python${PYVERSSUFFIX}/compileall.py -q
PY_COMPILE_O_ALL= \
	${PYTHONBIN} -O ${PREFIX}/lib/python${PYVERSSUFFIX}/compileall.py -q

.if exists(${PYTHONBIN})
PYINC!=	${PYTHONBIN} -c "import distutils.sysconfig; \
	print distutils.sysconfig.get_python_inc(0, \"\")" || ${ECHO} ""
PYLIB!=	${PYTHONBIN} -c "import distutils.sysconfig; \
	print distutils.sysconfig.get_python_lib(0, 1, \"\")" || ${ECHO} ""
PYSITELIB!=	${PYTHONBIN} -c "import distutils.sysconfig; \
	print distutils.sysconfig.get_python_lib(0, 0, \"\")" || ${ECHO} ""

PRINT_PLIST_AWK+=	/^${PYINC:S|/|\\/|g}/ \
			{ gsub(/${PYINC:S|/|\\/|g}/, "$${PYINC}"); \
				print; next; }
PRINT_PLIST_AWK+=	/^${PYSITELIB:S|/|\\/|g}/ \
			{ gsub(/${PYSITELIB:S|/|\\/|g}/, "$${PYSITELIB}"); \
				print; next; }
PRINT_PLIST_AWK+=	/^${PYLIB:S|/|\\/|g}/ \
			{ gsub(/${PYLIB:S|/|\\/|g}/, "$${PYLIB}"); \
				print; next; }
.endif

ALL_ENV+=	PYTHON=${PYTHONBIN}

.endif	# PYTHON_PYVERSION_MK
