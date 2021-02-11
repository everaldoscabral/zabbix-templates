#!/bin/bash

MTR=$(which mtr)
IP=$1

$MTR -r -c3 -w -b -p -j $IP
