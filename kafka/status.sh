#! /bin/zsh
source $FFF_DIR/kafka/config.txt

if  [ -z "$1" ]; then
    echo "fff kafka/status.sh 主机名或ip"
else
    echo "${KAFKA_HOME}/bin/kafka-topics.sh --bootstrap-server $1:9092 --list"
    ssh root@$1 "${KAFKA_HOME}/bin/kafka-topics.sh --bootstrap-server $1:9092 --list"
fi


