#! /bin/zsh

# $1 ES 索引
# $2 主键值
# $3 插入的文档文件

if [ -z "$1" ] || [ "$1" = "help" ]; then
    echo "fff es/insert.sh 索引名 主键值 文档"
else
    curl -XPUT -H "@$FFF_DIR/es/header.txt" localhost:9200/$1/_doc/$2 -d "@$3"
fi


