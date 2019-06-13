#!/bin/bash

if [[ -z "${SENDGRID_API_KEY}" ]]; then
  echo "missing env variable SENDGRID_API_KEY"
  exit 1
fi

if [[ -z "$1" || -z "$2" ]]; then
    echo "Usage: send.sh <csv file with mail list> <template_name>"
    echo "csv file must be coma separated with 3 columns : mail, firstname, lastname"
    echo "template name is something like YYYYMMDD_NNN.html"
    exit 1
fi

if [ ! -f "$1" ]; then
    echo "$1 csv file does not exist"
    exit 1
fi

if [ ! -f "$2" ]; then
    echo "$2 template file does not exist"
    exit 1
fi

MAIL_TEMPLATE=$(cat $2 | sed 's/src="assets/src="https:\/\/tech-newsletter.3slab.io\/assets/g' | sed 's/\"/\\"/g')
SUBJECT=$(echo $MAIL_TEMPLATE | sed 's:.*<title>\(.*\)</title>.*:\1:')

input=$1
while IFS= read -r line
do
    echo $line
    email=$(echo $line | cut -d ',' -f1)

    echo "sending to $email ..."

    curl -i -s --request POST \
        --url https://api.sendgrid.com/v3/mail/send \
        --header "Authorization: Bearer ${SENDGRID_API_KEY}" \
        --header 'Content-Type: application/json' \
        --data "{\"personalizations\": [{\"to\": [{\"email\": \"$email\"}]}],\"from\": {\"email\": \"lab.smartsolutions@suez.com\"},\"subject\": \"$SUBJECT\",\"content\": [{\"type\": \"text/html\", \"value\": \"$MAIL_TEMPLATE\"}]}"

    sleep 2
done < "$input"