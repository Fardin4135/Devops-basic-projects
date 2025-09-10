#!/usr/bin/bash

use=$(df -h --total | grep 'total' | awk '{print $2}')
echo "$use"




