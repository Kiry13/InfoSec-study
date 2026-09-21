#!/usr/bin/env bash

file="$1"

if [[ -f "$file" ]]; then
    echo "Файл существует"

    if [[ -s "$file" ]]; then
        echo "Файл не пустой"
	
	count=$(grep -c "ERROR" "$file")
	echo "Количество строк с ERROR: $count"
    else
        echo "Файл пустой"
    fi

else
    echo "Файла нет"
    exit 1
fi

exit 0



