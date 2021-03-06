# $NetBSD: buildlink3.mk,v 1.8 2006/07/08 23:10:40 jlam Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
TDB_BUILDLINK3_MK:=	${TDB_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	tdb
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Ntdb}
BUILDLINK_PACKAGES+=	tdb
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}tdb

.if !empty(TDB_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.tdb+=		tdb>=1.0.6
BUILDLINK_ABI_DEPENDS.tdb+=	tdb>=1.0.6nb2
BUILDLINK_PKGSRCDIR.tdb?=	../../databases/tdb
.endif	# TDB_BUILDLINK3_MK

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
