# $NetBSD: Makefile,v 1.23 2007/11/05 19:26:20 drochner Exp $
#

.include "Makefile.common"

COMMENT+=	(using GStreamer)

CONFLICTS+=	totem-xine-[0-9]*

CONFIGURE_ARGS+=	--enable-gstreamer=yes

BUILDLINK_API_DEPENDS.gst-plugins0.10-base+=	gst-plugins0.10-base>=0.10.7

.include "../../multimedia/gst-plugins0.10-base/buildlink3.mk"
.include "../../multimedia/gst-plugins0.10-good/buildlink3.mk"
.include "../../multimedia/gstreamer0.10/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
