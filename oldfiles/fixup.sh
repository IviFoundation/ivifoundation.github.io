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
    #echo "Title is: '$Title' for $file"

    VirtualPath=`nawk '/virtualPath=/ { gsub(/^.*virtualPath=\"/, "") ; gsub( /\"[^\"]*$/, ""); print $0 }' $file`
    #echo "VirtualPath is: '$VirtualPath' for $file"

    # convert ANSI codes to ASCII
    cp $file $$temp
    for ANSI_Replacement in "s/\x93/'/g" "s/\x92/'/g" "s/\x94/\"/g" "s/\xe2/^/g" "s/\x96/-/g"  "s/\xfc/ue/g" "s/\xae/(R)/g" "s/\x80/Euro/g" "s/\x99/(tm)/g" "s/\x9c/oe/g" "s/\x9d//g" "s/\x98/~/g"
    do
        sed $ANSI_Replacement $$temp > $$temp2
        cp $$temp2 $$temp
    done


    nawk -f $$awkscript < $$temp |
    pandoc --from=html --to=gfm  > $$temp2

    #stick the title in the front (?)
    echo "#" $Title  > $filebase.md
    cat $$temp2 >> $filebase.md

done
