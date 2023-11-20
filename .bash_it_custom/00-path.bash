PATH="/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/sbin:/usr/sbin:/usr/games:/snap/bin:$(gem environment home)/bin"
echo "$PATH" | grep -q linuxbrew || eval "$(~/.linuxbrew/bin/brew shellenv)"
PATH="$HOME/bin:$PATH"
