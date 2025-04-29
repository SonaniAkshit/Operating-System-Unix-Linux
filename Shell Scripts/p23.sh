nm=''

for nm in `file * | grep "ASCII" | cut -f1 -d ":"`;do
	echo $nm
done
