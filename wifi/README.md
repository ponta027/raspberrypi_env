# Wifi接続の設定

Ubuntu18からnetplanに置き換わったらしい。
/etc/networking/interfaceで設定していたが、/etc/netplan/**.yamlで設定するとのこと。


## netplanの設定

/etc/netplan/99-wifi-init.yaml を作成。
デフォルトでは、/etc/netplan/50-cloud-init.yamlがあるが、このファイル自体は修正しない。
/etc/netplan/*.yamlが読み込み対象となるため、別途ファイルを追加する。

```
network:
    version: 2
    renderer: NetworkManager
    wifis:
        wlan0:
            dhcp4: false
            addresses: 
            - {0}
            gateway4: 192.168.0.1
            nameservers:
                addresses: [192.168.0.1]
            access-points:
                {1}: 
                    password: "{2}" 
```

{0},{1},{2}は設定に応じる。

## ubuntu22からgateway4はdeprecated

gatewat4がdeprecatedになったため、routesに置き換えた。


```
network:
    version: 2
    renderer: NetworkManager
    wifis:
        wlan0:
            dhcp4: false
            addresses: 
            - {1}/24
            routes:
               - to: default
                 via: 192.168.0.1
            nameservers:
                addresses: [192.168.0.1]
            access-points:
                {2}:
                    password: "{3}"
```


## 必要ツールのインストール

> sudo apt-get install -y network-manager

## 適用

> sudo netplan apply



