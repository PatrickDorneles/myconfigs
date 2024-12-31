#!/bin/bash

echo "Verifying 🐘 process running"

process=$(sudo lsof -ti:5432)

if [ -n "$process" ];
    then
        echo "Blocking process: $process. We gotta ☠️ it"
        sudo kill $process
        echo "✔️ Done..."
    else
        echo "❌ No blocking process"
fi
