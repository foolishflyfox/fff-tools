#! /bin/zsh
source $FFF_DIR/zk/config.txt

function startFunc() {
    slave=$1
    echo -------- zookeeper $slave 启动 --------
    ssh root@$slave "$ZK_HOME/bin/zkServer.sh start"
}

if [ -z $1 ]; then 
    for slave in `cat $FFF_DIR/data/slave.txt`
    do
        startFunc $slave
    done
else 
    startFunc $1
fi

