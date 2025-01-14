## 目的
本レポジトリは早稲田大学基幹理工学部清水佳奈教授「アルゴリズムとデータ構造B」のグループワーク課題、グループ13の成果物を保存するためのレポジトリである。  

## 注意事項
本番ではenc_13.c, dec_13.cと設定ファイルconf_13.txtしか提出せず、他のファイルは向こうが用意するので、上記３ファイル以外は触らないように注意してください。
## 環境構築
UbuntuのインストールはWindowsならWSLでできます。Macはわからないので、頑張って調べてください。AzureLinuxでも一応動くらしいので、
一旦そっちを使っても大丈夫です。本番の環境はUbuntuなので、最後はUbuntuで確認したいです。  
以下のコードをターミナルで実行したら、自分の環境で本レポジトリを利用することができます。
```shell
git clone https://github.com/nobu-h-o/DSAB_GW.git
```

## テスティング
makeでコンパイルをし、test.shでそれらを実行します。test.shのあとの数字でbs, npを指定できます(pdf参照)。chmodはファイルの権限を処理するコマンドなので、一回実行するだけでいいです。以下にbs方式を1回全通しで実行する例を提示します。
```shell
make
chmod 755 test.sh
./test.sh 1 0 0 0 0 0
```
また、
```shell
make clean
```
を実行することで実行コマンドで生成されたファイルをすべて削除することができます。

## 他グループ用Tester利用方法
testertemplate.cを利用することにより、hd==0かどうかを指定した回数判定することができます。49行目にあるenc関数と294行目にあるdec関数を自分のグループのenc, decの内容に変え、339行目のnbs, sbs, lbs, nnp, snp, lnpがこの順番でtest.shの引数に対応するので、これも設定する必要があります。
testerもコマンドラインの引数を利用したかったのですが、なぜか処理速度が大幅に遅くなってしまうため、このような仕様となっています。以下に具体的なコマンドを提示します。実行するテスト回数は9行目のTEST_NUMBERで指定できます。実行確認済みの環境はLinux Ubuntuです。
また、VSCodeなどのIDEを通して実行すると、メモリが圧迫されて大幅に速度が落ちる・失敗する確率が比較的高いので、ターミナルのみを通して利用することをお勧めします。
```shell
gcc testertemplate.c
./a.out
```
データファイルを開きながら実行するとデータがちゃんと変わってるのが確認できて面白いです。
## プロジェクト構成
以下に配布されたpdfの一部を添付します。  

![image](https://github.com/user-attachments/assets/f985d436-4ae4-4207-850a-55391def1978)
