#! /bin/zsh

if  [ -z "$1" ]; then
    echo "fff git/checkout.sh 分支名"
else
    git checkout $1 || (git fetch origin && git checkout -b $1 origin/$1)
fi
