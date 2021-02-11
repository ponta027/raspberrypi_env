wget https://golang.org/dl/go1.15.8.linux-armv6l.tar.gz
sudo tar -C /usr/local/ -zxvf go1.15.8.linux-armv6l.tar.gz
cat /usr/local/go/VERSION

echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.bashrc
echo 'GOPATH=$(go env GOPATH)' >> ~/.bashrc 
echo 'export PATH=${PATH}:${GOPATH}/bin' >> ~/.bashrc

source ~/.bashrc

go get github.com/motemen/gore/cmd/gore
go get golang.org/x/tools/cmd/goimports
go get github.com/Songmu/make2help/cmd/make2help
