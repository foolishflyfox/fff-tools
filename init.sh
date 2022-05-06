#! /bin/zsh

if [ -z $FFF_DIR ]; then
    find . -name "*.sh" | xargs -I shell-file chmod u+x shell-file
else
    find $FFF_DIR -name "*.sh" | xargs -I shell-file chmod u+x shell-file
fi
