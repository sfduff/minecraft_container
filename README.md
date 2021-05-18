# docker_minecraft

The run.sh script will use its parent folders name for the container, server and levels name, therefore when using it always run it from within its root folder.

Clone this repo to a new folder on the docker host system.  For example to create a container, server and level called 'bazinga' use the following..

    git clone https://github.com/sfduff/minecraft_container.git bazinga

In the new folder make the shell script executable


    cd bazinga
  
    chmod +x run.sh


Review the parameters in run.sh before executing it to build the bazinga container

    ./run.sh

The script uses the latest available version of Minecraft Bedrock Edition, so to upgrade the container, delete it and re-run the script.  Data is persistent in the /data folder.
