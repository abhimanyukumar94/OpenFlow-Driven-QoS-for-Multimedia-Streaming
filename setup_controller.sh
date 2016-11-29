# Save all the IPS
#controller="$1"
#ovs1="$2"
#ovs2="$3"
#ovs3="$4"
#ovs4="$5"

#read controller
read ovs1
read ovs2
read ovs3
read ovs4

echo $ovs1 $ovs2 $ovs3 $ovs4

curl -X POST -d '{"address":"192.168.1.1/24"}' http://0.0.0.0:8080/router/$ovs1
curl -X POST -d '{"address":"10.10.12.1/24"}' http://0.0.0.0:8080/router/$ovs1
curl -X POST -d '{"address":"10.10.13.1/24"}' http://0.0.0.0:8080/router/$ovs1

curl -X POST -d '{"address":"192.168.2.1/24"}' http://0.0.0.0:8080/router/$ovs2
curl -X POST -d '{"address":"10.10.12.2/24"}' http://0.0.0.0:8080/router/$ovs2
curl -X POST -d '{"address":"10.10.23.2/24"}' http://0.0.0.0:8080/router/$ovs2
curl -X POST -d '{"address":"10.10.24.2/24"}' http://0.0.0.0:8080/router/$ovs2

curl -X POST -d '{"address":"192.168.3.1/24"}' http://0.0.0.0:8080/router/$ovs3
curl -X POST -d '{"address":"10.10.13.3/24"}' http://0.0.0.0:8080/router/$ovs3
curl -X POST -d '{"address":"10.10.23.3/24"}' http://0.0.0.0:8080/router/$ovs3
curl -X POST -d '{"address":"10.10.34.3/24"}' http://0.0.0.0:8080/router/$ovs3

curl -X POST -d '{"address":"192.168.4.1/24"}' http://0.0.0.0:8080/router/$ovs4
curl -X POST -d '{"address":"10.10.24.4/24"}' http://0.0.0.0:8080/router/$ovs4
curl -X POST -d '{"address":"10.10.34.4/24"}' http://0.0.0.0:8080/router/$ovs4


curl -X POST -d '{"destination": "192.168.2.0/24", "gateway": "10.10.12.2"}' http://localhost:8080/router/$ovs1
curl -X POST -d '{"destination": "192.168.3.0/24", "gateway": "10.10.13.3"}' http://localhost:8080/router/$ovs1

curl -X POST -d '{"destination": "192.168.1.0/24", "gateway": "10.10.12.1"}' http://localhost:8080/router/$ovs2

curl -X POST -d '{"destination": "192.168.1.0/24", "gateway": "10.10.13.1"}' http://localhost:8080/router/$ovs3

