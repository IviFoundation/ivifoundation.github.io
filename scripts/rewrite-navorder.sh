#!/usr/bin/bash

# Simple script to set navorder on pages

mainpages='
about/default.md 
shared_components/Default.md 
specifications/default.md 
resources/Default.md 
announcements.html
aboutIVIFoundation/default.md
meetings.md
news/default.md
privacy_policy.md
'

aboutpages='
about/overview.md
about/architecture.md
about/instrument_classes.md
about/MSS.md
about/conformance.md
scpi/Default.md
VXIPlug_Play/Default.md
'

aboutIVIFoundationPages='
aboutIVIFoundation/charter.md
aboutIVIFoundation/operation.md
aboutIVIFoundation/ip_policy.md
aboutIVIFoundation/contact_us.md
'

# Could increase robustness of search, but "nav_order doesn't show up in our files"
awkscript='
// {  
    if ($0 ~ /nav_order:/)
     { print( "nav_order: ", page);}

    else                
      { print $0}
}'

# careful to run script from right location or files won't be found.  This assumes run from root...
cd site

i=1
for page in $mainpages
do 
cp $page $$
nawk -v page=$i "$awkscript" $$ > $page
((i=i+1))
done

i=1
for page in $aboutpages
do 
cp $page $$
nawk -v page=$i "$awkscript" $$ > $page
((i=i+1))
done


i=1
for page in $aboutIVIFoundationPages
do 
cp $page $$
nawk -v page=$i "$awkscript" $$ > $page
((i=i+1))
done

rm $$