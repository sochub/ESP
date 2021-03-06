#!/bin/bash
shellPath=`pwd`
IDFPath=$HOME/toolchain/espressif

function set_esp_idf()
{
    	if [ ! -d $IDFPath ]; then
		mkdir $IDFPath
    	fi
	cd $IDFPath
	if [ ! -d $IDFPath/esp-idf ]; then
		git clone --recursive --depth=1 https://github.com/espressif/esp-idf.git
	else
		cd $IDFPath/esp-idf
		git submodule update --init --recursive
	fi
	if [ -z $IDF_PATH ]; then		
		echo 'export IDF_PATH='$IDFPath'/esp-idf' >> ~/.bashrc
		source  ~/.bashrc
		echo -e "export IDF_PATH to ~/.bashrc !\n${Line}"   	
	fi
	if [ -f $IDFPath/esp-idf/add_path.sh ]; then		
		chmod +x $IDFPath/esp-idf/add_path.sh
		$IDFPath/esp-idf/add_path.sh
		python -m pip install --user -r $IDFPath/esp-idf/requirements.txt
		echo -e "done esp-idf config !\n${Line}"   	
	fi	
}

set_esp_idf



