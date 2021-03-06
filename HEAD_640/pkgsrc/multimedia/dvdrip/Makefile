# $NetBSD: Makefile,v 1.43 2008/10/19 19:18:31 he Exp $
#

DISTNAME=	dvdrip-0.98.8
PKGREVISION=	3
CATEGORIES=	multimedia x11 sysutils
MASTER_SITES=	http://www.exit1.org/dvdrip/dist/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.exit1.org/dvdrip/
COMMENT=	Graphical frontend for DVD ripping

DEPENDS+=	lsdvd>=0.16nb3:../../multimedia/lsdvd
DEPENDS+=	mplayer>=0.90:../../multimedia/mplayer
DEPENDS+=	ogmtools-[0-9]*:../../multimedia/ogmtools
DEPENDS+=	transcode>=1.0.5nb1:../../multimedia/transcode
DEPENDS+=	xine-ui>=0.9.15:../../multimedia/xine-ui
DEPENDS+=	xvid4conf>=1.12:../../multimedia/xvid4conf
DEPENDS+=	fping>=2.2:../../net/fping
DEPENDS+=	p5-gtk2>=1.121:../../x11/p5-gtk2
DEPENDS+=	p5-Locale-libintl>=1.16:../../misc/p5-Locale-libintl
DEPENDS+=	p5-Event>=1.06:../../devel/p5-Event
DEPENDS+=	p5-Gtk2-Ex-FormFactory>=0.65:../../x11/p5-Gtk2-Ex-FormFactory
DEPENDS+=	p5-Event-ExecFlow>=0.62:../../devel/p5-Event-ExecFlow
DEPENDS+=	p5-Event-RPC>=0.89:../../devel/p5-Event-RPC
DEPENDS+=	p5-AnyEvent>=1.02:../../devel/p5-AnyEvent

.include "../../mk/bsd.prefs.mk"

BUILDLINK_API_DEPENDS.perl+=	perl>=5.6.0

USE_LANGUAGES=		c
USE_PKGLOCALEDIR=	YES
USE_TOOLS+=		perl
MAKE_ENV+=		SKIP_UNPACK_REQUIRED_MODULES=1

PERL5_PACKLIST= auto/Video/DVDRip/.packlist

SUBST_CLASSES+=		fping
SUBST_STAGE.fping=	post-patch
SUBST_FILES.fping=	lib/Video/DVDRip/Depend.pm
SUBST_FILES.fping+=	lib/Video/DVDRip/Cluster/Master.pm
SUBST_SED.fping=	-e "s|/usr/sbin/fping|${LOCALBASE}/sbin/fping|g"
SUBST_MESSAGE.fping=	Fixing hardcoded path.

PKG_DESTDIR_SUPPORT=	user-destdir

# Currently the only option is the i386 rar binary
.if !empty(MACHINE_ARCH:Mi386)
.include "options.mk"
.endif
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../graphics/ImageMagick/buildlink3.mk"
.include "../../multimedia/mjpegtools/buildlink3.mk"
.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
