# python環境整備



## 環境構築

画像認識プログラミングレシピ　 の環境をDocker上で構築。

作ってみたら以下エラーが発生

```
Traceback (most recent call last):
  File "get-pip.py", line 27077, in <module>
    main()
  File "get-pip.py", line 135, in main
    bootstrap(tmpdir=tmpdir)
  File "get-pip.py", line 111, in bootstrap
    monkeypatch_for_cert(tmpdir)
  File "get-pip.py", line 92, in monkeypatch_for_cert
    from pip._internal.commands.install import InstallCommand
  File "/tmp/tmpbyzlwrrv/pip.zip/pip/_internal/commands/__init__.py", line 9, in <module>
  File "/tmp/tmpbyzlwrrv/pip.zip/pip/_internal/cli/base_command.py", line 13, in <module>
  File "/tmp/tmpbyzlwrrv/pip.zip/pip/_internal/cli/cmdoptions.py", line 23, in <module>
  File "/tmp/tmpbyzlwrrv/pip.zip/pip/_internal/cli/parser.py", line 12, in <module>
  File "/tmp/tmpbyzlwrrv/pip.zip/pip/_internal/configuration.py", line 26, in <module>
  File "/tmp/tmpbyzlwrrv/pip.zip/pip/_internal/utils/logging.py", line 13, in <module>
  File "/tmp/tmpbyzlwrrv/pip.zip/pip/_internal/utils/misc.py", line 40, in <module>
  File "/tmp/tmpbyzlwrrv/pip.zip/pip/_internal/locations/__init__.py", line 14, in <module>
  File "/tmp/tmpbyzlwrrv/pip.zip/pip/_internal/locations/_distutils.py", line 9, in <module>
ModuleNotFoundError: No module named 'distutils.cmd'
```

> apt install -y python3-distutils

で解決。

## matplotlibのインストールに失敗


手動インストールで確認。

```
uilding wheels for collected packages: matplotlib
  Building wheel for matplotlib (setup.py) ... error
  ERROR: Command errored out with exit status 1:
   command: /usr/bin/python3 -u -c 'import io, os, sys, setuptools, tokenize; sys.argv[0] = '"'"'/tmp/pip-install-m68lpppz/matplotlib_5973db84823c402b8f47754de17c647e/setup.py'"'"'; __file__='"'"'/tmp/pip-install-m68lpppz/matplotlib_5973db84823c402b8f47754de17c647e/setup.py'"'"';f = getattr(tokenize, '"'"'open'"'"', open)(__file__) if os.path.exists(__file__) else io.StringIO('"'"'from setuptools import setup; setup()'"'"');code = f.read().replace('"'"'\r\n'"'"', '"'"'\n'"'"');f.close();exec(compile(code, __file__, '"'"'exec'"'"'))' bdist_wheel -d /tmp/pip-wheel-m1apg_c1
       cwd: /tmp/pip-install-m68lpppz/matplotlib_5973db84823c402b8f47754de17c647e/
  Complete output (617 lines):
  
  Edit setup.cfg to change the build options; suppress output with --quiet.
```

ログから以下のパッケージが不足していることがわかった。

* make
* gcc
* g++


Dockerfile に追加して再実施。


# python install 


```
Traceback (most recent call last):
  File "get-pip.py", line 27077, in <module>
    main()
  File "get-pip.py", line 135, in main
    bootstrap(tmpdir=tmpdir)
  File "get-pip.py", line 111, in bootstrap
    monkeypatch_for_cert(tmpdir)
  File "get-pip.py", line 92, in monkeypatch_for_cert
    from pip._internal.commands.install import InstallCommand
  File "/tmp/tmpbyzlwrrv/pip.zip/pip/_internal/commands/__init__.py", line 9, in <module>
  File "/tmp/tmpbyzlwrrv/pip.zip/pip/_internal/cli/base_command.py", line 13, in <module>
  File "/tmp/tmpbyzlwrrv/pip.zip/pip/_internal/cli/cmdoptions.py", line 23, in <module>
  File "/tmp/tmpbyzlwrrv/pip.zip/pip/_internal/cli/parser.py", line 12, in <module>
  File "/tmp/tmpbyzlwrrv/pip.zip/pip/_internal/configuration.py", line 26, in <module>
  File "/tmp/tmpbyzlwrrv/pip.zip/pip/_internal/utils/logging.py", line 13, in <module>
  File "/tmp/tmpbyzlwrrv/pip.zip/pip/_internal/utils/misc.py", line 40, in <module>
  File "/tmp/tmpbyzlwrrv/pip.zip/pip/_internal/locations/__init__.py", line 14, in <module>
  File "/tmp/tmpbyzlwrrv/pip.zip/pip/_internal/locations/_distutils.py", line 9, in <module>
ModuleNotFoundError: No module named 'distutils.cmd'
```

> apt install -y python3-distutils

で解決。




## Docker上でjupyterを起動

> docker run -it -p 9000:8888 python-learn 
> jupyter notebook --ip=0.0.0.0 --allow-root


> curl http://localhost:9000


---


