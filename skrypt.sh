#!/bin/bash

# Użycie: ./skrypt.sh [--date] [--logs] [--logs30] [--help]

if [[ $1 == "--date" ]]; then
  # Wyświetlanie dzisiejszej daty
  current_date=$(date +"%Y-%m-%d")
  echo "Dzisiejsza data: $current_date"
elif [[ $1 == "--logs" ]]; then
  # Tworzenie 100 plików log
  for ((i = 1; i <= 100; i++)); do
    filename="log${i}.txt"
    echo "Nazwa pliku: $filename" > $filename
    echo "Skrypt: $0" >> $filename
    echo "Data utworzenia: $(date)" >> $filename
  done
  echo "Utworzono 100 plików log"
elif [[ $1 == "--logs30" ]]; then
  # Tworzenie 30 plików log
  for ((i = 1; i <= 30; i++)); do
    filename="log${i}.txt"
    echo "Nazwa pliku: $filename" > $filename
    echo "Skrypt: $0" >> $filename
    echo "Data utworzenia: $(date)" >> $filename
  done
  echo "Utworzono 30 plików log"
elif [[ $1 == "--help" ]]; then
  # Wyświetlanie dostępnych opcji
  echo "Dostępne opcje:"
  echo "--date - wyświetla dzisiejszą datę"
  echo "--logs - tworzy 100 plików log"
  echo "--logs30 - tworzy 30 plików log"
  echo "--help - wyświetla wszystkie dostępne opcje"
else
  echo "Nieznana opcja. Użyj --help, aby zobaczyć dostępne opcje."
fi

