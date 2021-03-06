#!/bin/bash
shellPath=`pwd`
SDKPath=$HOME/espressif

function set_esp8266_nosdk_v2()
{
    	if [ ! -d $SDKPath ]; then
		mkdir $SDKPath
    	fi
	if [ ! -d $SDKPath/ESP8266_NONOS_V2 ]; then
		cd $SDKPath
		git clone -b release/v2.2.x --depth=1 https://github.com/espressif/ESP8266_NONOS_SDK.git ESP8266_NONOS_V2
	fi
	if [ -d $SDKPath/ESP8266_NONOS_V2/driver_lib ]; then		
		echo 'export IDF_PATH='$SDKPath'/ESP8266_NONOS_V2' >> ~/.bashrc
		source  ~/.bashrc
		echo -e "done ESP8266_NONOS_V2 path !\n${Line}"   	
	else
		echo -e "exist ESP8266_NONOS_SDK folder \n${Line}"
	fi	
}

set_esp8266_nosdk_v2



