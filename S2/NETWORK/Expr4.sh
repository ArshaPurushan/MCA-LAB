#!/bin/bash
if [[ -e a.sh ]]
then
	cat a.sh | grep "^LINE 4"
else
	echo "File not found"
fi
