#! /bin/zsh

if  [ -z "$1" ]; then
    echo "fff git/merge.sh 分支名"
else
    git fetch origin && git pull && git merge origin/$1
fi
