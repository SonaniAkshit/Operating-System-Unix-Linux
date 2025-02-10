#Program 23.
############
# Write a program to display all the files from given directory.(display
# file only if it is ascii)
# if directory is not passed as argument then display from current dir.

nm=' '

for nm in `file * | grep "ASCII" | cut -f1 -d ":"`;do
	echo $nm
done
