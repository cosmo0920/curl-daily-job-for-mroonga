# specify MariaDB and Mroonga version
set -x
export MARIADBVER="10.3.9"
export MROONGAVER="8.06"
# get Date
# e.g. # => 2014.07.01
export DATE="`date +\"%Y.%m.%d\"`"
export keep_n_days=30
#xarg option
XARGS_NO_RUN=''
if [ `uname` = 'Linux' ]; then
    XARGS_NO_RUN='--no-run-if-empty';
fi
# remove older than 30 days nightly package
find ./*.zip -maxdepth 1 -type f -ctime +${keep_n_days} | \
  xargs $XARGS_NO_RUN rm
# curl
curl --fail -O "${MROONGA_NIGHTLY_PACKAGE_BASE:-"http://packages.groonga.org/nightly"}/mariadb-${MARIADBVER}-with-mroonga-${MROONGAVER}-for-windows.${DATE}.zip"
