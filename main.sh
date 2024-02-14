# -*- coding:utf-8 -*-
#!/bin/bash
cd /root

mv ./globalvm_doh/cloudflared.service /etc/systemd/system/cloudflared.service 
wget -P /usr/local/bin https://github.com/Zippstorm-g5/globalvm_doh/releases/download/cloudflared/cloudflared 
chmod 755 /usr/local/bin/cloudflared
chmod 755 /etc/systemd/system/cloudflared.service
rm /etc/resolv.conf
echo "nameserver 127.0.0.1" | sudo tee /etc/resolv.conf
systemctl start cloudflared
systemctl enable cloudflared
