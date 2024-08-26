#!/bin/bash
apt update -y
apt install wget -y
wget -O /etc/logo2.sh https://github.com/Azumi67/UDP2RAW_FEC/raw/main/logo2.sh
chmod +x /etc/logo2.sh
if [ -f "frp.py" ]; then
    rm frp.py
fi
wget https://github.com/Azumi67/FRP_Reverse_Loadbalance/releases/download/FRP/frp.py
python3 frp.py
