#!/usr/bin/bash

# Script to fix up old IVI .aspx files

# Things to do:
#    Perhaps put whole scraper here.  --- Need to at least get pdf files
#    Go ahead and put the files in an active feed to study

# The following awkscript removes the asp header
echo '
/<%@/ { SkipMultiple=1;  } 
/%>/  { SkipMultiple=0; skip = 1}
/<%@[^%]*%>/ { skip=1;  } 
        {if (!(skip || SkipMultiple)) print($0); skip=0 } ' >> $$awkscript



# apply pandoc to each aspx file, generation markdown
find . -name \*.aspx > $$files
for file in `cat $$files` 
# for testing: for file in contact_us.aspx
do
    filebase=`echo $file | sed s/\.aspx//`
    #filebase=`basename -s .aspx $file`
    Title=`nawk '/Title=/ { gsub(/^.*Title=\"/, "") ; gsub( /\"[^\"]*$/, ""); print $0 }' $file`
    echo "Title is: '$Title' for $file"

    VirtualPath=`nawk '/virtualPath=/ { gsub(/^.*Title=\"/, "") ; gsub( /\"[^\"]*$/, ""); print $0 }' $file`
    echo "VirtualPath is: '$VirtualPath' for $file"


    nawk -f $$awkscript < $filebase.aspx |
    pandoc --from=html --to=markdown  > $filebase.temp

    echo "#" $Title  > $filebase.md
    cat $filebase.temp >> $filebase.md

done
