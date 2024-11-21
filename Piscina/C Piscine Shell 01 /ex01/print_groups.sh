#!/bin/sh

if [ -z "$FT_USER" ]; then
    echo "Ojo! Aun no definiste la variable."
    exit 1

fi

if ! id "$FT_USER" &>/dev/null; then
    echo "$FT_USER NO es Usuario."
    exit 1

fi

id -nG "$FT_USER" | tr ' ' ','
