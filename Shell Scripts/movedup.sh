# Program 29.
#############
# write a shell script to copy a duplicate file from two directory to third
# directory and remove both the old files.

dir=$1
while true;do

	echo ..........MENU..........
	echo 1.Operation on PWD.
	echo 2.Operation on Selected Path.
	echo 3.exit
	echo ........................
	echo ' '

	read -p 'Enter any one choice: ' ch
	echo ' '

	if [ $ch -eq 1 ];then
		read -p 'Enter name of first file: ' f1
		read -p 'Enter name of Second file: ' f2
		
		if cmp -s $f1 $f2
		then

			echo $f1 and $f2 are same files,then...
			cat $f1 > newdup
			rm -v $f1 $f2
			echo "Files $f1 and $f2 are remove and copy all contain in 'newdup' file."
		else
			echo Both files are diffrent..
		fi

	elif [ $ch -eq 2 ];then
		read -p 'Enter Dir Path: ' dir
		read -p 'Enter name of first file: ' f1
		read -p 'Enter name of second file: ' f2
		
		file1 = $dir/$f1
		file2 = $dir/$f2

		if cmp -s $file1 $file2
		then
			echo same
		else
			echo not same
		fi

	elif [ $ch -eq 3 ];then
		echo exit...
		exit 1
	fi
done
