自分用vim設定ファイル

自分用vim plugins設定ファイル
deopleteを使うためにpythonのyarpは使用してはいけない(pipでyarpを導入すると動かなくなる)
ubuntuのカラーファイルもある(それを使うより、既定値をいじったほうが早いと思う)

jdtlsはjavaにおける補完のスクリプトである。そのため、補完するためのツールを別途インストールすること。
pythonはpython-language-clientによる補完を行っている。インストールは"pip3 install python-client-server[all]"でできる。
CおよびC++はclangで補完を行う。補完するときはapt-getでclnagdを導入し、pathを通すことで使用することができる。
