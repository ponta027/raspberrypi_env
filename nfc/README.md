
## 環境整備

### 前提条件

1.  python3,pipがインストールされていること
2. NFCカードリーダが認識されていること

### インストール

```bash
 pip install nfcpy
```

インストールされていることを確認

```bash
who@what:~ $ python3 -m nfc
This is the 1.0.4 version of nfcpy run in Python 3.x.x
on Linux-4.xx.xx-v7+-armv7l-with-debian-x.x
I'm now searching your system for contactless devices
** found usb:054c:06c3 at usb:001:006 but access is denied
-- the device is owned by 'root' but you are 'who'
-- also members of the 'root' group would be permitted
-- you could use 'sudo' but this is not recommended
-- better assign the device to the 'plugdev' group
   sudo sh -c 'echo SUBSYSTEM==\"usb\", ACTION==\"add\", ATTRS{idVendor}==\"054c\", ATTRS{idProduct}==\"06c3\", GROUP=\"plugdev\" >> /etc/udev/rules.d/nfcdev.rules'
   sudo udevadm control -R # then re-attach device
I'm not trying serial devices because you haven't told me
-- add the option '--search-tty' to have me looking
-- but beware that this may break other serial devs
Sorry, but I couldn't find any contactless device
```

rootだと実行できるがsudoで実行するのは推奨されていない。
デバイスをplugdevグループにアサインがベターとのこと。


```bash
 sudo sh -c 'echo SUBSYSTEM==\"usb\", ACTION==\"add\", ATTRS{idVendor}==\"054c\", ATTRS{idProduct}==\"06c3\", GROUP=\"plugdev\" >> /etc/udev/rules.d/nfcdev.rules'
 sudo udevadm control -R
```


### Sample Program

udevに登録していない場合はsudoをつける

```bash
python3 nfc_sample.py
```



https://teratail.com/questions/345812
であるように、Type3で受信したほうが良さそう。


--



