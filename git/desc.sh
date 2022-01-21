#! /bin/zsh

helpFun() {
    echo "显示当前分支描述: fff git/desc.sh"
    echo "设置当前分支描述: fff git/desc.sh 描述"
    echo "特定分支添加描述: fff git/desc.sh 分支名 描述"
    echo "查询指定分支描述: fff git/desc.sh -b 分支(可模糊查询)"
    echo "查询指定分支描述: fff git/desc.sh --branch 分支(可模糊查询)"
}

if [ $# = 0 ] ; then
    git br | grep $(git branch --show-current)
elif [ $# = 1 ] ; then
    if [ $1 = "-h" ] || [ $1 = "--help" ] || [ $1 = "-b" ] || [ $1 = "--branch" ]; then
        helpFun
    else
        git config branch.$(git branch --show-current).description $1
    fi
elif [ $# = 2 ] ; then
    if [ $1 = "-b" ] || [ $1 = "--branch" ]; then
        git br | grep $2
    else
        git config branch.$1.description $2
    fi
else
    helpFun
fi
