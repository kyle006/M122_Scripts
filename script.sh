#!/bin/bash

# Funktion, um die Hilfestellung anzuzeigen
print_help() {
    echo "Usage: $0 [options]"
    echo ""
    echo "Options:"
    echo "-h, --help      Show this help message and exit"
    echo "-q, --quiet     Suppress the output"
    echo "-f FILE         Specify the file name to check"
}

# Standardwerte
file_name=""
quiet=0

# Argumente parsen
while [[ "$#" -gt 0 ]]; do
    case $1 in
        -h|--help)
            print_help
            exit 0
            ;;
        -q|--quiet)
            quiet=1
            shift
            ;;
        -f)
            if [[ -n $2 && ! $2 == -* ]]; then
                file_name=$2
                shift 2
            else
                echo "Error: Option -f requires a filename as argument."
                exit 1
            fi
            ;;
        *)
            echo "Error: Invalid argument $1"
            print_help
            exit 1
            ;;
    esac
done

# Überprüfen, ob eine Datei angegeben wurde
if [[ -z $file_name ]]; then
    echo "Error: No file specified."
    print_help
    exit 1
fi

# Überprüfen, ob die Datei existiert
if [[ ! -f $file_name ]]; then
    echo "Error: File '$file_name' does not exist."
    exit 1
fi

# Kurzen Text anzeigen, wenn nicht im quiet-Modus
if [[ $quiet -eq 0 ]]; then
    echo "The file '$file_name' exists."
fi
