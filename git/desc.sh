#! /bin/zsh

helpFun() {
    echo "显示当前分支描述: fff git/desc.sh"
    echo "查询指定分支描述: fff git/desc.sh 分支(可模糊查询)"
    echo "设置当前分支描述: fff git/desc.sh [-s|--set] 描述"
    echo "特定分支添加描述: fff git/desc.sh 分支名 描述"
}

if [ $# = 0 ] ; then
    git br | grep $(git branch --show-current) | grep "*"
elif [ $# = 1 ] ; then
    if [ $1 = "-h" ] || [ $1 = "--help" ] || [ $1 = "-s" ] || [ $1 = "--set" ]; then
        helpFun
    else
        # 查询特定分支
        git br | grep $1
    fi
elif [ $# = 2 ] ; then
    if [ $1 = "-s" ] || [ $1 = "--set" ]; then
        # 设置当前分支描述
        git config branch.$(git branch --show-current).description $2
    else
        # 设置指定分支描述
        git config branch.$1.description $2
    fi
else
    helpFun
fi
