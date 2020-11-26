#!/bin/bash
cd $HOME/cloud-native-setup
echo Cleaning maven environment, compiling and running test program
mvn clean compile exec:java
