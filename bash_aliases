# lists contents of current directory with file permisions
alias ll='ls -l -sort'

# list all directories in current directories
alias ldir='ls -l | grep ^d'

# self explanatory
alias ..='cd ..'
alias ...='cd ../../'

# show aliases
alias a='echo "------------Your aliases------------";alias'

# Apply changes to aliases
alias sa='source ~/.bash_aliases;echo "Bash aliases sourced."'

# Edit Aliases
alias via='sudo nano ~/.bash_aliases'

# Web-apps Alias
alias wba='cd /mnt/c/web-apps/'

# Clear Alias
alias cls='clear'

# Updates repo cache and installs all kinds of updates
alias update='sudo apt-get update && sudo apt-get upgrade && sudo apt-get dist-upgrade'

# Git Alias
alias git='echo "web#2k17" | sudo -S git'

# Server alias
#alias server='echo "web#2k15" | sudo -S server'

# Gitk Alias
alias gitk='dopen gitk'

# Composer Alias
#alias composer='echo "web#2k17" | sudo -S composer'

# Sarah Assistent
alias sarah="python ~/sarah.py"

# Clean distribution
alias cleanup="dpkg --list | grep linux-image | awk '{ print $2 }' | sort -V | sed -n '/'`uname -r`'/q;p' | xargs sudo ap
t-get -y purge"

# Remote Desktop
alias remote-desktop='echo "web#2k17" | sudo -S dopen remmina'

# Switch PHPFarm
alias switch-phpfarm='/opt/phpfarm/inst/bin/switch-phpfarm'

# Composer with differnet versions.
compo() {
   local param="$1"

   shift 1

   /usr/bin/php$param /usr/local/bin/composer $@
}

# Magento Piece of shit..
magento() {
   /usr/bin/php7.0 bin/magento $@
}

# Update Server
alias update-server='echo "web#2k17" | sudo -S cp /mnt/c/web-apps/scripts/server /usr/sbin/ && sudo -S chmod +x /usr/sbin/server'


# PHP Override (2abe59)
php(){/usr/bin/php7.1 $@}