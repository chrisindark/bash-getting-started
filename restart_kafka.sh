#!/bin/bash


echo "cd into logs folder"

cd $HOME
echo $(pwd)

echo "Deleting kafka logs folder"
rm -rf ./logs

echo "Stop zookeeper service"
sudo systemctl stop zookeeper.service

echo "Stop kafka service"
sudo systemctl stop kafka.service

echo "Start zookeeper service"
sudo systemctl start zookeeper.service

echo "Start kafka service"
sudo systemctl start kafka.service
