# $NetBSD: buildlink3.mk,v 1.13 2009/03/20 19:25:37 joerg Exp $

BUILDLINK_TREE+=	php

.if !defined(PHP_BUILDLINK3_MK)
PHP_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.php+=		php-4.4.*
BUILDLINK_ABI_DEPENDS.php+=	php>=4.4.1nb3
BUILDLINK_PKGSRCDIR.php?=	../../www/php4
.endif # PHP_BUILDLINK3_MK

BUILDLINK_TREE+=	-php
