# $NetBSD: Makefile,v 1.1.1.1 2007/01/14 14:05:34 obache Exp $
#

DISTNAME=		sendymail-0.5.8
CATEGORIES=		mail
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=sendymail/}

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://sendymail.sourceforge.net/
COMMENT=		Send emails through Yahoo using your favorite email client

DEPENDS+=		p5-Crypt-SSLeay-[0-9]*:../../security/p5-Crypt-SSLeay
DEPENDS+=		p5-Digest-MD5-[0-9]*:../../security/p5-Digest-MD5
DEPENDS+=		p5-Getopt-Long-[0-9]*:../../devel/p5-Getopt-Long
DEPENDS+=		p5-libwww-[0-9]*:../../www/p5-libwww
DEPENDS+=		p5-MailTools-[0-9]*:../../mail/p5-MailTools
DEPENDS+=		p5-MIME-tools-[0-9]*:../../mail/p5-MIME-tools

USE_TOOLS+=		perl:run
REPLACE_PERL=		sendymail.pl

NO_BUILD=		yes

EGDIR=			${PREFIX}/share/examples/sendymail
DOCDIR=			${PREFIX}/share/doc/sendymail

SUBST_CLASSES+=		sa2
SUBST_STAGE.sa2=	pre-configure
SUBST_FILES.sa2=	ChangeLog INSTALL
SUBST_SED.sa2=		-e s!sendymail.pl!sendymail!g

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/sendymail.pl ${PREFIX}/bin/sendymail
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA_DIR} ${EGDIR}
.for i in BUGS COPYING ChangeLog INSTALL README TODO
		${INSTALL_DATA} ${WRKSRC}/${i} ${PREFIX}/share/doc/sendymail
.endfor
	${INSTALL_DATA} ${WRKSRC}/sendymailrc.sample ${EGDIR}

.include "../../mk/bsd.pkg.mk"
