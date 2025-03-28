# MySQLのセットアップ方法
 
## ソースコードをダウンロードする

### Macユーザの方
1. 「Hey Siri」と話しかけて、「ターミナルを開いて」と指示します。
2. 問題がなければ、下の画像のようにターミナルが起動します。
3. ターミナルに以下のコマンドを入力し、Enterキーを押して実行します。

```console
git clone https://github.com/rspharada/mysql.git
```

### Windowsユーザの方
1. Windowsキー + R を同時に押します（「ファイル名を指定して実行」ウィンドウが開きます）
2.「cmd」と入力し、Enterキーを押します
3. コマンドプロンプトが開きます！
4. コマンドプロンプトで以下のコマンドを入力し、Enterキーを押して実行します。

```console
git clone https://github.com/rspharada/mysql.git
```

## Docker Desktopをインストールする
下記のサイトからDocker Desktopをインストールします。
https://www.docker.com/ja-jp/products/docker-desktop/

対応するOSを選択して、インストールをしてください。

## MySQLをセットアップする

### Macユーザの方
1. ターミナルに以下のコマンドを入力し、Enterキーを押して実行します

```console
docker compose up -d
```

### Windowsユーザの方
1. コマンドプロンプトで以下のコマンドを入力し、Enterキーを押して実行します

```console
 docker compose up -d
```

