# $NetBSD: Makefile,v 1.7 2007/10/25 22:01:03 jlam Exp $
#

DISTNAME=	prereq-readme-20050521
CATEGORIES=	pkgtools
MASTER_SITES=	# empty
DISTFILES=	# empty

MAINTAINER=	dmcmahill@NetBSD.org
HOMEPAGE=	http://www.NetBSD.org/
COMMENT=	Tools required for pkgsrc README.html generation

WRKSRC=		${WRKDIR}
NO_CHECKSUM=	yes
NO_CONFIGURE=	yes
NO_BUILD=	yes
NO_INSTALL=	# defined
NO_PACKAGE=	# defined
PLIST_SRC=	# empty (meta-package)

# list all the tools we use
USE_TOOLS+=	awk
USE_TOOLS+=	cmp
USE_TOOLS+=	echo
USE_TOOLS+=	expr
USE_TOOLS+=	fgrep
USE_TOOLS+=	find
USE_TOOLS+=	grep
USE_TOOLS+=	gzip
USE_TOOLS+=	sed
USE_TOOLS+=	setenv
USE_TOOLS+=	sort

.include "../../mk/bsd.pkg.mk"
