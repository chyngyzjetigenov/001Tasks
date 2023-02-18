#!/bin/bash

ssh -T jetigenov@192.168.1.112 -S "sudo docker build -t mynewapp . && sudo docker run -d --restart=always -p 8080:8080 mynewapp"
