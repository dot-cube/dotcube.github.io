# dot-cube.github.io

![Publish and Deploy status badge](https://github.com/dot-cube/dot-cube.github.io/workflows/Build%20Deploy/badge.svg)

## これは何？

宮崎大学デジタルコンテンツ制作サークル dot cube のオフィシャルサイトです。

## 環境構築（部員向け）

本サイトは[Hugo](https://gohugo.io/)という静的サイトジェネレータを使用しています。
また、[Introduction](https://themes.gohugo.io/hugo-theme-introduction/)というテーマを使用しています。

そのため、本サイトを編集するには開発（執筆）環境を構築する必要があります。

### **Hugo のセットアップ**

以下のコマンドが使用可能なことを前提に進めます。

- wget
- [git](https://git-scm.com/)
- npm

#### **Windows(WSL を使用)**

Hugo をインストールし、本リポジトリを Clone します。この際、`--recursive` オプションをつけるのを忘れないでください。このオプションが無いと、Cloneしたリポジトリの中の`themes/introduction`ディレクトリが空のままになります。

```
$ # Hugoのインストール
$ wget https://github.com/gohugoio/hugo/releases/download/v0.62.1/hugo_0.62.1_Linux-64bit.deb
$ wget https://github.com/gohugoio/hugo/releases/download/v0.62.1/hugo_extended_0.62.1_Linux-64bit.deb
$ sudo apt install ./hugo_0.62.1_Linux-64bit.deb
$ sudo apt install ./hugo_extended_0.62.1_Linux-64bit.deb
$
$ # リポジトリをモジュールを含めクローン
$ git clone https://github.com/dot-cube/dot-cube.github.io.git --recursive
$ cd dot-cube.github.io
$ npm install autoprefixer
$ npm install postcss-cli
```

#### **Mac OS**

Comming Soon...


## ディレクトリ構造とファイル

```
.
├── README.md
├── archetypes
│   └── default.md
├── config.toml  # 設定ファイル
├── content
│   └── ja
│       ├── blog  # お知らせ(Notification)用のファイルを置く
│       ├── home  # トップ画面に表示される
│       └── projects  # 過去のイベントや作品紹介用のファイルを置く
├── i18n
│   └── ja.toml  
├── static
│   └── (省略)
└── themes
    └── (省略)
```

## ページ作成・編集方法

以下のコマンドを実行し、[http://localhost:1313](http://localhost:1313)にアクセスすると、プレビューを確認できます。ファイルを更新すると、自動的にページの再読み込みを行います。

```
$ hugo server -t introduction -D
```

### **トップページの編集**
Comming Soon...

### **作品紹介(Projects)ページの作成**

#### 1. ファイルを作成する
以下のコマンドを使用し、ファイルを作成してください。
`[フォルダ]`の部分は作成したいフォルダに置き換えてください。

```
$ git pull origin source  # GitHubにある最新のファイルを取得
$ hugo new ja/projects/[フォルダ名]/index.md
```

#### 2. ファイルを編集する

`content/ja/projects/[フォルダ名]/index.md`というファイルが生成されているはずなので、編集します。
（ファイルパスはプロジェクトルートから見たものです）

注意点として、デフォルトで生成されたファイルは、下書きモードになっています。

ファイルの先頭にある`draft: true`がある行を削除するか、`draft: false`と書き換えてください。

#### 3. 画像を追加する

`content/ja/projects/[フォルダ名]/`というフォルダに画像ファイルを追加すると、サムネイルやページを開いた際に当該画像を表示させることができます。

複数枚画像ファイルを追加すると、スライドショーのように画像を表示させることができます。このスライドショーの順序は画像ファイル名の昇順になります。

また、当該ページのサムネイルは画像ファイルを昇順に並べた際、先頭に来るファイルがサムネイルとして設定されます。

#### 4. ファイルをCommit(編集内容を登録)する

```
$ git add content/ja/projects/[フォルダ名]/*
$ git commit -m "登録内容に関するメッセージ(何をしたのか、何故変更したのかなど)"
```

#### 5. ファイルをPush(アップロード)する

```
$ git pull origin source  # GitHubにある最新のファイルを取得
$ git push origin source
```


### **お知らせ(Notification)の作成**

#### 1. ファイルを作成する
以下のコマンドを使用し、ファイルを作成してください。
`[ファイル名]`の部分は作成したいファイル名に置き換えてください。

```
$ git pull origin source  # GitHubにある最新のファイルを取得
$ hugo new ja/blog/[ファイル名].md
```

#### 2. ファイルを編集する

`content/ja/blog/[ファイル名].md`というファイルが生成されているはずなので、編集します。
（ファイルパスはプロジェクトルートから見たものです）

注意点として、デフォルトで生成されたファイルは、下書きモードになっています。

ファイルの先頭にある`draft: true`がある行を削除するか、`draft: false`と書き換えてください。

#### 3. ファイルをCommit(編集内容を登録)する

```
$ git add content/ja/blog/[ファイル名].md
$ git commit -m "登録内容に関するメッセージ(何をしたのか、何故変更したのかなど)"
```

#### 4. ファイルをPush(アップロード)する

```
$ git pull origin source  # GitHubにある最新のファイルを取得
$ git push origin source
```