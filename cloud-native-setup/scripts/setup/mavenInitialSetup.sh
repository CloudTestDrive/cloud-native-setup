#!/bin/bash
cd $PROJECT_DIR
echo Cleaning maven environment, compiling and running test program
mvn clean compile exec:java
