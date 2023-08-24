# Docker networking 

Docker provides several networking options that allow containers to communicate with each other and with external networks. As of my last knowledge update in September 2021, here are some of the common types of Docker networking:

1. **Bridge Network**: This is the default networking mode in Docker. Containers in a bridge network can communicate with each other using container names as hostnames. Containers in a bridge network can also be exposed to the host or external network through port mapping.

2. **Host Network**: When a container uses the host network mode, it shares the network namespace with the Docker host. This means the container uses the host's network stack directly, and the container's networking is not isolated. It can be useful when you want to achieve low network latency and high throughput, but it can also have security implications.

3. **None Network**: In this mode, a container runs with its own network stack and has no external connectivity. This is useful when you want a container to run in complete isolation from the network.

4. **Overlay Network**: Overlay networks are used for communication between containers on different Docker hosts. This is particularly useful in a swarm mode, where containers are orchestrated across multiple nodes in a cluster.

5. **Macvlan Network**: This type of network allows you to assign a MAC address to a container, making it appear as a physical device on the network. This can be useful when you need to assign public IP addresses or have specific network requirements.

6. **Bridge Network with Custom IP Range**: You can create custom bridge networks and configure them to use a specific IP range. This can be helpful in scenarios where you want to manage IP addressing more granularly.

7. **External Network**: Containers can connect to an external network, which might be a physical network interface or another Docker container's network namespace. This can be useful for connecting containers to existing networks.

8. **Network Plugins**: Docker supports third-party network plugins that extend the networking capabilities. These plugins can provide specialized functionality like security, monitoring, and SDN (Software-Defined Networking) integration.

9. **User-defined Networks**: Docker allows you to create custom networks, which can be useful for organizing and isolating containers. Containers within a user-defined network can communicate with each other using container names, and you can control the network characteristics.

10. **Port Mapping**: While not a network type itself, port mapping is a common practice in Docker networking. It involves exposing container ports to the host or external network, allowing external services to communicate with containers.

Please note that Docker and its ecosystem might have evolved since my last update, so I recommend checking the latest Docker documentation or resources for the most up-to-date information on networking options.

# command
ip address show 
sudo useradd -aG $USER
----------------------------------------
docker network ls
NETWORK ID     NAME      DRIVER    SCOPE
cf815646f7c2   bridge    bridge    local
8cb930b241ae   host      host      local
9843954aa8fd   none      null      local
--------------------------------------------
docker run -itd --name nginx nginx
Unable to find image 'nginx:latest' locally
-----------------------------------------------------
 docker ps
CONTAINER ID   IMAGE     COMMAND                  CREATED          STATUS          PORTS     NAMES
1b67b4717512   nginx     "/docker-entrypoint.…"   28 seconds ago   Up 14 seconds   80/tcp    nginx
-----------------------------------------------------------------------------------------
%docker exec -it nginx sh
# ping danish.servoxi.com
sh: 1: ping: not found
--------------------------------------------------
 sudo usermod -aG docker $USER
  docker network ls
NETWORK ID     NAME      DRIVER    SCOPE
f270a245bc7e   bridge    bridge    local
8cb930b241ae   host      host      local
9843954aa8fd   none      null      local
---------------------------------------------------
 **bydefaul bridge***
 docker run -itd --name naginx-defau nginx
Unable to find image 'nginx:latest' locally
 docker inspect bridge
[
    {
        "Name": "bridge",
        "Id": "f270a24
    }
    {
    "Name": "naginx-defau",
     "MacAddress": "02:42:ac:11:00:02",
      "IPv4Address": "172.17.0.2/16",

    }
]
 --------------------------------------------------
 **custom brifge**
docker network create servoxi
5285f5fe6a96dc116458c90179a71c6df6d2ce37eb45cab3a4a83ef22fb4dc08

 docker network ls
NETWORK ID     NAME      DRIVER    SCOPE
f270a245bc7e   bridge    bridge    local
8cb930b241ae   host      host      local
9843954aa8fd   none      null      local
5285f5fe6a96   servoxi   bridge    local

└─$ docker run -itd --name naginx-custom-1 --network servoxi nginx
5a455bfacb1f76f1823ba155584ee6b9ddc288f9fe0bf27ca62c9267be42ecbe

┌──(vagrant㉿packerAutoKali-default)-[~]
└─$ docker run -itd --name naginx-custom-2 --network servoxi nginx
969b6d36573a67b0d595d929234caf8d92c92adc77c8c0fe171aa436eca2bf45

 docker inspect servoxi
[
    {
        "Name": "servoxi",
        "Id": "528
    }
    {
    "Name": "naginx-custom-1",
   "MacAddress": "02:42:ac:12:00:02",
    "IPv4Address": "172.18.0.2/16",
   }
   {
      "Name": "naginx-custom-2",
       "MacAddress": "02:42:ac:12:00:03",
       "IPv4Address": "172.18.0.3/16",
   }

git clone https://github.com/LondheShubham153/microservices-k8s.git
Cloning into 'microservices-k8s'...

$ docker build -t servoxi .
Sending build context to Docker daemon   12.8kB
Step 1/8 : FROM python:alpine3.7

docker run -itd --name servoxi-python -p 5000:5000 --network servoxi servoxi:latest
002eb23421fbe637b4336e50c650e700e179d0845deab97460abf6b25b830ff9

└─$ docker ps -a
CONTAINER ID   IMAGE            COMMAND           -       CREATED       STATUS
002eb23421fb   servoxi:latest   "python app.py"   

─$ docker exec -it 56e5ae50ae36 sh
/app #

*/app # ping danish.servoxi.com
PING danish.servoxi.com (217.21.95.197): 56 data bytes
64 bytes from 217.21.95.197: seq=0 ttl=54 time=13.396 ms
64 bytes from 217.21.95.197: seq=1 ttl=54 time=7.271 ms

* docker run -d --name mongo mongo
Unable to find image 'mongo:latest' locally
latest: Pulling from library/mongo

$ docker logs 56e5ae50ae36
192.168.33.1 - - [17/Aug/2023 04:25:22] "GET / HTTP/1.1" 200 -
192.168.33.1 - - [17/Aug/2023 04:25:23] "GET /favicon.ico HTTP/1.1" 404 -
192.168.33.1 - - [17/Aug/2023 04:26:21] "GET / HTTP/1.1" 200 -

pymongo.errors.ServerSelectionTimeoutError: mongo:27017: [Errno -2] 
192.168.33.1 - - [17/Aug/2023 04:37:28] "GET /tasks HTTP/1.1" 500 -

└─$ docker kill mongo
mongo

*docker run -d --name mongo --network servoxi mongo

---------------------------------------------------
**None Network**
------------------------------------------------------

docker run -d --name nginx-none --network none nginx
ecd1132e3a38bb16e236e5dd0d6452f499247aa9c3ec6bc3a9ac2016446ccaf1

---------------------------------------------------
**overlayer**
------------------------------------------------------

# Docker volue

---------------------------------------------------
**Grafana**
---------------------------------------------------







