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
$ https://github.com/gohugoio/hugo/releases/download/v0.62.1/hugo_extended_0.62.1_Linux-64bit.deb
$ sudo apt install ./hugo_0.62.1_Linux-64bit.deb
$ sudo apt install ./hugo_extended_0.62.1_Linux-64bit.deb
$
$ # リポジトリをモジュールを含めクローン
$ git clone https://github.com/dot-cube/dot-cube.github.io.git --recursive
$ cd dot-cube.github.io.git
$ npm install autoprefixer
$ npm install postcss-cli
```

#### **Mac OS**

Comming Soon...
