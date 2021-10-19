#! /bin/zsh

helpFun() {
    echo "fff gradle/dep.sh \t\t\t查看当前目录下的依赖(有build.gradle)"
    echo "fff gradle/dep.sh 子项目\t\t查看指定子项目下的依赖"
}

if  [ -z "$1" ]; then
    gradle dependencies --configuration compile
elif [ "$1" = "-h" ]; then
    helpFun
elif [ -z $2 ]; then
    gradle $1:dependencies --configuration compile
else
    echo "命令格式错误"
    helpFun
fi

