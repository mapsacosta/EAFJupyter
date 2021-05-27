# 
# ostensibly shell independant setups for relocatable ups
#

# Black Magic here:
# use $_ to fake BASH_SOURCE for interactive csh shells  
# It's off by one, so do a : command first...
# 
echo $_ > /dev/null
: $_  
#test "$?shell$_" != "1$_" >/dev/null && _underscore="$_"
test $?shell = 1 && set _underscore=`echo $_`

#
# figure out which shell we are, using the fact that
# in csh $?argv is a boolean, and in bash it is 0argv or 1argv 
# then establish:
# - UPS_SHELL
# - s_setenv
# - s_source
# - s_unsetenv
#
echo $?argv | grep argv > /dev/null && \
  eval 's_setenv() { eval $1=\"$2\"; export $1; }; s_setenv UPS_SHELL sh; s_unsetenv() { unset $1; }; s_source() { . $1; }; s_bail="return"' || \
  eval 'alias s_setenv setenv; setenv UPS_SHELL csh; alias s_source source; alias s_unsetenv unsetenv; set s_bail="goto endlabel"' 

# check if there is room in TMPDIR... if not, use $HOME
sh -c 'set : `df -P ${TMPDIR:-/tmp} | tail -1`;[ "$6" = "100%" ];' && \
   export TMPDIR=$HOME

: $_underscore 

# fix _underscore per shell, other shell specifics
test  $?ZSH_NAME != 0 && eval 'test ${ZSH_NAME:-""} != "" && setopt SH_WORD_SPLIT && _underscore=`echo $_underscore | sed -e "s/^1//" -e "s/^source //"`'
test $?BASH != 0 && eval 'test ${BASH:-""} != "" && _underscore=$BASH_SOURCE'
test $UPS_SHELL = csh && eval 'set _underscore=`echo $_underscore | sed -e "s/source //"`'


: $_underscore

s_setenv SETUPS_SAVE  /grid/fermiapp/products/common/etc/setups.sh
s_setenv SETUPS_CVMFS_SAVE /cvmfs/fermilab.opensciencegrid.org/products/common/etc/setups

# 
# our first guess of where we are is in $_underscore
#
s_setenv SETUPS_FILE "$_underscore"

s_setenv SETUPS_GREP "$SETUPS_FILE"
test "x$SETUPS_GREP" = x && s_setenv SETUPS_GREP /dev/null

#
# if $SETUPS_FILE wasn't found and we have a SETUPS_SAVE, take that value
#
grep SETUPS_FILE $SETUPS_GREP > /dev/null || eval 'test -r "$SETUPS_SAVE" && grep SETUPS_FILE $SETUPS_SAVE > /dev/null && s_setenv SETUPS_FILE "$SETUPS_SAVE"'

#
# if $SETUPS_FILE wasn't found and we have a SETUPS_CVMFS_SAVE, take that value
#
grep SETUPS_SAVE $SETUPS_GREP > /dev/null || eval 'test -r "$SETUPS_CVMFS_SAVE" && grep SETUPS_FILE $SETUPS_CVMFS_SAVE > /dev/null && s_setenv SETUPS_FILE "$SETUPS_CVMFS_SAVE"'

test "x$SETUPS_FILE" = x && echo "setups: failed to find myself"

# handle symlinks to the Real Path -- full path and relative
expr "` /bin/ls -l $SETUPS_FILE`" : ".* -> /"  > /dev/null && s_setenv SETUPS_FILE `ls -l $SETUPS_FILE | sed -e 's/.* -> //'`
expr "` /bin/ls -l $SETUPS_FILE`" : ".* -> [^/]"  > /dev/null && s_setenv SETUPS_FILE `dirname $SETUPS_FILE`/`ls -l $SETUPS_FILE | sed -e 's/.* -> //'`
#
# if sourced without full path, stick pwd output on the front
# 
expr $SETUPS_FILE : '[^/]' > /dev/null && s_setenv SETUPS_FILE `pwd`/${SETUPS_FILE}

#
# update $SETUPS_FILE for SETUPS_SAVE, if it:
#
# * look like a setups file
# * is writable
# * $SETUPS_SAVE differs from $SETUPS_FILE
#
grep  SETUPS_FILE $SETUPS_GREP > /dev/null && test -w $SETUPS_FILE -a "$SETUPS_FILE" != "$SETUPS_SAVE" && sed -e "s;^\(s_setenv SETUPS_SAVE \).*;\1 $SETUPS_FILE;" < $SETUPS_FILE > $SETUPS_FILE.new && mv $SETUPS_FILE.new $SETUPS_FILE
s_setenv SETUPS_DIR  `dirname $SETUPS_FILE`

#
# source setups_layout, which will set 
# UPS_THIS_DB and PROD_DIR_PREFIX based on SETUPS_DIR
#
s_source $SETUPS_DIR/setups_layout

