# 開発環境
Ruby3.2.2  
Rails7  
PostegerSQL

# 概要
登山の際に必要となる水の量を計算してくれるWEBアプリです。
RubyとRailsの学習も兼ねて作成しました。  
下記URLから実際の動作を確認できます。  
（Renderの無料枠へのデプロイの為、WEBアプリが表示されるまで１分ほどかかる場合があります）  
https://water-calculate.onrender.com

# 環境構築
Dockerでの環境構築を行っているため、DockerがインストールされているPCであれば下記コマンドで環境構築が可能です。  
database.ymlなどは適宜書き換えてご使用ください。

## 1. rails newを実行する
docker-compose run --no-deps web rails new . --force --database=postgresql --skip-bundle

## 2. docker-compose build を実行する
docker-compose build

## 3. dbのユーザー名とパスワードを指定
config/database.yml に以下を追加  
host: db  
username: <%= ENV["POSTGRES_USER"] %>  
password: <%= ENV["POSTGRES_PASSWORD"] %>

## 4. dbの作成
docker-compose run --rm web rails db:create

## 5. コンテナの起動
docker-compose up -d
