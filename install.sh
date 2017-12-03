# Pinachtsbaum
# Copyright 2017 Thomas Johannesmeyer
#
# Licensed under the "THE BEER-WARE LICENSE" (Revision 42):
# Thomas Johannesmeyer wrote this file. As long as you retain this notice you
# can do whatever you want with this stuff. If we meet some day, and you think
# this stuff is worth it, you can buy me a beer or coffee in return


clear
echo "\n          Developed by Thomas Johannesmeyer - www.geeky.gent\n"
cat ./misc/fireplace.txt

echo "\n\n                      Welcome to Pinachtsbaum!"
echo "\nYou will now be shown the contents of the install script and be asked\nif you want to continue the installation.\n\n"
read -n 1 -s -r -p "                     Press any key to continue"

clear
cat ./install/install_requirements.sh

echo "\nDo you want to execute this?\nAnswer with 1 or 2."
select yn in "Yes" "No"; do
  case $yn in
    Yes ) break;;
    No ) exit;;
  esac
done

source ./install/install_requirements.sh
clear
source ./misc/animation.sh
