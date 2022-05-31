# 2020/10/14最新versionを取得
FROM golang:1.18.0-alpine
# アップデートとgitのインストール！！
RUN apk update && apk add git
# ワーキングディレクトリの設定
WORKDIR /go/src/
# ホストのファイルをコンテナの作業ディレクトリに移行
ADD . /go/src/
RUN go get -u github.com/oxequa/realize 
CMD ["realize", "start"]