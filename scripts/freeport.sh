#!/bin/bash

if [ -z "$1" ];
    then
        echo "❌ You must provide a PORT to be verified"
        exit 1
fi

echo "⏳ Verifying processes running on Port $1"

process=$(sudo lsof -ti:"$1")

if [ -n "$process" ];
    then
        echo "Blocking process: $process. We gotta ☠️ it"
        sudo kill $process
        echo "✔️ Done..."
    else
        echo "❌ No blocking process"
fi
