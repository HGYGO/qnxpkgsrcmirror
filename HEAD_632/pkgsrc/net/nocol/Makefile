# $NetBSD: Makefile,v 1.33 2007/08/12 14:06:55 joerg Exp $
#

DISTNAME=		nocol-4.3.1
PKGREVISION=		4
CATEGORIES=		net
MASTER_SITES=	http://www.netplex-tech.com/software/nocol/downloads/

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://www.netplex-tech.com/software/nocol/
COMMENT=		Extensible network and system monitoring utility

HAS_CONFIGURE=		yes
CONFIGURE_SCRIPT=	./Configure
CONFIGURE_ARGS+=	< ${WRKSRC}/answers

USE_TOOLS+=		perl:run mkdirhier yacc
USE_LIBTOOL=		yes

INSTALL_TARGET=		install root

OWN_DIRS+=		/var/run/msgs
OWN_DIRS+=		/var/run/data

DEPENDS+=		tk-Tix-[0-9]*:../../x11/tk-Tix

.include "../../x11/tk-Tix/interpreter.mk"

REPLACE_PERL=		perlnocol/hostmon-osclients/hostmon-client*
REPLACE_TK_TIX=		tknocol/tkNocol.tix

post-patch:
	@(hostname=`/bin/hostname`;					\
	dir="";								\
	for d in /usr/bin /usr/sbin `${ECHO} $$PATH | ${TR} ':' ' '`; do \
		if [ -x $$d/host ]; then				\
			dir=$$d;					\
			break;						\
		fi							\
	done;								\
	if [ "X$$dir" = "X" ]; then					\
		${ECHO} "host program not found";			\
		exit 1;							\
	fi;								\
	fqdn=`$$dir/host $$hostname | ${AWK} '{ print $$1; exit }'`;	\
	${SED} -e 's|@prefix@|${PREFIX}|g' -e "s|@FQDN@|$$fqdn|g" 	\
			${FILESDIR}/answers > ${WRKSRC}/answers)

pre-configure:
	@${CP} ${PKGSRCDIR}/mk/gnu-config/config.guess ${WRKSRC}/cmu-snmp/snmp
	@${CP} ${PKGSRCDIR}/mk/gnu-config/config.guess ${WRKSRC}/cmu-snmp/snmpapps
	@${CP} ${PKGSRCDIR}/mk/gnu-config/config.sub ${WRKSRC}/cmu-snmp/snmp
	@${CP} ${PKGSRCDIR}/mk/gnu-config/config.sub ${WRKSRC}/cmu-snmp/snmpapps


post-install:
	# Ensure webnocol audio and images files are available if needed
	#
	${INSTALL_DATA_DIR} ${PREFIX}/share/nocol/gifs

	for f in critical.wav error.wav warning.wav ; do		\
	    ${INSTALL_DATA} ${WRKSRC}/webnocol/$$f ${PREFIX}/share/nocol; \
	done

	for f in bluesq.gif critical.jpg empty.gif error.jpg		\
		greensq.gif help.jpg info.jpg redsq.gif warning.jpg	\
		yellowsq.gif ; do					\
	    ${INSTALL_DATA} ${WRKSRC}/webnocol/gifs/$$f			\
			    ${PREFIX}/share/nocol/gifs;			\
	done

.include "../../mk/resolv.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
