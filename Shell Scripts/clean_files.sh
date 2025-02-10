# Program 25
# Write a shell script which recursively delete *.obj , *.lst or all files with length of zero bytes.

choice=''

dir=$1

while true; do
	
	echo ........Menu.........
	echo 1.Delete *.obj files.
	echo 2.Delete *.lst files.
	echo 3.Delete *.txt files.
	echo 4.Delete empty files.
	echo 5.exit
	echo .....................

	read -p "Enter the choice : " choice

	if [ "$choice" -eq 1 ];then
		
		read -p "Enter dir path: " dir # Input full path like: /home/akshitsonani/Unix Programs/Operating-System-Unix-Linux/Shell Scripts
		rm -v "$dir"/*.obj # Check .obj files and delete it all

	elif [ "$choice" -eq 2 ];then
		
		read -p "Enter dir path: " dir
		rm -v "$dir"/*.lst # Check .lst files and delete it all

	elif [ "$choice" -eq 3 ];then

		read -p "Enter dir path: " dir
		rm -v "$dir"/*.txt # check .txt files and delete it all

	elif [ "$choice" -eq 4 ];then
		
		read -p "Enter dir path: " dir
		#rm -v $( find "$dir" -type f -size 0)
		find "$dir" -type f -size 0 -exec rm -v {} + # Check all empty files and delete it all

	elif [ "$choice" -eq 5 ];then
		echo "exit..."
		break
	else
		echo "Error: You enter wrong choice...."
	fi
done
