#! /bin/zsh

# $1 需要创建的 ES 表名
# $2 mapping 文件路径
curl -XPUT -H "@$FFF_DIR/es/header.txt" localhost:9200/$1 -d "@$2"
