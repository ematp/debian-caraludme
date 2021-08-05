#!/bin/bash

cd $HOME
STATUS=$(git pull)
if [ "$STATUS" = "Ya está actualizado." ]; then
    echo "No hay comandos para ejecutar."
else
    chmod +x $HOME/.config/git-script-update.sh
    echo '---------------------------------' >> $HOME/caraludme.log
    date >> $HOME/.update-log/caraludme.log
	$HOME/.config/git-script-update.sh &>> $HOME/caraludme.log
fi

