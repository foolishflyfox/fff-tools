#! /bin/zsh

if  [ -z "$1" ]; then
    echo "fff es/search.sh 索引\t\t\t查看所有文档"
    echo "fff es/search.sh 索引 查询.json\t\t查看满足条件的文档"
    echo "fff es/search.sh 索引 主键id\t\t查看指定主键的文档"
    echo '通过浏览器请求全部: {"query": {"match_all": {}}}'
elif [ -z $2 ]; then
    curl -XGET localhost:9200/$1/_search
elif echo $2 | grep -q -E '\.json$' ; then
    curl -XGET -H "@$FFF_DIR/es/header.txt" localhost:9200/$1/_search -d "@$2"
else
    curl -XGET localhost:9200/$1/_doc/$2\?pretty
fi
