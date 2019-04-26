#!/usr/bin/env bash

mvn clean packege

echo 'Copy files...'

scp -i ~/.ssh/key_ubuntu.pem \
    target/WebApp.jar\
    ubuntu@ec2-18-219-49-17.us-east-2.compute.amazonaws.com:/home/ubuntu/

echo 'Restart server...'

ssh -i ~/.ssh/key_ubuntu.pem ubuntu@ec2-18-219-49-17.us-east-2.compute.amazonaws.com << EOF
pgrep java | xargs kill -9
nohup java -jar WebApp.ja > log.txt &
EOF

echo 'Bye'