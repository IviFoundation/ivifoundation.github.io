for file in `find . -name \*.md`
do
    sed 's/\.md)/\.html)/g' $file > $$temp
    echo '---' > $file
    echo 'layout: default' >> $file
    echo '---' >> $file
    cat $$temp >> $file
done