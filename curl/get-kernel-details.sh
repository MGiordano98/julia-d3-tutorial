#!/bin/bash

cookie=$1

if [ -z "$cookie" ]; then
	echo -e "Usage:\n\t$0 <cookies>" >&2
	exit
fi

curl \
	-H "Cookie:$cookie" \
	-H "Content-Type: application/json" \
	-X "POST" \
	--data-binary '{"kernel":{"name":"julia-0.4"},"notebook":{"path":"Fluent/07 - Jupyter API.ipynb"}}' \
	https://juliabox.org/api/sessions

echo
