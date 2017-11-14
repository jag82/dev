#!/bin/bash
 
echo '[update-linux-packages.sh]'

echo '  updating apt and upgrading packages'

sudo apt update
sudo apt upgrade -y
