# 缩减 DDL 中的不重要内容，通过 draw.io 绘制 E-R 图
s/NOT NULL[[:blank:]]+//g
s/DEFAULT[[:blank:]]+[^[:blank:]]+[[:blank:]]//g
s/`//g
