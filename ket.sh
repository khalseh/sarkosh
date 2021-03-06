#!/usr/bin/env bash

cd $HOME/sarkosh

install() {
	    cd tg
		sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test
		sudo apt-get install g++-4.7 -y c++-4.7 -y
		sudo apt-get update
		sudo apt-get upgrade
		sudo apt-get install libreadline-dev -y libconfig-dev -y libssl-dev -y lua5.2 -y liblua5.2-dev -y lua-socket -y lua-sec -y lua-expat -y libevent-dev -y make unzip git redis-server autoconf g++ -y libjansson-dev -y libpython-dev -y expat libexpat1-dev -y
		sudo apt-get install screen -y
		sudo apt-get install tmux -y
		sudo apt-get install libstdc++6 -y
		sudo apt-get install lua-lgi -y
		sudo apt-get install libnotify-dev -y
		sudo service redis-server restart
		wget https://valtman.name/files/telegram-cli-1222
		mv telegram-cli-1222 tgcli
		chmod +x tgcli
		cd ..
		chmod +x bot
		chmod +x tg
}

function print_logo() {
echo -e "  _  __         _____   __  __                  "
echo -e " | |/ /   ___  |_   _| |  \/  |   __ _   _ __   "
echo -e " | ' /   / _ \   | |   | |\/| |  / _` | | '_ \  "
echo -e " | . \  |  __/   | |   | |  | | | (_| | | | | | "
echo -e " |_|\_\  \___|   |_|   |_|  |_|  \__,_| |_| |_| "
echo -e "\n\e[36m"                                          
}



function logo_play() {
    declare -A txtlogo
    seconds="0.010"
    echo -e "  _  __         _____   __  __                  "
    echo -e " | |/ /   ___  |_   _| |  \/  |   __ _   _ __   "
    echo -e " | ' /   / _ \   | |   | |\/| |  / _` | | '_ \  "
    echo -e " | . \  |  __/   | |   | |  | | | (_| | | | | | "
    echo -e " |_|\_\  \___|   |_|   |_|  |_|  \__,_| |_| |_| "
    printf "\033[38;5;600m\t"
    for i in ${!txtlogo[@]}; do
        for x in `seq 0 ${#txtlogo[$i]}`; do
            printf "${txtlogo[$i]:$x:1}"
            sleep $seconds
        done
        printf "\n\t"
    done
    printf "\n"
}

if [ "$1" = "install" ]; then
  install
  else

if [ ! -f ./tg/tgcli ]; then
    echo "tg not found"
    echo "Run $0 install"
    exit 1
 fi


   #sudo service redis-server restart
   #./tg/tgcli -s ./bot/bot.lua -l 1 -E $@
   ./tg/tgcli -s ./bot/bot.lua $@
fi
