# $NetBSD: buildlink3.mk,v 1.2 2008/05/14 16:40:20 drochner Exp $

BUILDLINK_DEPMETHOD.compiz-bcop?=	build

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
COMPIZ_BCOP_BUILDLINK3_MK:=	${COMPIZ_BCOP_BUILDLINK3_MK}+

.if ${BUILDLINK_DEPTH} == "+"
BUILDLINK_DEPENDS+=	compiz-bcop
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Ncompiz-bcop}
BUILDLINK_PACKAGES+=	compiz-bcop
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}compiz-bcop

.if ${COMPIZ_BCOP_BUILDLINK3_MK} == "+"
BUILDLINK_API_DEPENDS.compiz-bcop+=	compiz-bcop>=0.6.0
BUILDLINK_PKGSRCDIR.compiz-bcop?=	../../devel/compiz-bcop
.endif	# COMPIZ_BCOP_BUILDLINK3_MK

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH:S/+$//}
