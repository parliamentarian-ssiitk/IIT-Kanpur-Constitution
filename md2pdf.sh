#!/bin/bash
for filename in ./MarkDown_Files/*.md; do
	filenamee="${filename%.md}"
	filenamee="${filenamee##*/}"
	echo "Converting $filenamee"
	pandoc "$filename" --pdf-engine=xelatex -o ./PDF_files/"$filenamee".pdf 
done
