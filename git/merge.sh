#! /bin/zsh

CURRENT_BRANCH=$(git branch --show-current)
if  [ -z "$1" ]; then
    echo "fff git/merge.sh 分支名"
else
    # git fetch origin && git pull && git merge origin/$1
	git checkout $1
	git pull
	git checkout $CURRENT_BRANCH
	git merge $1
fi
