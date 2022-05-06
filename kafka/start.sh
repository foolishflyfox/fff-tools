#! /bin/zsh
source $FFF_DIR/kafka/config.txt

for slave in `cat $FFF_DIR/data/slave.txt`
do
{
    echo -------- Kafka $slave 启动 --------
    ssh root@$slave "nohup ${KAFKA_HOME}/bin/kafka-server-start.sh ${KAFKA_HOME}/config/server.properties > /dev/nul* 2>&1 &" &
}&
wait
done

