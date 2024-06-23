#!/bin/bash

target=$1
subdomain=$2

search() {
    firefox https://google.com/search?q=$1
}

search "site:pastebin.com+$target"

search "site:trello.com+$target"

[[ ! $subdomain == "" ]] && search "site:$target+inurl:$subdomain"

search "site:$target"

search "site:$target+filetype:pdf"

search "site:$target+ext:php"

search "site:$target+ext:xls"

search "site:$target+ext:sql

search "site:$target+ext:bak"

search "site:$target+%22index%20of%22"

search "site:$target+backup"

search "site:$target+-www+ext:php"

search "site:$target+intitle:admin"

exit 0
