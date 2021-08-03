#! /bin/zsh

# $1 ES 索引
# $2 查询条件对应的 JSON 文件
# $3 主键编号

if [ -z "$1" ] || [ "$1" = "help" ]; then
    echo "fff es/delete.sh 索引名\t\t\t表示删除指定索引下的全部文档"
    echo "fff es/delete.sh 索引名 主键\t\t表示删除指定索引下的指定文档"
elif [ -z $2 ]; then
    curl -XPOST -H "@$FFF_DIR/es/header.txt" localhost:9200/$1/_doc/_delete_by_query\?pretty -d '{"query":{"match_all": {}}}'
else
    curl -XDELETE localhost:9200/$1/_doc/$2
fi
