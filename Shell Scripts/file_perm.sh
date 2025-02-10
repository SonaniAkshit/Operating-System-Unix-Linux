#Program 24
############
#Accept filename as command line argument & display its permissions for 
#read , write or execute otherwise display appropriate messages.

if [ -z "$1" ]; then # Checks if command-line argument is empty or not,-z Returns true if the string is empty.
	echo "Error: Pass file name as command line argument"
	exit 1
fi

filename=$1

if [ -d "$filename" ];then
	echo "Error: Input only filename"
	exit 1
fi


if [ ! -e "$filename" ]; then # Checks -e file exist or not.
        echo "Error: File '$filename' dose not exist."
        exit 1
else
        echo " "
        echo "File name: '$filename'"

        echo " "
        permissions=$(ls -l "$filename" | cut -d ' ' -f 1)
        echo "'$filename':'$permissions'"

        echo " "
        if [ -r "$filename" ]; then
                echo "Readable"
        else
                echo "Not Readable"
        fi

        echo " "
        if [ -w "$filename" ]; then
                echo "Writable"
        else
                echo "Not Writable"
        fi

        echo ""
        if [ -x "$filename" ]; then
                echo "Executable"
        else
                echo "Not Executable"
        fi
		
        echo " "
        if [ -s "$filename" ]; then
                echo "File is not empty"
        else
                echo "File is empty"
        fi

        echo " "
        exit 1
fi


