# $NetBSD: Makefile,v 1.3 2007/12/02 08:32:25 rillig Exp $
#

DISTNAME=	spreadlogd
PKGNAME=	spreadlogd-2.0.0
PKGREVISION=	1
CATEGORIES=	net
MASTER_SITES=	http://www.backhand.org/mod_log_spread/
DIST_SUBDIR=	${PKGNAME_NOREV}

MAINTAINER=	mark@exonetric.com
HOMEPAGE=	http://www.backhand.org/mod_log_spread/
COMMENT=	Daemon to log to file, messages from spread toolkit clients

GNU_CONFIGURE=	yes
USE_TOOLS+=	perl yacc
WRKSRC=		${WRKDIR}/${PKGNAME_NOREV}

RCD_SCRIPTS=	spreadlogd
# define the "example" directory for post-install target and for the CONF_FILES
# variable used by pkginstall
EXAMPLEDIR=	${PREFIX}/share/examples/spreadlogd

# tell pkginstall where to pluck virgin configuration files from in the case of a new
# install, knowing that the post-install target in *this* Makefile will put the
# sample configuration in the example directory for us (as well as creating it)
CONF_FILES+=	${EXAMPLEDIR}/spreadlogd.conf.sample ${PKG_SYSCONFDIR}/spreadlogd.conf

# create example directory *and* put the sample configuration file here with the suffix
# .sample so that pkginstall can drop it in for us.
post-install:
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}
	${INSTALL_DATA} ${WRKSRC}/spreadlogd.conf ${EXAMPLEDIR}/spreadlogd.conf.sample

BUILDLINK_API_DEPENDS.libevent+=libevent>=1.0c

.include "../../net/spread/buildlink3.mk"
.include "../../devel/libevent/buildlink3.mk"
.include "../../lang/perl5/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
