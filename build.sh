#!/bin/sh

FILES=./sublime/*.tmTheme

rm -rf "./atom"
mkdir "./atom";

for file in $FILES; do
    echo "Processing $file ..";

    filename=$(basename "$file")
    filename="${file%.*}"
    filename="${filename##*/}"

    directory="./atom/$filename"

    apm init --theme $directory --convert $file

    rm "$directory/.gitignore" "$directory/CHANGELOG.md" "$directory/README.md"

    echo "Converted $file"
done

git commit -a -m "Convert Atom theme"
