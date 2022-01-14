#! /bin/zsh

helpFun() {
    echo "显示当前分支描述: fff git/description.sh"
    echo "设置当前分支描述: fff git/description.sh 描述"
    echo "特定分支添加描述: fff git/description.sh 分支名 描述"
}

if [ $# = 0 ] ; then
    git br | grep $(git branch --show-current)
elif [ $# = 1 ] ; then
    if [ $1 = "-h" ] || [ $1 = "--help" ]; then
        helpFun
    else
        git config branch.$(git branch --show-current).description $1
    fi
elif [ $# = 2 ] ; then
    git config branch.$1.description $2
else
    helpFun
fi
