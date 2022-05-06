#! /bin/zsh
source $FFF_DIR/zk/config.txt

for slave in `cat $FFF_DIR/data/slave.txt`
do
    echo -------- zookeeper $slave 停止 --------
    ssh root@$slave "$ZK_HOME/bin/zkServer.sh stop"
done

