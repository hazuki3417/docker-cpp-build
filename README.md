# docker-cpp-build
c++プロジェクトのビルドに必要なツール群をインストールしたコンテナ

このコンテナイメージはdocker hubに公開しています。  

[dockerhub](https://hub.docker.com/repository/docker/hazuki3417/cpp-build)


## コンテナをビルド

```sh
# Execution example using docker command
docker build -t hazuki3417/cpp-build  .

# Execution example using docker-compose command
docker-compose build --no-cache cpp-build
```

## コンテナを起動

```sh
# Execution example using docker command
docker run --rm -it -v ./:/tmp/workspace hazuki3417/cpp-build 

# Execution example using docker-compose command
docker-compose run --rm cpp-build
```

コマンドを実行したディレクトリをコンテナの`/tmp/workspace`ディレクトリへマウントする設定にしています。  
マウントパスは必要に応じて変更して使用してください。
