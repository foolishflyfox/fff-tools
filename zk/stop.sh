#! /bin/zsh
source $FFF_DIR/zk/config.txt

function stopFunc() {
    slave=$1
    echo -------- zookeeper $slave 停止 --------
    ssh root@$slave "$ZK_HOME/bin/zkServer.sh stop"
}

if [ -z $1 ]; then 
    for slave in `cat $FFF_DIR/data/slave.txt`
    do
        stopFunc $slave
    done
else 
    stopFunc $1
fi


