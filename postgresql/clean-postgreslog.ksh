#!/bin/ksh
#This will delete all log files of postgres except latest 5 logs files.

cd /var/lib/pgsql/12/data/log

ls -lrt *.log
unix_passwd=$1
unix_user=$2
echo "the linux password is ${unix_passwd}"
echo " linux user is ${unix_user}"
#rm -rf `ls -lt *.log | awk '{print $9}' | tail -n +6`
