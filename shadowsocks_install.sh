!#/bin/sh
apt-get update
apt-get -y install python-gevent python-pip python-m2crypto python-setuptools
mkdir /etc/shadowsocks -p
echo "{\
\"server\":\"0.0.0.0\",\
\"server_port\":8080,\
\"local_address\":\"127.0.0.1\",\
\"password\":\"password\",\
\"timeout\":300,\
\"method\":\"aes-256-cfb\",\
\"fast_open\":false,\
\"workers\":1\
}" > /etc/shadowsocks/config.json
sed -i 's/cleanup/reset/g' /usr/local/lib/python2.7/dist-packages/shadowsocks/crypto/openssl.py
pip install shadowsocks
