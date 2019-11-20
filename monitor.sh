set -e


if [ -z "$1" ]
then
  exit
fi

cat "/dev/ttyS$1"