#! /bin/zsh

# $1 需要创建的 ES 表名
# $2 mapping 文件路径
if [ "$1" = "help" ]; then
    echo "fff es/create.sh 索引名 mapping文件"
else
    curl -XPUT -H "@$FFF_DIR/es/header.txt" localhost:9200/$1 -d "@$2"
fi


