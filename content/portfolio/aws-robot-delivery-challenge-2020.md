---
title: "AWS Robot Delivery Challenge 2020"
date: 2019-05-12T12:14:34+06:00
description: "AWS Robot Delivery Challenge 本戦及び、決勝戦へ出場しました。"
images:
    - img: "/images/portfolio/aws-robot-delivery-challenge-2020/10-web-ui.jpeg"
    - img: "/images/portfolio/aws-robot-delivery-challenge-2020/11-coding.JPG"
    - img: "/images/portfolio/aws-robot-delivery-challenge-2020/01-final-game-result.jpeg"
    - img: "/images/portfolio/aws-robot-delivery-challenge-2020/02-main-game-result.jpeg"
    - img: "/images/portfolio/aws-robot-delivery-challenge-2020/03-pre-game-result.jpeg"
---

アマゾン ウェブ サービス ジャパン株式会社が主催するロボットコンテスト「AWS Robot Dlivery Challenge」の本戦・決勝戦へ、弊サークルのメンバー３人が出場しました。

最終結果は5位でした。

工夫点としては、遠隔でロボットの状態を確認したり、停止処理や移動指示をロボットへ出すためのWebUIを独自に制作しました。  
また、ロボットの移動用プログラムや経路計算プログラム、障害物検知プログラムなども独自に制作しました。  

コロナウィルスの感染拡大に伴い、実際に集まって開発を行う事が困難になったため、VS Code の [Live Share](https://visualstudio.microsoft.com/ja/services/live-share/) 機能や [Discord](https://discord.com/) などのサービスを利用して、当初の開発スタイルであるモブプログラミングを続けました。

以下に使用した主な技術を記します。

##### ロボット側
使用言語：Python  
ROSバージョン：[Melodic](http://wiki.ros.org/melodic)  
WebUIとの通信部分：[AWS IoT](https://aws.amazon.com/jp/iot/)


##### WebUI側
使用言語：JavaScript  
描画ライブラリ：[p5.js](https://p5js.org/)  
CSSフレームワーク：[Bootstrap 4](https://getbootstrap.jp/docs/4.5/extend/icons/)  
ロボットとの通信部分：[AWS IoT](https://aws.amazon.com/jp/iot/)  


#### 参加メンバー
[Takahiro55555](https://github.com/Takahiro55555)  
[twugo](https://github.com/twugo)  
[nssuperx](https://github.com/nssuperx)  

#### 詳細情報
GitHub リポジトリ：[https://github.com/Takahiro55555/AwsRobotDeliveryChallenge](https://github.com/Takahiro55555/AwsRobotDeliveryChallenge)

#### AWS Robot Delivery Challenge とは？

> 若者のプログラミング技術や創作意欲を高め、これからの IT 社会を作っていく学生の皆様を支援することを目的に、「AWS Robot Delivery Challenge」を開催します。
>  
> 従来のようなロボットを一から作り動かすロボコンとは違って、AWS が用意する規定のロボットを皆様が作ったアプリケーションで動かすことで、ミニチュアの街に設置されたコースを走らせ、コース各所に点在する住宅に所定の商品を届けられるかを競います。
>  
> このコンテストを見つけた高校、高専、大学、専門学校、大学院に通う学生の皆様が主役です。AWS を初めて体験するという方やアプリケーション開発の経験がそれほどない方向けに、サンプルアプリケーションとシミュレーションマップが配布され、それらを実装する方法をご紹介するオンラインセミナーも実施します。テクノロジーの世界を楽しんで学ぶことができるこの機会、奮ってご参加ください !

（引用元：[AWS Robot Delivery Challenge ~学生のためのアプリケーションで競うロボットコンテスト~](https://aws.amazon.com/jp/robot-delivery-challenge/)）


##### 画像出典
決勝戦結果画像：[https://twitter.com/awscloud_jp/status/1305791112351641601](https://twitter.com/awscloud_jp/status/1305791112351641601)  
本戦結果画像：[https://twitter.com/awscloud_jp/status/1305773857513435136](https://twitter.com/awscloud_jp/status/1305791112351641601)  
