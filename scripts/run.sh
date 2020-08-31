#!/bin/bash

#Only builds figures if pdf not found.
cd ../;
current_dir=`pwd`;
temp="/include/Solutions/";
src="/src";
sol_dir="$current_dir$temp";
src_dir="$current_dir$src";
cd "$sol_dir";

for year in *;
	do 
		cd "$year";
		echo "Year: $year";
		if [ -d "figures" ]; then
			cd "figures";
			for file in *.tex;
				do 
					base="${file%.*}";
					pdf="$base"".pdf";
					if [ ! -f "$pdf" ]; then
					 	echo "$file";
						pdflatex "$file" > /dev/null;
					fi;
				done;
			cd ../;
		fi;
		cd ../;
	done;

cd "$src_dir";

echo "Building draft.pdf...";
pdflatex -jobname=draft main.tex > /dev/null;
mv draft.pdf ../;
echo "Done.";


