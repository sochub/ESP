#!/bin/bash
shellPath=`pwd`

sudo apt install -y gcc git wget make libncurses-dev flex bison gperf python python-pip python-setuptools python-serial python-cryptography python-future

if [ -d  $shellPath/../xtensa-esp32-elf/bin ]; then
    sudo echo 'export PATH="$shellPath/../xtensa-esp32-elf/bin:$PATH"' >> /etc/profile
    source /etc/profile
fi
if [ -d  $shellPath/../xtensa-lx106-elf/bin ]; then
    sudo echo 'export PATH="$shellPath/../xtensa-lx106-elf/bin:$PATH"' >> /etc/profile
    source /etc/profile
fi

