PATH="/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/sbin:/usr/sbin:/usr/games:/snap/bin"
eval "$(~/.linuxbrew/bin/brew shellenv)"
which gem > /dev/null && PATH="$PATH:$(gem environment home)/bin"
PATH="$HOME/bin:$PATH"
