#!/bin/bash

cd $HOME
STATUS=$(git pull)
if [ "$STATUS" = "Ya está actualizado." ]; then
    echo "No hay comandos para ejecutar."
else
    chmod +x .git-script-update.sh
    echo '---------------------------------' >> caraludme.log
    date >> caraludme.log
	./.git-script-update.sh &>> caraludme.log
fi

