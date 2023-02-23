#!/usr/bin/bash

# Script to fix up old IVI .aspx files

destinationDir="../site/"

# Things to do:
#    Perhaps put whole scraper here.  --- Need to at least get pdf files
#    Go ahead and put the files in an active feed to study

# The following awkscript removes the asp header
echo '
/<%@/ { SkipMultiple=1;  } 
/%>/  { SkipMultiple=0; skip = 1}
/<%@[^%]*%>/ { skip=1;  } 
        {if (!(skip || SkipMultiple)) print($0); skip=0 } ' >> $$awkscript

echo '
/div id=\"leftCol\".*\/div/  {next}
/div id=\"leftCol\"/ { 
    count = 0
    while (1) {
        getline;
        if ($0 ~ /<div/) 
            count++;
        if ($0 ~ /<\/div/) {
            if (count==0)
                break;
            count--
        }
    }
    next
  } 
/div id=\"rightCol\"/ { 
    count = 0
    while (1) {
        getline;
        if ($0 ~ /<div.*\/div>/)
            print $0
        else if ($0 ~ /<div/) 
            count++;
        else if ($0 ~ /<\/div/) {
            if (count==0)
                break;
            print $0
            count--
        }
        else
            print $0
    }
    next
  } 
 { print $0 }
  ' >> $$awk-removeDiv




# apply pandoc to each aspx file, generation markdown
find . -name \*.aspx > $$files
for file in `cat $$files` 
# for testing: for file in contact_us.aspx
do
    # Get file basename for operations below
    filebase=`echo $file | sed s/\.aspx//`
    directory=`echo $file | sed s/[^\/]*.aspx//`

    echo "Processing: " $filebase

    # Extract the aspx Tutle and VirtualPath variables
    Title=`nawk '/Title=/ { gsub(/^.*Title=\"/, "") ; gsub( /\"[^\"]*$/, ""); print $0 }' $file`
    VirtualPath=`nawk '/virtualPath=/ { gsub(/^.*virtualPath=\"/, "") ; gsub( /\"[^\"]*$/, ""); print $0 }' $file`
    

    # convert ANSI codes to ASCII
    cp $file $$temp
    for ANSI_Replacement in "s/\x93/'/g" "s/\x92/'/g" "s/\x94/\"/g" "s/\xe2/^/g" "s/\x96/-/g"  "s/\xfc/ue/g" "s/\xae/(R)/g" "s/\x80/Euro/g" "s/\x99/(tm)/g" "s/\x9c/oe/g" "s/\x9d//g" "s/\x98/~/g"
    do
        sed $ANSI_Replacement $$temp > $$temp2
        cp $$temp2 $$temp
    done

    # Run the awk scripts and pandoc.  First removes aspx header, second removes division (for left-hand nav)
    nawk -f $$awkscript < $$temp |
    nawk -f $$awk-removeDiv |
    pandoc --from=html --to=gfm  > $$temp2

    # pandoc doesn't seem to like piping into this filter..
    sed 's/\.aspx)/.md)/g' $$temp2 > $$temp

    #stick the title in the front (?)  --- NO most files have the title in-line
    #echo "#" $Title  > $filebase.md

    # move the working file to output.
    if [ ! -d $destinationDir$directory ]; then
        mkdir $destinationDir$directory    
    fi
    cp $$temp  $destinationDir$directory`basename $filebase.md`
    
done

rm $$awkscript
rm $$awk-removeDiv
rm $$temp
rm $$temp2
rm $$files