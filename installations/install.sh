#!/bin/bash
chmod +x ./*.sh

./uninstall.sh

./dependencies.sh

./ros_cmake.sh

cd activation

chmod +x run ./*.sh

sudo cp *.json /usr/local/bin/data
sudo chown -R $USER:$USER /usr/local/bin/data/*.json

cd ..

./setup_python_env.sh

cd bin_files

chmod +x setup.sh
./setup.sh

if [ $# -ge 1 ]; 
then 
	echo "[INFO] Rebuilding Engines"
	if [ "$1" -eq 1 ];
	then
		chmod +x build_engines.sh 
		if [ $# -eq 2 ];
		then
			./build_engines.sh $2
		else
			./build_engines.sh 3500
	    	fi
	else
		echo "[INFO] Skipping Rebuilding Engines"	
	fi    

else
	echo "[INFO] Skipping Rebuilding Engines"
fi

cd ..

source dreamvu_ws/bin/activate
python test_py_installations.py

cd activation
./activation.sh
cd ..

./timeout_patch.sh

sudo ./PAL_udev.sh

