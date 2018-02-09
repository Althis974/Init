#!/bin/sh

cat /etc/passwd | sed 's/:/ /g' | awk '{print $1, $3, $7}' | sed 's/ /:/g'
