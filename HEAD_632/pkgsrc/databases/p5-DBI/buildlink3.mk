# $NetBSD: buildlink3.mk,v 1.12 2006/07/08 23:10:40 jlam Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
P5_DBI_BUILDLINK3_MK:=	${P5_DBI_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	p5-DBI
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Np5-DBI}
BUILDLINK_PACKAGES+=	p5-DBI
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}p5-DBI

.if !empty(P5_DBI_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.p5-DBI+=	p5-DBI>=1.48nb1
BUILDLINK_PKGSRCDIR.p5-DBI?=	../../databases/p5-DBI
BUILDLINK_INCDIRS.p5-DBI?=	${PERL5_SUB_INSTALLVENDORARCH}/auto/DBI

# We want all of the arch-dependent DBI files.
BUILDLINK_CONTENTS_FILTER.p5-DBI?=	${GREP} '/auto/DBI/'
.endif	# P5_DBI_BUILDLINK3_MK

.include "../../lang/perl5/buildlink3.mk"

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
