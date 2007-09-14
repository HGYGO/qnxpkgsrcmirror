#!/bin/sh
# config.sh
# This file was produced by running the Configure script.

Log='$Log'
Header='$Header'
contains='grep'
cppstdin='/usr/bin/cpp'
cppminus=''
d_getopt='define'
d_memcpy='define'
d_mkdir='define'
d_rename='define'
d_symlink='define'
d_whoami='undef'
n='-n'
c=''
orderlib='false'
ranlib=':'
package='elm2.5'
pager='builtin+'
prefshell='/bin/ksh'
startsh='#!/bin/sh'
d_eunice='undef'
define='define'
eunicefix=':'
build_dir=''
source_dir=''
loclist='
cat
chgrp
chmod
cp
echo
expr
grep
ln
ls
mv
rm
sed
sleep
touch
tr
'
expr='/bin/expr'
sed='/usr/bin/sed'
echo='/bin/echo'
cat='/bin/cat'
rm='/bin/rm'
mv='/bin/mv'
cp='/bin/cp'
tail=''
tr='/usr/bin/tr'
mkdir=''
sort=''
uniq=''
grep='/usr/bin/grep'
trylist='
Mcc
compress
cpp
date
emacs
execmail
ispell
line
lint
lp
lpr
mips
more
nroff
pack
pg
pr
rmail
sendmail
shar
smail
submit
tar
tbl
test
troff
uname
uuname
vi
'
test='test'
inews=''
ispell='ispell'
egrep=''
more='/usr/bin/more'
pg='pg'
Mcc='Mcc'
vi='/usr/bin/vi'
mailx=''
mail=''
cpp='/usr/bin/cpp'
perl=''
emacs='emacs'
ls='/bin/ls'
rmail='/bin/rmail'
sendmail='/usr/sbin/sendmail'
shar='/usr/bin/shar'
smail=''
submit=''
tbl='/usr/bin/tbl'
troff='/usr/bin/troff'
nroff='/usr/bin/nroff'
uname='/usr/bin/uname'
uuname='/usr/bin/uuname'
line='line'
chgrp='/usr/bin/chgrp'
chmod='/bin/chmod'
lint='/usr/bin/lint'
sleep='/bin/sleep'
pr='/usr/bin/pr'
tar='/usr/bin/tar'
ln='/bin/ln'
lpr='/usr/bin/lpr'
lp='/usr/bin/lp'
touch='/usr/bin/touch'
make=''
date='/bin/date'
csh=''
pmake=''
mips='false'
col=''
pack='pack'
bld=''
compress='/usr/bin/compress'
execmail=''
libswanted='intl nls'
bin='PREFIX/bin'
installbin='PREFIX/bin'
c_date='Sun Jul  1 03:59:18 JST 2001'
d_ascii='undef'
d_broke_ctype='define'
d_broke_fflush='undef'
d_calendar='define'
calendar='calendar'
d_chown_neg1='define'
d_content='undef'
d_crypt='define'
cryptlib='/usr/lib/libcrypt.a'
d_cuserid='undef'
d_disphost='undef'
d_domname='define'
d_usegetdom='undef'
d_errlst='define'
d_flock='undef'
d_dotlock='define'
d_fcntlock='define'
lock_dir='/var/spool/lock'
has_flock='undef'
has_fcntl='define'
d_fsync='define'
d_ftruncate='define'
d_gethname='define'
d_douname='undef'
d_host_comp='undef'
ign_hname='n'
d_index='define'
d_internet='define'
d_ispell='define'
ispell_path='LOCALBASE/bin/ispell'
ispell_options=''
d_locale='define'
d_nl_types='define'
d_msgcat='define'
d_usenls='define'
d_mboxedit='undef'
d_mime='define'
defcharset='iso-8859-1'
defdispcharset='iso-8859-1'
d_mmdf='undef'
d_newauto='define'
d_noaddfrom='define'
d_usedomain='undef'
d_noxheader='undef'
d_pidcheck='define'
d_ptem='undef'
d_putenv='define'
d_remlock='undef'
maxattempts='6'
d_setegid='define'
d_setgid='define'
d_savegrpmboxid='define'
mailermode='2755'
d_sigvec='undef'
d_sigvectr='undef'
d_sigset='undef'
d_sighold='undef'
d_sigprocmask='define'
d_sigblock='undef'
d_sigaction='define'
d_statuschg='define'
d_strcspn='define'
d_strspn='define'
d_strpbrk='define'
d_strerror='define'
d_strftime='define'
d_strings='undef'
d_pwdinsys='undef'
strings='/usr/include/string.h'
includepath=''
d_strstr='define'
d_strtok='define'
d_subshell='define'
d_tempnam='define'
tempnamo=''
tempnamc=''
d_termio='undef'
d_termios='define'
d_useembed='define'
d_utimbuf='define'
d_vfork='define'
defbatsub='no subject (file transmission)'
defeditor='/usr/bin/vi'
editoropts=''
hostname=''
phostname='hostname'
mydomain=''
autohostname='define'
i_memory='define'
i_stdarg='define'
i_stdlib='define'
i_time='define'
i_systime='define'
d_systimekernel='undef'
i_unistd='define'
i_utime='define'
i_sysutime='undef'
lib='PREFIX/lib/elm'
installlib='PREFIX/lib/elm'
libc='LIBC'
linepr='/usr/bin/lp'
maildir='/var/mail'
mailer='/usr/sbin/sendmail'
mailgrp='wheel'
mansrc='PREFIX/man/man1'
catmansrc='PREFIX/man/cat1'
manext='.1'
manext_choice='.1'
catmanext='.1'
catmanext_choice='.1'
packed='n'
manroff='/usr/bin/nroff'
manroffopts=''
suffix=''
packer=''
models='none'
split=''
small=''
medium=''
large=''
huge=''
optimize='-O2'
ccflags='-ILOCALBASE/include'
cppflags=' -ILOCALBASE/include'
ldflags='-Wl,-RLOCALBASE/lib -LLOCALBASE/lib'
cc='cc -MD'
libs='-lintl'
nametype='bsd'
d_passnames='define'
d_berknames='define'
d_usgnames='undef'
passcat='cat /etc/passwd'
rmttape='unknown-remote-tape-unit'
roff='/usr/bin/troff'
roffopts=''
sigtype='void'
spitshell='cat'
shsharp='true'
sharpbang='#!'
termlib=''
tmpdir='/tmp'
tzname_handling='UNKNOWN'
xencf=''
xenlf=''
d_xenix='undef'
d_bsd='define'
CONFIG=true
