# Scripts should be run as root/sudo
if [ -z "$2" ]; then
    echo "Script should be passed the user and group required"
    exit 1
fi

if [[ "$OSTYPE" == "darwin"* ]]; then
    userdir=/Users/$1
else
    userdir=/home/$1
fi
chmod go-w $userdir
chmod 700 $userdir/.ssh
chmod 644 $userdir/.ssh/authorized_keys
chown $1:$2 $userdir/.ssh/
