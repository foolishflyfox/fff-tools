#! /bin/zsh
source $FFF_DIR/kafka/config.txt

for slave in `cat $FFF_DIR/data/slave.txt`
do
{
    echo -------- Kafka $slave 关闭 --------
    ssh root@$slave "jps | grep Kafka | cut -d' ' -f1 | xargs -I kafka_pid kill -s 9 kafka_pid"
}&
wait
done

