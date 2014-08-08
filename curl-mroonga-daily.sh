# specify MariaDB and Mroonga version
export MARIADBVER="10.0.12"
export MROONGAVER="4.04"
# get Date
# e.g. # => 2014.07.01
export DATE="`date +\"%Y.%m.%d\"`"
# curl
export URL="http://packages.groonga.org/nightly/mariadb-${MARIADBVER}-with-mroonga-${MROONGAVER}-for-windows.${DATE}.zip"
STATUSCODE=$(curl --write-out "%{http_code}\n" --silent --output /dev/null "$URL")
if [ $STATUSCODE -ne 200 ]; then
    exit 1
fi
curl -O $URL
echo $?
