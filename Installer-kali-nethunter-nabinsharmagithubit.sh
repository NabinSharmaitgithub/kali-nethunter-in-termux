#!/data/data/com.termux/files/usr/bin/bash
clear
echo "
##################################################
##                                              ##                                                                                           ##  88      a8P         db        88        88  ##                                                                                           ##  88    .88'         d88b       88        88  ##                                                                                           ##  88   88'          d8''8b      88        88  ##                                                                                           ##  88 d88           d8'  '8b     88        88  ##
##  8888'88.        d8YaaaaY8b    88        88  ##
##  88P   Y8b      d8''''''''8b   88        88  ##
##  88     '88.   d8'        '8b  88        88  ##
##  88       Y8b d8'          '8b 888888888 88  ##
##                                              ##
####  ############# NetHunter ####################
"

center() {
  termwidth=$(stty size | cut -d" " -f2)
  printf -v centerline "%*s" $(( ( termwidth - 2 - ${#1} ) / 2 ))
  echo -e "$centerline $1 $centerline"
}

echo " Loading..."

termux-setup-storage

echo
center "*** Dependencies installation***"

pkg upgrade -y -o Dpkg::Options::="--force-confnew"

pkg install -y wget -o Dpkg::Options::="--force-confnew"

echo
echo "*** Downloading***"
wget -O install-nethunter-termux https://offs.ec/2MceZWr
chmod +x install-nethunter-termux

am start -a android.intent.action.VIEW -d "https://github.com/NabinSharmaitgithub"

echo
echo "*** Installation***"
./install-nethunter-termux

 