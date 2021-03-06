# $NetBSD: buildlink3.mk,v 1.1.1.1 2006/11/03 17:59:48 joerg Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
LIBXDMCP_BUILDLINK3_MK:=	${LIBXDMCP_BUILDLINK3_MK}+

.if ${BUILDLINK_DEPTH} == "+"
BUILDLINK_DEPENDS+=	libXdmcp
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:NlibXdmcp}
BUILDLINK_PACKAGES+=	libXdmcp
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}libXdmcp

.if ${LIBXDMCP_BUILDLINK3_MK} == "+"
BUILDLINK_API_DEPENDS.libXdmcp+=	libXdmcp>=0.99
BUILDLINK_PKGSRCDIR.libXdmcp?=	../../x11/libXdmcp
.endif	# LIBXDMCP_BUILDLINK3_MK

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH:S/+$//}
