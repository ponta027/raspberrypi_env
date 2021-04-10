# NASをマウントする

raspberrypi からNASをマウントする。


## cifs-utilのインストール

> sudo apt-get install -y cifs-utils
 
## マウントコマンド実行

> server=""
> user=""
> pass=""
> sudo mount -t cifs //${server}/disk1_pt1 /mnt/samba -o vers=1.0,user=${user},password=${pass}

を実行すればマウントされます。


## cifs

CIFS:common Internet File System
Windowsのファイル共有サービスで利用されているプロトコルを拡張し、
Windows以外のシステムでも利用できるよう仕様を公開したもの。

以上
