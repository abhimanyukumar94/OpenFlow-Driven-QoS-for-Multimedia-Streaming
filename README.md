# OpenFlow Driven QoS

Platform: 
ORCA Flukes GENI Framework installed on VCL Ubuntu VM.
Ubuntu version: Linux bn18-237.dcs.mcnc.org 3.13.0-86-generic #131-Ubuntu SMP Thu May 12 23:33:13 UTC 2016 x86_64 x86_64 x86_64 GNU/Linux

ExoGENI Controller used:
PSC Pittsburgh, PA USA

OS installed on each GENI node:
Ubuntu version: Linux bn20-19.dc.mcnc.org 3.13.0-86-generic #131-Ubuntu SMP Thu May 12 23:33:13 UTC 2016 x86_64 x86_64 x86_64 GNU/Linux

Language of the OpenFlow Controller: 
Python 2.7

Openflow Controller Framework:
ryu 4.8.1

Python Code filename:
"rest_router.py"

Build Instructions:
Build is not required.

1) Basic configuration of each OVS node which should be added in the Post Boot Script of each OVS node:
Script is present in zip file with filename "setup_ovs.sh".

2) Steps for starting the OpenFlow Controller in the Controller node:
1. Installation commands which should be added in the Post Boot Script of the Controller node: 
apt-get update
apt-get install -y python-gevent python-routes python-webob python-paramiko
apt-get install -y python-pip
pip install -U netaddr six pbr
pip install ryu
pip install networkx
2. Replace the "rest_router.py" file at "/usr/local/lib/python2.7/dist-packages/ryu/app" with the file present in our zip file.
3. Start ryu-manager using the command: "ryu-manager ryu.app.rest_router"
4. Run the attached script for configuring the interfaces on each OVS node. The "dpids.txt" file contains the DPID of each OVS switch starting from OVS1 to OVS2:
./setup_controller.sh < dpids.txt

3) Steps for configuring the Hosts:
1. Install "ostinato" which would be used as the loader of congestion cross-traffic.
2. Install "vlc" which would be used for streaming/recording the video.
3. Load routes of target Hosts in the routing table of each Host node. This is intended to just transmit the packets to the neighbouring OVS node.

Once the basic setup is completed we can begin running the test cases.
