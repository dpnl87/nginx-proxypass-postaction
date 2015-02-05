#!/bin/bash
yum -y update
rpm -i https://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
yum install -y nginx
service nginx start
