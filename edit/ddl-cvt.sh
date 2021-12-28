#! /bin/zsh

# 转换 db 定义语句，用于 draw.io 直接绘图

# cat | sed -E 's/NOT NULL[[:space:]]+//g;s/`//g;s/DEFAULT[[:space:]]+//g'

cat | sed -E -f $FFF_DIR/edit/ddl-cvt.sed

