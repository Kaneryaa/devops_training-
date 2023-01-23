#!/bin/bash

# from :- base image
# labels :- Adds metadata to an image
# run :- execute commands in a new layer  & commit the results 
# add/copy :- adds files and folder into images
# cmd  => runs binaries /commands on docker run
# entrypoint => Allows you to configure a container that will run as an executable 
# volume => create a mount point and marks it as holding externally mounted volumes
# expose => container listens on the specified network ports at runtime 
# env => set the envirments variable 
# user => set the user name (UId)
# arg => Define a variable that users can pass at build-time 
# onbuild => adds to the images a trigger instruction to be execute at a later time 

echo "==========================================="
echo "            install template              "
#sudo wget https://www.tooplate.com/zip-templates/2131_wedding_lite.zip

echo "========================================"
echo "             install package"
#sudo apt-get install unzip -y

echo "====================================="
echo "             unzip                      "
#sudo unzip 2131_wedding_lite.zip

echo "================================="
echo "       Archive                "
# tar czvf : tar used for archive an dzvf : -c create archive, z compress the archive , -v verbose , -f allow specific file name

sudo tar czvf nano.tar.gz *
