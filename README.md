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
```

#### **Mac OS**
tarballをダウンロードして展開します。
```
$ # wgetのインストール
$ brew install wget
$
$ # Hugoのダウンロード(tarball)
$ wget https://github.com/gohugoio/hugo/releases/download/v0.62.1/hugo_0.62.1_macOS-64bit.tar.gz
$ wget https://github.com/gohugoio/hugo/releases/download/v0.62.1/hugo_extended_0.62.1_macOS-64bit.tar.gz
$
$ # ディレクトリ ~/bin を作成
$ mkdir ~/bin
$ cd ~/bin
$
$ # extract the tarball
$ tar -xvzf ~/LOCAL/hugo_0.62.1_macOS-64bit.tar.gz
$ tar -xvzf ~/LOCAL/hugo_extended_0.62.1_macOS-64bit.tar.gz
$
$ # 走るか確認
$ ./hugo version
$ 
$ # パスを通す
$ echo "export PATH=$PATH:$HOME/bin" >> ~/.zshrc
$ source ~/.zshrc
```
ここまでがHugoの設定です。以下からはWindowsと同様です。`--recursive` オプションをつけるのを忘れないでください。
```
$ # リポジトリをモジュールを含めクローン
$ git clone https://github.com/dot-cube/dot-cube.github.io.git --recursive
$ cd dot-cube.github.io
```

※ **brew**を使って簡単にセットアップを行う方法もありますが、Windowsとバージョン等を揃えるために以上のようにしています。


## ディレクトリ構造とファイル

```
.
├── README.md
├── archetypes/
│   ...(省略)
├── assets/
│   └── css/
│       └── style.css
├── config.toml
├── content/
│   ├── about/
│   │   └── _index.md
│   ├── blog/
│   │   └── _index.md
│   ├── contact/
│   │   └── _index.md
│   └── portfolio/
│       ├── _index.md
│       ├── icpc2019.md
│       ...(省略)
│       └── tilt2019.md
├── data/
│   ├── about.yml
│   ├── homepage.yml
│   └── portfolio.yml
├── layouts/
│   ├── _default/
│   │   └── single.html
│   ├── about/
│   │   └── list.html
│   ├── contact/
│   │   └── list.html
│   ├── index.html
│   ├── partials/
│   │   ├── contact.html
│   │   ├── footer.html
│   │   ├── head.html
│   │   ├── header.html
│   │   └── page-title.html
│   └── portfolio/
│       └── list.html
├── public/
|   ...(省略)
├── static/
│   └── images/
|       |...(省略)
│       ├── about/
│       │   ...(省略)
│       ├── backgrounds/
│       │   ...(省略)
│       ├── icons/
│       │   ...(省略)
│       ├── portfolio/
│       │   ├── icpc2019-01.jpg
│       │   ├── icpc2019-02.jpg
|       |   ...(省略)
│       │   └── tilt2019-06.jpg
│       └── team/
│           ...(省略)
└── themes/
    └── kross-hugo/
```

## ページ作成・編集方法

以下のコマンドを実行し、[http://localhost:1313](http://localhost:1313)にアクセスすると、プレビューを確認できます。ファイルを更新すると、自動的にページの再読み込みを行います。

```
$ hugo server -t kross-hugo -D
```

### **トップページの編集**
Comming Soon...

### **作品紹介(Portfolio)ページの作成**

#### 1. ファイルを作成する
以下のコマンドを使用し、ファイルを作成してください。
`[フォルダ]`の部分は作成したいフォルダに置き換えてください。

```
$ git pull origin source  # GitHubにある最新のファイルを取得
$ hugo new portfolio/[ファイル名].md
```

#### 2. ファイルを編集する

`content/portfolio/[フォルダ名]/index.md`というファイルが生成されているはずなので、編集します。
（ファイルパスはプロジェクトルートから見たものです）

#### 3. 画像を追加する

comming soon...

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
### 使用テーマ
[Kross Hugo](https://themes.gohugo.io/kross-hugo-portfolio-template/)