# specify MariaDB and Mroonga version
export MARIADBVER="10.0.14"
export MROONGAVER="4.07"
# get Date
# e.g. # => 2014.07.01
export DATE="`date +\"%Y.%m.%d\"`"
# curl
curl --fail -O "http://packages.groonga.org/nightly/mariadb-${MARIADBVER}-with-mroonga-${MROONGAVER}-for-windows.${DATE}.zip"
