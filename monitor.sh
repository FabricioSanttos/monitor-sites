#!/bin/bash

SITES=("https://google.com" "https://github.com" "https://youtube.com")
LOG="log.txt"

echo "==============================" >> $LOG
echo "Verificação: $(date)" >> $LOG

for SITE in "${SITES[@]}"; do
    if curl -s --max-time 5 "$SITE" > /dev/null; then
        echo "$SITE - ONLINE" >> $LOG
    else
        echo "$SITE - OFFLINE" >> $LOG
    fi
done

echo "==============================" >> $LOG