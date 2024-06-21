#!/bin/bash

# Script Information
# Author: Max Mustermann
# Date: 2021-11-20
# Purpose: Demonstration of Bash scripting concepts
# Version: 1.0

# Initialize variables
counter=0
max_count=5
my_number=$(( RANDOM % 50 ))  # Korrektur: RANDOM sollte innerhalb von $(( )) für arithmetische Operationen verwendet werden.

# Start of the script
echo "Starting the script..."

while [ $counter -lt $max_count ]  # Korrektur: $ vor max_count, um den Wert der Variablen zu verwenden.
do
    echo "Counter is at: $counter"

    # Read user input
    read -p "Enter your name: " user_name
    echo "Hello, $user_name!"

    # if-elif-else statement
    if [ $my_number -gt 25 ]; then  # Korrektur: Semikolon hinzugefügt vor then und Leerzeichen in der Bedingung.
        echo "The number $my_number is greater than 25."
    elif [ $my_number -eq 25 ]; then  # Korrektur: Leerzeichen nach '[' und vor ']' sowie Semikolon vor then.
        echo "The number is exactly 25."
    else
        echo "The number $my_number is less than 25."
    fi  # Korrektur: Hinzufügen von 'fi' zum Schließen der if-Struktur.

    # Increment counter
    ((counter++))  # Diese Zeile ist korrekt.
done

# Check if user wants to exit
read -p "Do you want to exit? (yes/no): " user_choice
if [ "$user_choice" = "yes" ]; then  # Korrektur: Variablen in Anführungszeichen setzen und '=' für String-Vergleich verwenden.
    exit 0
elif [ "$user_choice" = "no" ]; then  # Korrektur: Hinzufügen von Anführungszeichen, '=' und 'then'.
    echo "Continuing the script..."
    exit 1  # Anmerkung: In diesem Kontext ist 'exit 1' ein logischer Fehler, da das Skript bei "no" nicht mit einem Fehlercode beendet werden sollte.
else
    echo "Invalid choice. Exiting script."
    exit 2  # Hinzugefügt: Abfangen einer ungültigen Eingabe.
fi

echo "Script ended."  # Anmerkung: Diese Zeile wird nie erreicht, da das Skript vorher durch 'exit' beendet wird.