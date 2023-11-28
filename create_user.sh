#!/bin/bash

# 确保脚本以root权限运行
if [ "$(id -u)" != "0" ]; then
    echo "该脚本必须以root用户运行" 1>&2
    exit 1
fi

# 创建新用户
USER_NAME="cyan"
useradd -m -s /bin/bash $USER_NAME # -m选项会创建家目录

# 设置免密sudo权限
echo "$USER_NAME ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

echo "用户$USER_NAME创建成功，并已赋予免密sudo权限。"