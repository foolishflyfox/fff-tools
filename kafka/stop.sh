#! /bin/zsh
source $FFF_DIR/kafka/config.txt

function stopFunc() {
    slave=$1
    echo -------- Kafka $slave 关闭 --------
    ssh root@$slave "jps | grep Kafka | cut -d' ' -f1 | xargs -I kafka_pid kill -s 9 kafka_pid"
}
if [ -z $1 ]; then 
    for slave in `cat $FFF_DIR/data/slave.txt`
    do
        {
            stopFunc $slave
        }&
        wait
    done
else
    stopFunc $1
fi

