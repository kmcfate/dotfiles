PATH=/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/games:/snap/bin
echo $PATH | grep -q linuxbrew || eval $(~/.linuxbrew/bin/brew shellenv)
PATH=~/bin:$PATH