# clean out /xxx/../ bits
s_setenv UPS_THIS_DB `echo $UPS_THIS_DB | sed -e 's;/[a-z]*/\.\./;/;g'`
s_setenv PROD_DIR_PREFIX `echo $PROD_DIR_PREFIX | sed -e 's;/[a-z]*/\.\./;/;g'`

test $UPS_SHELL = csh && \
     eval 'test $?PRODUCTS = 0      && s_setenv PRODUCTS "" || s_setenv PRODUCTS "$PRODUCTS"; unset PRODUCTS'

test $UPS_SHELL = sh  && \
     eval 'test ${PRODUCTS:-0} = 0  && s_setenv PRODUCTS "" || s_setenv PRODUCTS "$PRODUCTS"'

test "x$PRODUCTS" = x && \
      s_setenv PRODUCTS "${UPS_THIS_DB}"

expr "$PRODUCTS" : "${UPS_THIS_DB}" > /dev/null || \
       s_setenv PRODUCTS "${UPS_THIS_DB}:${PRODUCTS}" 

: ------
: $PRODUCTS
: ------

#
# set UPS_OVERRIDE based on $PRODUCTS/.upsfiles/
#
s_setenv UPS_OVERRIDE_FILE /dev/null

test -r $UPS_THIS_DB/.upsfiles/ups_OVERRIDE.`hostname` && \
	s_setenv UPS_OVERRIDE_FILE $UPS_THIS_DB/.upsfiles/ups_OVERRIDE.`hostname` 

test -r $UPS_THIS_DB/.upsfiles/ups_OVERRIDE.`uname -r | cut -d. -f 1-2` && \
	s_setenv UPS_OVERRIDE_FILE $UPS_THIS_DB/.upsfiles/ups_OVERRIDE.`uname -r | cut -d. -f 1-2`

test "$UPS_OVERRIDE_FILE" != "/dev/null" && s_setenv UPS_OVERRIDE "`cat $UPS_OVERRIDE_FILE`"

s_unsetenv UPS_OVERRIDE_FILE

# if UPS_DIR is already set, clean up & bail
#   in this case, we don't do anything to PRODUCTS except
#   add this ups database to it.

test $UPS_SHELL = csh && \
     eval 'test $?UPS_DIR = 0      && s_setenv UPS_DIR ""'
test $UPS_SHELL = sh  && \
     eval 'test ${UPS_DIR:-0} = 0  && s_setenv UPS_DIR ""'

test "x$UPS_DIR" != x && s_unsetenv UPS_THIS_DB
test "x$UPS_DIR" != x && s_unsetenv PROD_DIR_PREFIX
test "x$UPS_DIR" != x && s_unsetenv SETUPS_FILE
test "x$UPS_DIR" != x && s_unsetenv SETUPS_GREP
test "x$UPS_DIR" != x && s_unsetenv SETUPS_SAVE
test "x$UPS_DIR" != x && s_source `ups setup $SETUP_UPS`
test "x$UPS_DIR" != x && $s_bail

#
# turn list of ups binaries into:
#  /x/y/z/ups setup ups ||  /x/y/w/ups setup ups || ... || :
# then run that with /bin/sh -c
#
s_setenv UPS_OR_LIST "`(/bin/ls -t ${PROD_DIR_PREFIX}/ups/*/*/bin/ups || ls -t ${PROD_DIR_PREFIX}/ups/*/bin/ups) | grep -v '\*' | tr '\n' ' '`"
s_setenv UPS_OR_LIST "`echo $UPS_OR_LIST : | sed -e 's/ / setup ups ||/g'`"
s_setenv UPS_SETUP_FILE `/bin/sh -c "( $UPS_OR_LIST ) 2>/dev/null"`
s_source $UPS_SETUP_FILE

s_unsetenv UPS_OR_LIST
s_unsetenv UPS_SETUP_FILE

# bail out if we don't have a UPS_DIR now..
# note that in csh this bails becuase the $UPS_DIR is not set
# while in bash we echo that it isn't defined and return
[ x$UPS_DIR = x ] && echo "UPS_DIR: undefined variable" && return

# handle upsdb_list if present
# since we already setup ups, we can trim it to existing directories with dropit.
test -r $SETUPS_DIR/upsdb_list && s_setenv PRODUCTS `grep -v '^#' $SETUPS_DIR/upsdb_list | perl -pe 's/\n/:/g'`



#
# clean up
#
s_unsetenv UPS_THIS_DB
s_unsetenv PROD_DIR_PREFIX
s_unsetenv SETUPS_FILE
s_unsetenv SETUPS_GREP
s_unsetenv SETUPS_SAVE

#
# if there is a setproducts.table, set it up to set PRODUCTS
#
test -r $SETUPS_DIR/setproducts.table && \
	setup -M $SETUPS_DIR -m setproducts.table setproducts

s_setenv PRODUCTS `dropit -DEe -p${PRODUCTS} .`

# now setup the RIGHT ups 
s_source `ups setup ups`

test "x$UPS_DIR" != x

$s_bail
endlabel:
:
