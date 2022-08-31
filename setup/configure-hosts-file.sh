#! /bin/sh

services=('127.0.0.1	asset.core' '127.0.0.1	discovery.core' '127.0.0.1	event-gateway.core' '127.0.0.1	time-series.core' '127.0.0.1	user.core' '127.0.0.1	usage-statistics.core' '127.0.0.1	connector-mqtt.core' '127.0.0.1	document.core' '127.0.0.1	job-execution.core' '127.0.0.1	rabbitmq.core' '127.0.0.1	mqtt-hivemq-broker.core')

echo "Writing hosts file"
for i in "${services[@]}"
do :
	if cat /etc/hosts | grep "$i"
	then
		echo "already exists"
	else
		echo "Writing $i to /etc/hosts"
		sudo sh -c "echo \"$i\" >> /etc/hosts"
	fi
done