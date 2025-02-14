# Program 27.
# ##########
# Write a shell script for printing calender for the month that entered as a char argument

read -p "Enter the month [1-12]: " month
read -p "Enter the Year: " year
cal $month $year
