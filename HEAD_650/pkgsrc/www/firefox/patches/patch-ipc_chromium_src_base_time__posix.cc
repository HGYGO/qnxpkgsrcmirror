$NetBSD: patch-ipc_chromium_src_base_time__posix.cc,v 1.1 2013/07/17 11:00:13 jperkin Exp $

--- ipc/chromium/src/base/time_posix.cc.orig	2013-06-18 11:01:23.000000000 +0000
+++ ipc/chromium/src/base/time_posix.cc
@@ -7,6 +7,9 @@
 #ifdef OS_MACOSX
 #include <mach/mach_time.h>
 #endif
+#ifdef OS_QNX
+#include <nbutil.h>
+#endif
 #include <sys/time.h>
 #ifdef ANDROID
 #include <time64.h>
@@ -65,8 +68,10 @@ Time Time::FromExploded(bool is_local, c
   timestruct.tm_wday   = exploded.day_of_week;  // mktime/timegm ignore this
   timestruct.tm_yday   = 0;     // mktime/timegm ignore this
   timestruct.tm_isdst  = -1;    // attempt to figure it out
+#ifndef OS_SOLARIS
   timestruct.tm_gmtoff = 0;     // not a POSIX field, so mktime/timegm ignore
   timestruct.tm_zone   = NULL;  // not a POSIX field, so mktime/timegm ignore
+#endif
 
   time_t seconds;
 #ifdef ANDROID
