# specify MariaDB and Mroonga version
export MARIADBVER="10.0.11"
export MROONGAVER="4.03"
# get Date
# e.g. # => 2014.07.01
export DATE="`date +\"%Y.%m.%d\"`"
# curl
curl -O "http://packages.groonga.org/nightly/mariadb-${MARIADBVER}-with-mroonga-${MROONGAVER}-for-windows.${DATE}.zip"