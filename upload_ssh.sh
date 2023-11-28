#!/bin/bash

# Linux服务器的地址和用户名
SERVER_ADDRESS="your_linux_server_address"
USER_NAME="cyan"

# 您的SSH私钥文件路径
PRIVATE_KEY_PATH="$HOME/.ssh/id_rsa*"

# 将SSH私钥上传到Linux服务器上的用户家目录
scp $PRIVATE_KEY_PATH $USER_NAME@$SERVER_ADDRESS:/home/$USER_NAME/

echo "SSH私钥已上传到$SERVER_ADDRESS 上的用户 $USER_NAME 的家目录。"
