wget https://golang.org/dl/go1.15.8.linux-armv6l.tar.gz
sudo tar -C /usr/local/ -zxvf go1.15.8.linux-armv6l.tar.gz
cat /usr/local/go/VERSION

echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.bashrc

