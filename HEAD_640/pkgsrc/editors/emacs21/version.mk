# $NetBSD: version.mk,v 1.1 2008/10/11 09:31:56 uebayasi Exp $

_EMACS_FLAVOR=	emacs
_EMACS_REQD=	emacs>=21<22
_EMACS_PKGDEP.base=
_EMACS_PKGDEP.leim=	leim>=21.${EMACS_VERSION_MINOR}<22:../../editors/leim21

_EMACS_VERSION_MAJOR=	21
_EMACS_VERSION_MINOR=	4
