#!/bin/sh
# expect函数用来自动填充脚本传参

ip=$2
password=$1
BASE_DIR=$(cd $(dirname $0); pwd)

expect <<EOF
    set timeout 18000
    spawn sh $BASE_DIR/auto_install.sh $ip
    expect {
        "Y/y|n" { send "y\n";exp_continue }
        "y/i" { send "y\n";exp_continue }
        "y/n" { send "y\n";exp_continue }
        "用户密码" { send "$password\n";exp_continue }
    }
EOF
