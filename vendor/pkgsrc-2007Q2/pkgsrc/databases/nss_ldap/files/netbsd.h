/* $NetBSD: netbsd.h,v 1.1.1.1 2005/08/08 09:47:42 drochner Exp $ */

#undef HAVE_NSSWITCH_H
#define HAVE_NSS_H

enum nss_status {
	NSS_STATUS_SUCCESS,
	NSS_STATUS_NOTFOUND,
	NSS_STATUS_UNAVAIL,
	NSS_STATUS_TRYAGAIN,
	NSS_STATUS_RETURN
};
