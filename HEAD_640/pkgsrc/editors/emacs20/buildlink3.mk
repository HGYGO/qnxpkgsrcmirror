# $NetBSD: buildlink3.mk,v 1.3 2008/10/13 14:00:28 uebayasi Exp $
#

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
EMACS_BUILDLINK3_MK:=	${EMACS_BUILDLINK3_MK}+

.if ${BUILDLINK_DEPTH} == "+"
BUILDLINK_DEPENDS+=	emacs
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nemacs}
BUILDLINK_PACKAGES+=	emacs
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}emacs

.if ${EMACS_BUILDLINK3_MK} == "+"
.include "../../editors/emacs/modules.mk"
BUILDLINK_API_DEPENDS.emacs+=	${_EMACS_REQD}
BUILDLINK_PKGSRCDIR.emacs?=	${_EMACS_PKGDIR}
.endif	# EMACS_BUILDLINK3_MK

BUILDLINK_CONTENTS_FILTER.emacs=	${EGREP} '.*\.el$$|.*\.elc$$'

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
