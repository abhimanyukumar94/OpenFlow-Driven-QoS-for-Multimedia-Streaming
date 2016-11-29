#! /bin/sh
export USERNAME="rjoseph4"

set -x

mkdir ~/.ssl
cp geni-$USERNAME.pem ~/.ssl/

./java_install.sh

# Create a keygen pair and use password:rjoseph4
#if [ -f ~/.ssh/id_rsa.pub ]
#then
#    printf "\n" | ssh-keygen -t rsa -N "rjoseph4"
#fi
mkdir ~/.ssh
cp id_rsa* ~/.ssh/
#ssh-keygen -t rsa -N "rjoseph4"

cp .flukes.properties ~

cp *.geni ~/


