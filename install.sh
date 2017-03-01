#!/bin/bash
pushd `dirname $0` > /dev/null
CURRENT_PATH=`pwd -P`
popd > /dev/null
sudo cp $CURRENT_PATH/bin/updateScript  /usr/bin/updateScript -f

if ! [[ -f "/usr/include/updateScript" ]]
then
	sudo mkdir -p /usr/include/updateScript
fi

sudo cp $CURRENT_PATH/include/main  /usr/include/updateScript/main -f

