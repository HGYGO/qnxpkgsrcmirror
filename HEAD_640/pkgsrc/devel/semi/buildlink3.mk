# $NetBSD: buildlink3.mk,v 1.1 2007/10/29 12:41:17 uebayasi Exp $
#

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
SEMI_BUILDLINK3_MK:=	${SEMI_BUILDLINK3_MK}+

.if ${BUILDLINK_DEPTH} == "+"
BUILDLINK_DEPENDS+=	semi
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nsemi}
BUILDLINK_PACKAGES+=	semi
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}semi

.if ${SEMI_BUILDLINK3_MK} == "+"
BUILDLINK_API_DEPENDS.semi+=	${EMACS_PKGNAME_PREFIX}semi>=1.14
BUILDLINK_PKGSRCDIR.semi?=	../../devel/semi
.endif	# SEMI_BUILDLINK3_MK

BUILDLINK_CONTENTS_FILTER.semi=	${EGREP} '.*\.el$$|.*\.elc$$'

.include "../../devel/flim/buildlink3.mk"

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
