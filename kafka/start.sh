#! /bin/zsh
source $FFF_DIR/kafka/config.txt

function startFunc() {
    slave=$1
    echo -------- Kafka $slave 开启 --------
    ssh root@$slave "export JMX_PORT=9988;nohup ${KAFKA_HOME}/bin/kafka-server-start.sh ${KAFKA_HOME}/config/server.properties > /dev/nul* 2>&1 &" &
}

if [ -z $1 ]; then 
    for slave in `cat $FFF_DIR/data/slave.txt`
    do
        {
            startFunc $slave
        }&
        wait
    done
else
    startFunc $1
fi


