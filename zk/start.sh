#! /bin/zsh
source $FFF_DIR/zk/config.txt

for slave in `cat $FFF_DIR/data/slave.txt`
do
    echo -------- zookeeper $slave 启动 --------
    ssh root@$slave "$ZK_HOME/bin/zkServer.sh start"
done


