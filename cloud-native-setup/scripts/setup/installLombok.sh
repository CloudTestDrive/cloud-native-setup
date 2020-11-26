#!/bin/bash
cd $HOME/Downloads
echo Getting latest version of Lombok
wget https://projectlombok.org/downloads/lombok.jar
echo Installing Lombok
mv lombok.jar $HOME/eclipse
echo Configuring Eclipse to use lombok
echo -javaagent:/home/opc/eclipse/lombok.jar >> $HOME/eclipse/eclipse.ini
