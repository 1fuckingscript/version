# Illegal selling and redistribution of this script is strictly prohibite
# Please respect author's Property
# Binigay sainyo ng libre, ipamahagi nyo rin ng libre.
#
#

# Install AutoScript
function ssh() {
    rm -f DebianVPS* && wget -q 'https://raw.githubusercontent.com/Bonveio/BonvScripts/master/DebianVPS-Installer' && chmod +x DebianVPS-Installer && ./DebianVPS-Installer 
    rm -f /etc/banner
    wget -qO /etc/banner https://raw.githubusercontent.com/1fuckingscript/version/main/bt
    dos2unix -q /etc/banner
    service ssh restart
    service sshd restart
    service dropbear restart
}
ssh

function service() {
# Getting Proxy Template
wget -q -O /etc/markkingduranws https://raw.githubusercontent.com/1fuckingscript/version/main/markkingduran.py
chmod +x /etc/markkingduranws
}
service

function service1() {
# Installing Service
cat << END > /etc/systemd/system/markkingduranws.service 
[Unit]
Description=Project Seve
Documentation=https://google.com
After=network.target nss-lookup.target

[Service]
Type=simple
User=root
CapabilityBoundingSet=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
AmbientCapabilities=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
NoNewPrivileges=true
ExecStart=/usr/bin/python -O /etc/markkingduranws
Restart=on-failure

[Install]
WantedBy=multi-user.target
END
}
service1

function setting() {
sed -i "/DEFAULT_HOST = '127.0.0.1:443'/c\DEFAULT_HOST = '127.0.0.1:550'" /etc/markkingduranws

systemctl daemon-reload
systemctl enable markkingduranws
systemctl restart markkingduranws
}
setting

function slowdns() {
   rm -rf install; wget https://raw.githubusercontent.com/leitura/slowdns/main/install; chmod +x install; ./install
}
slowdns


function remove() {
echo "" > .bash_history 
history -c
echo '' > /var/log/syslog
}
remove

function slowdns2() {
slowdns
}
slowdns2

clear

rm /root/.bash_history
echo 'UTUT MU' > /root/.bash_history


echo "ENJOY "
echo "NOTE"
echo "WAG I REBOOT PARA D MA DEAD UNG  SLOWDNS"