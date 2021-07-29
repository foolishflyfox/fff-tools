#! /bin/zsh

# $1 需要查看的 ES 表名
curl -XGET localhost:9200/$1/_mapping
