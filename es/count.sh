#! /bin/zsh

helpFun() {
    echo "fff es/count.sh 索引\t\t\t查看文档数量"
    echo "fff es/count.sh 索引 query.json\t\t查看满足条件的文档数量"
}

if  [ -z "$1" ]; then
    helpFun
elif [ -z $2 ]; then
    curl -XGET localhost:9200/_cat/count/$1\?v
elif echo $2 | grep -q -E '\.json$' ; then
    curl -XGET -H "@$FFF_DIR/es/header.txt" localhost:9200/$1/_count -d "@$2"
else
    # curl -XGET localhost:9200/$1/_doc/$2\?pretty
    echo "命令格式错误"
    helpFun
fi

