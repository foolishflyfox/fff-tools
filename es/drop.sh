#! /bin/zsh

# $1 需要删除的 ES 表名
curl -XDELETE localhost:9200/$1
