#! /bin/zsh

# $1 查看的 ES 索引
# $2 查询条件对应的 JSON 文件
if  [ -z "$1" ]; then
    echo "fff es/search.sh 索引\t\t\t查看所有文档"
    echo "fff es/search.sh 索引 查询.json\t\t查看满足条件的文档"
elif [ -z $2 ]; then
    curl -XGET localhost:9200/$1/_search
else
    curl -XGET -H "@$FFF_DIR/es/header.txt" localhost:9200/$1 -d "@$2"
fi
