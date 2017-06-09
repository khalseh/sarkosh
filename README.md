# [KeTMaan](https://github.com/khalseh)


* * *


# Installation

```sh
# Let's install the bot.
cd $HOME
git clone https://github.com/khalseh/sarkosh.git
cd sarkosh
chmod +x ket.sh
chmod 777 auto.sh && sed -i -e 's/\r$//' auto.sh
./ket.sh install
./ket.sh 
# Enter a phone number & confirmation code.
```
### One command
To install everything in one command, use:
```sh
cd $HOME && git clonehttps://github.com/khalseh/sarkosh.git && cd sarkosh && chmod +x ket.sh && chmod 777 auto.sh && sed -i -e 's/\r$//' auto.sh && ./ket.sh install && ./ket.sh
```

* * *

### launch Bot

```
killall screen
cd sarkosh && screen ./ket.sh
```

* * *


### auto launch 
```
killall screen
cd sarkosh && screen ./auto.sh
```

* * *


### Sudo

Open ./bot/bot.lua and add your ID to the "sudo_users" section in the following format:
```
    sudo_users = {
    377450049,
    0,
    YourID
  }
