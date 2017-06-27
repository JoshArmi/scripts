# Scripts should be run as root/sudo
if [[ "$OSTYPE" == "darwin"* ]]; then
    userdir=/Users/$1
else
    userdir=/home/$1
fi
chmod go-w $userdir
chmod 700 $userdir/.ssh
chmod 644 $userdir/.ssh/authorized_keys
chown $1:$2 $userdir/.ssh/
