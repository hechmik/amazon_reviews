while IFS= read -r line; do
    curl -O -J -X GET $line
done < "$1"
