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


