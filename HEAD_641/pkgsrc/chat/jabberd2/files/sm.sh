#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD: sm.sh,v 1.3 2008/03/08 22:20:02 gdt Exp $
#
# PROVIDE: sm
# REQUIRE: DAEMON c2s

if [ -f /etc/rc.subr ]; then
	. /etc/rc.subr
fi

name="sm"
rcvar=$name
command="@PREFIX@/bin/${name}"
required_files="@PKG_SYSCONFDIR@/${name}.xml"
extra_commands="reload"
command_args="2>&1 > /dev/null &"
sm_user="@JABBERD_USER@"
pidfile="@JABBERD_PIDDIR@/${name}.pid"
stop_postcmd="remove_pidfile"
start_precmd="ensure_piddir"

ensure_piddir()
{
	mkdir -p @JABBERD_PIDDIR@
	chown @JABBERD_USER@ @JABBERD_PIDDIR@
}

remove_pidfile()
{
        if [ -f @JABBERD_PIDDIR@/${name}.pid ]; then
            rm -f @JABBERD_PIDDIR@/${name}.pid
        fi
}

if [ -f /etc/rc.subr ]; then
	load_rc_config $name
	# XXX Previous commands seem to complete but not be ready.
	sleep 5
	run_rc_command "$1"
else
	@ECHO@ -n " ${name}"
	${command} ${sm_flags} ${command_args}
fi
