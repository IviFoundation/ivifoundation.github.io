#!/usr/bin/bash

# Script to fix up old IVI .aspx files



# apply pandoc to each aspx file, generation markdown
find \*.aspx > $$files
for file in `cat $$file` do
    basename -s aspx file > $basename
    $destination = $basename.markdown
    pandoc --from=html --to=markdown < $file > $destination
done
