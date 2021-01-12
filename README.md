
<h3 align="center">[ React-Rails ToDo ]</h3>
<h4 align="center">-  development @2021year -</h4> 

## Description
<p>
React_Railsの学習用</br>
人様のコードをサンプルにオサレToDoアプリに改造します。
技術はReactとRails。
</p>

<h4 align="center">- ToDo System Technology-</h4> 
<p align="center">
<img width="30%" height="200px" alt="React" src="https://user-images.githubusercontent.com/73631392/103876070-89ebe280-5116-11eb-8ae9-83217bab8cea.png">　
<img width="30%" height="200px" alt="Rails" src="https://user-images.githubusercontent.com/76393333/104321756-631f1900-5527-11eb-9ab3-fe6220a052e2.jpg">
</p>
    
    
### 環境
・Rails 6\
・React\
・MySQL 8\
・Docker\

### 使い方

###  Docker イメージをビルド
$ docker-compose build\

###  サービスの立ち上げ
$ docker-compose up -d  # -d: バックグラウンドで起動\

###  bundle インストール
$ docker-compose run app bundle install\

###  各種パッケージのインストール
$ docker-compose run app yarn install\

###  マスターキーの生成
###  ファイル生成後、credentials.yml.encの編集画面が表示されるので:q!で終了します。
$ docker-compose run -e EDITOR=vim app rails credentials:edit

### フォルダの生成
$ mkdir rails/app/assets/images

### データベースの作成
$ docker-compose run app rails db:create

### 各テーブルの作成
$ docker-compose run app rails db:migrate

### 各テーブルの初期データの作成
$ docker-compose run app rails db:seed

### 起動
$ docker-compose restart

http://localhost:3000/
