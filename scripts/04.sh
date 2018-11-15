#! /bin/sh

# 00 0 * * * root /home/rlossy/04.sh

find /etc -name "crontab" -mtime 0 > /home/rlossy/modif.txt
FILE="/etc/crontab"
MODIF=$(</home/rlossy/modif.txt)
MAIL_ADMIN="romeolossy@gmail.com"
if [ "${FILE}" == "${MODIF}" ]; then
	BODY="Alert, the file ${FILE} has been modified";
	echo "$BODY" | mail -s "Alerte" "${MAIL_ADMIN}";
fi
