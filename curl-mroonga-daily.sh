# specify MariaDB and Mroonga version
export MARIADBVER="10.0.15"
export MROONGAVER="4.08"
# get Date
# e.g. # => 2014.07.01
export DATE="`date +\"%Y.%m.%d\"`"
export keep_n_days=30
#xarg option
XARGS_NO_RUN=''
if [ `uname` = 'Linux' ]; then
    XARGS_NO_RUN='--no-run-if-empty';
fi
# curl
curl --fail -O "http://packages.groonga.org/nightly/mariadb-${MARIADBVER}-with-mroonga-${MROONGAVER}-for-windows.${DATE}.zip"

find ./ -maxdepth 1 -type f -ctime +${keep_n_days} -print0 | \
  xargs $XARGS_NO_RUN rm
