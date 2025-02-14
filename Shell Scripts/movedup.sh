# write a shell script to copy a duplicate file from two directory to third
# directory and remove both the old files. Pass names of the directory as
# command line argument.

read -p 'first file: ' f1
read -p 'sec file: ' f2

if cmp -s "$f1" "$f2"; then
    echo "same"
fi


