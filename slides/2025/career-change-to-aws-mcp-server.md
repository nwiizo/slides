---
marp: true
theme: ../../themes/3shake-theme.css
paginate: true
math: mathjax
mermaid: true
style: |
  :root {
    --logo-url: url("../../assets/images/3shake-cover.png");
    --mini-font-size: 20px;
    --header-footer-height: 50px;
    --black: #333;
  }
  /* Add highlight-red class */
  .highlight-red {
    color: rgb(224, 64, 64);
  }
  /* 通常ページの左下にロゴを表示（より左下に押し込む） */
  section:not(.title)::before {
    content: "";
    position: absolute;
    left: 15px;  /* より左に */
    bottom: 15px;  /* より下に */
    width: 60px !important;  /* ロゴサイズを調整 */
    height: 60px !important;  /* ロゴサイズを調整 */
    background-image: var(--logo-url);
    background-size: contain;
    background-repeat: no-repeat;
    background-position: center;
    opacity: 0.9;
    z-index: 100;
  }
  /* 背景色付きスライドではロゴ色を反転 */
  section[data-background-color="dark"]::before {
    filter: brightness(0) invert(1);
  }
  /* タイトルページのページ番号を非表示 */
  section.title::after {
    display: none;
  }
  /* タイトルスライドのロゴスタイル */
  .title-logo {
    position: fixed;
    top: 5px;
    left: 5px;
    width: 240px !important;
    height: auto;
    z-index: 9999;
  }
  /* すべての画像サイズを上書き - 3shake-logo.pngのみに適用 */
  img[src*="3shake-logo.png"] {
    max-width: 240px !important;
    width: 240px !important;
  }
  /* タイトルとサブタイトルのサイズ調整 */
  .title h1 {
    font-size: 2.4em !important;
    margin-bottom: 0.1em !important;
  }
  .title h3 {
    font-size: 1.1em !important;
    margin-top: 0.1em !important;
  }
  /* 作者情報のスタイル */
  .author-info {
    position: absolute !important;
    bottom: 40px !important;
    left: 100px !important;
    padding-left: 0 !important;
    text-indent: 0 !important;
    font-size: 0.9em !important;
    color: white !important;
    font-weight: bold !important;
  }
  /* スライドタイトル（h2）のスタイル */
  section h2 {
    font-size: 1.8em !important;
    margin-top: -25px !important;
    padding-top: 0 !important;
    margin-bottom: 10px !important;
    color: black !important;
    border-bottom: 1px solid #dadce0 !important;
  }
  /* コンテンツエリアの上部マージンを調整 */
  section > *:not(h2):not(header):not(footer) {
    margin-top: 1.2em !important;
  }
  /* 引用（参考文献）のスタイル */
  blockquote {
    border-top: 0.1em dashed var(--black);
    font-size: var(--mini-font-size);
    width: 100%;
    position: absolute;
    bottom: var(--header-footer-height);
    left: 0;
    padding: 10px 20px;
    margin: 0;
    box-sizing: border-box;
  }
  /* カスタムテーマにMermaidのスタイル設定を追加 */
  mermaid {
    display: block;
    margin: 0 auto;
  }
  /* 参考文献用のスタイル */
  .reference-right {
    font-size: 0.4em;
    text-align: right;
    margin-right: 20px;
    margin-top: -15px;
    display: block;
    width: 30%;
    margin-left: 70%;
  }
---

<!-- 
_backgroundColor: #0a1929
_color: white
_class: title dark
-->

![bg](../../assets/images/3shake-background-full.png)

<img src="../../assets/images/3shake-logo.png" alt="3-SHAKE logo" style="position: absolute !important; top: 100px !important; left: 100px !important; width: 240px !important; height: auto !important; z-index: 9999 !important;">

<div class="title" style="text-align: left; margin-top: 100px; margin-left: 20px; padding-left: 0; max-width: 70%;">

# <span style="font-size: 1.0em;">転職したら</br>MCPサーバーだった件</span>

</div>

<div class="author-info" style="text-align: left; padding-left: 0; text-indent: 0;">
2025/7/23 JAWS-UG SRE支部 #13 つよつよSREの秘伝のタレ</br>@nwiizo 30min
</div>

---

## これまでのあらすじ

### ある日、遂にAWSへの転職が決まった！</br>...と思ったら

長年の夢だったAWSへの転職。<strong>「AWS MCP Servers」</strong>から内定通知が届きました。

<strong>「やった！遂にAWSで働ける！」</strong>

面接では技術的な質問ばかりで、EC2、S3、Lambdaなどの知識を披露。
採用担当者も<strong>「君のAWS知識は素晴らしい」</strong>と絶賛してくれました。

しかし入社初日、そこには想像もしなかった現実が待っていたのです...


---

<!-- _backgroundColor: white -->

![bg left:30% fit](../../assets/images/2025/new-job-mcp/it_dokata.png)
## nwiizoといいます

<div class="info-box">
念願のAWS...じゃなくて「AWS MCP Servers」社に転職しました。</br></br>
前職では大規模インフラのSREをしていました。AWSのソリューションアーキテクトになるのが夢で、SA Professional認定も取得。CloudFormation、CDK、Terraformも使いこなせます。</br></br>
<strong>「AWSで最先端の技術に触れられる！」</strong>と期待に胸を膨らませて入社したのですが...
</div>

---

# 第一章「夢のAWS...？」

---

## 入社初日の違和感

![bg left:25% fit](../../assets/images/2025/new-job-mcp/setumei.png)

<div class="info-box">
AWS MCP Servers社のオフィスに到着。</br>
<strong>「あれ？AWSのロゴがどこにもない...」</strong></br>
受付で名前を告げると、人事の吉田さんが迎えに来ました。</br>
<strong>「ようこそ！AWS MCP Servers社へ！」</strong></br>
「あの...ここってAmazon Web Servicesの...？」</br>
<strong>「いえいえ、うちは独立企業です。Arigato Watashi Services - Model Context Protocol Servers社の略ですよ」</strong></br></br>
血の気が引きました。
</div>

---

## 衝撃の真実

![bg left:30% fit](../../assets/images/2025/new-job-mcp/panic_men.png)

<div class="info-box">
<strong>「え？AWSじゃない？」</strong></br>
吉田さんは困惑する私を見て説明を始めました。</br>
<strong>「確かに紛らわしい社名ですよね。でも我々の仕事はAWSと深い関係があります。人間がMCPサーバーとして、AIやクライアントにAWSの知識を提供するんです」</strong></br>
「人間が...サーバー...？」</br>
<strong>「そう！君は今日からAWS API MCPサーバーとして働いてもらいます！」</strong></br></br>
転職したらAWS（じゃない）MCPサーバーだった件...
</div>

---

## AIとシステムをつなぐ「USB規格」

<div style="display: flex; gap: 5px;">
<div style="width: 45%;">
<img src="../../assets/images/2025/MCPDAWN/notion_mcp.png" alt="Notion MCP" style="width: 80%; height: fit-content;">
<div style="font-size: 0.5em; text-align: left; margin-top: 5px;">
出典: https://notion.notion.site/Notion-MCP-1d0efdeead058054a339ffe6b38649e1
</div>
</div>

<div style="width: 60%;">
<ol style="font-size: 0.7em;">

### Model Context Protocol (MCP)とは
* **定義**: LLMが外部ツール・データソースと通信する**標準規格**
* **特徴**: JSON-RPC 2.0をベースとした軽量プロトコル
* **アナロジー**: AIアプリのための「USB規格」- どのAIも同じインターフェースで外部接続

</ol>
</div>

---

## AIとシステムをつなぐ「USB規格」

<div style="display: flex; gap: 5px;">
<div style="width: 45%;">
<img src="../../assets/images/2025/MCPDAWN/notion_mcp.png" alt="Notion MCP" style="width: 80%; height: fit-content;">
<div style="font-size: 0.5em; text-align: left; margin-top: 5px;">
出典: https://notion.notion.site/Notion-MCP-1d0efdeead058054a339ffe6b38649e1
</div>
</div>

<div style="width: 60%;">
<ol style="font-size: 0.7em;">

### 解決する技術的課題
* **統合コスト削減**: 各LLM×各ツールの個別対応からの脱却
* **知識の拡張**: 静的なLLM知識を動的データソースで補完
* **汎用性確保**: 言語・プラットフォーム間の相互運用性実現
</ol>
</div>
</div>

---

## MCPの位置づけとコミュニティ


### オープン標準としての発展

- **Anthropic発案**: 2023年に設計・公開

- **公式ドキュメントが優秀**: GitHub上で仕様管理、コミュニティ主導


### エコシステムの急成長

- **クライアント**: Claude Desktop, VS Code, Cursor,nvim等

- **サーバー**: 200+（公式+コミュニティ）[ROADMAP](https://modelcontextprotocol.io/development/roadmap)にリポジトリの登場が明記

- **優位性**: 特定ベンダーに依存しないエコシステムが拡大中


---

## MCPのアーキテクチャ

<div style="display: flex; gap: 5px;">
<div style="width: 47%;">
<img src="../../assets/images/2025/new-job-mcp/mcp_general_architecture.png" alt="MCP logo" style="width: 80%; height: fit-content;">
<div style="font-size: 0.5em; text-align: left; margin-top: 5px;">
出典: https://modelcontextprotocol.io/introduction
</div>
</div>

<div style="width: 60%;">
<ol style="font-size: 0.6em;">

### General architecture

- **MCP Hosts**: Claude Desktop、IDE、AIツールなど、MCPを通じてデータにアクセスしたいプログラム
- **MCP Clients**: サーバーと1対1の接続を維持するプロトコルクライアント
- **MCP Servers**: 標準化されたModel Context Protocolを通じて特定の機能を提供する軽量プログラム
- **Local Data Sources**: MCPサーバーが安全にアクセスできるコンピュータのファイル、データベース、サービス
- **Remote Services**: MCPサーバーが接続できるインターネット経由の外部システム（API等）

</ol>
</div>
</div>

---

## AWS MCP Serversの全体像

<div style="display: flex; gap: 5px;">
<div style="width: 45%;">
<img src="../../assets/images/2025/MCPDAWN/aws_mcp_servers.png" alt="MCP architecture" style="width: 80%; height: fit-content;">
<div style="font-size: 0.5em; text-align: left; margin-top: 5px;">
出典: https://github.com/awslabs/mcp より

</div>

</div>

<div style="width: 60%;">
<ol style="font-size: 0.65em;">

### 基本と構造

AWS MCP Serversは、**AWSの各種サービスと生成AIサービス（Claude(Code)、Cursor、Q Developerなど）を接続するための50以上の専門MCPサーバー群を提供するオープンソースプロジェクト**です。各サーバーは特定のAWSサービスやユースケースに特化しており、**インフラ管理（CDK、Terraform）、AI/ML（Bedrock、Rekognition）、データベース（DynamoDB、Aurora）、コスト分析など、幅広い領域をカバー**しています。

これにより開発者は、**自然言語でAWSリソースの操作、ドキュメント検索、コスト最適化、インフラコード生成などを行うことができ、従来数時間かかっていた作業を数分で完了させることが可能**になります。**人間の専門知識とAIの処理能力を組み合わせることで、より効率的で高品質なクラウド開発を実現するエコシステムを構築**しています。
</ol>
</div>
</div>

</div>


---

# 第二章「同僚は全員MCPサーバー」

---

## 個性的な同僚たち

![bg left:30% fit](../../assets/images/2025/new-job-mcp/team.png)

<div class="info-box">
オフィスツアーで同僚を紹介されました。</br></br>
<strong>「こちらがCore MCPサーバーの山田さん」</strong></br>
「初めまして！私は全体の司令塔として、複雑な問題を整理してから適切なサーバーに振り分けます」</br></br>
<strong>「AWS Documentation MCPサーバーの鈴木さん」</strong></br>
「AWSの公式ドキュメントなら何でも聞いてください！最新の仕様変更も把握してます」</br></br>

<div style="font-size: 0.6em; color: #666; font-style: italic;">
みんな人間なのに、自分をサーバーと呼んでいる...
</div>
</div>

---

## AWS Core MCP が何をするのか

<div style="display: flex; gap: 5px;">
<div style="width: 45%;">
<img src="../../assets/images/2025/career-change-to-aws-mcp-server/Core MCP Server.png" alt="MCP architecture" style="width: 80%; height: fit-content;">
<div style="font-size: 0.5em; text-align: left; margin-top: 5px;">
出典: https://github.com/awslabs/mcp/tree/main/src/core-mcp-server より

</div>

</div>

<div style="width: 60%;">
<ol style="font-size: 0.65em;">

### Core MCP は何ができるのか？

Core MCP Serverは、MCP Serversエコシステムの司令塔として機能する中核サーバーで、複雑な要求を受け取ると内容を解析し、最適な専門サーバーに振り分ける役割を担い、例えばクライアントから「EC2インスタンスの自動スケーリングを設定したい」というリクエストが来た場合、その要求を解析してAPI MCPサーバーとDocumentation MCPサーバーにタスクを振り分けることで、各サーバーが専門的な知識を活かして効率的に作業を進められるようにする、いわば交通整理役のような存在です。

</div>
</div>

</div>

---

## AWS Core MCP が何をするのか

<div style="display: flex; gap: 5px;">
<div style="width: 45%;">
<img src="../../assets/images/2025/career-change-to-aws-mcp-server/Core MCP Server.png" alt="MCP architecture" style="width: 80%; height: fit-content;">
<div style="font-size: 0.5em; text-align: left; margin-top: 5px;">
出典: https://github.com/awslabs/mcp/tree/main/src/core-mcp-server より

</div>

</div>

<div style="width: 60%;">
<ol style="font-size: 0.65em;">

### 複数のMCPを実装するならCore MCP を読むのがよい

Core MCP Serverの真の革新性は、単なるタスク振り分けを超えた3つの高度な機能にあり、①コンテキスト推論エンジンが「ECサイトを作りたい」という曖昧な要求から「セキュリティ」「決済」「在庫管理」といった暗黙の要件を推測して必要なMCPサーバーを事前準備し、②依存関係を有向非巡回グラフ（DAG）で管理してLambda作成前にIAMロールを用意するなど実行順序を自動最適化し、③各サーバーからのフィードバックをリアルタイムで分析してコスト超過時には自動的に代替案を提案するなど、プロジェクト全体を俯瞰してインテリジェントに調整する高度なプロジェクトマネージャーとして機能します。

</div>
</div>

</div>


---

## AWS Documentation MCP Server とは？

<div style="display: flex; gap: 5px;">
<div style="width: 45%;">
<img src="../../assets/images/2025/career-change-to-aws-mcp-server/AWS Documentation MCP Server.png" alt="MCP architecture" style="width: 80%; height: fit-content;">
<div style="font-size: 0.5em; text-align: left; margin-top: 5px;">
出典: https://github.com/awslabs/mcp/tree/main/src/aws-documentation-mcp-server より

</div>

</div>

<div style="width: 60%;">
<ol style="font-size: 0.65em;">

### Documentation MCP Server は何ができるのか？

AWS Documentation MCP Serverは、AWS公式ドキュメントにアクセスして検索・変換・推薦を行うMCPサーバーで、主に3つの機能を提供します：AWSドキュメントページをMarkdown形式に変換する「Read Documentation」、公式検索APIを使ってドキュメントを検索する「Search Documentation」、関連ページを推薦する「Recommendations」があり、これによりAIアシスタントが常に最新のAWSドキュメントを参照しながら正確な回答を提供でき、特にHTMLからMarkdownへの変換機能により、複雑な技術文書をAIが理解しやすい形式に自動変換し、コードサンプルやAPIリファレンスを含む正確な情報をコンテキストとして活用できるようにします。

</div>
</div>

</div>

---

## AWS Documentation MCP Server とは？

<div style="display: flex; gap: 5px;">
<div style="width: 45%;">
<img src="../../assets/images/2025/career-change-to-aws-mcp-server/AWS Documentation MCP Server.png" alt="MCP architecture" style="width: 80%; height: fit-content;">
<div style="font-size: 0.5em; text-align: left; margin-top: 5px;">
出典: https://github.com/awslabs/mcp/tree/main/src/aws-documentation-mcp-server より

</div>

</div>

<div style="width: 60%;">
<ol style="font-size: 0.65em;">

### Documentation MCP Server の面白いところ

個人的な推しポイントはドキュメントの「鮮度判定アルゴリズム」で、APIバージョンの変更を自動検出してAIに「このドキュメントは3日前に更新されました」と通知する仕組みがあり、さらに巧妙なのはコードサンプルの文脈理解で、単なるコードブロックの抽出ではなく、前後の説明文と紐づけて「このコードは〇〇の場合に使用」という文脈情報も保持し、推薦機能は機械学習ベースで「Lambda関数のエラー処理を検索した人は、次にCloudWatchログの設定を見る確率が87%」といった実践的なパターンを学習し、また内部的にはドキュメントの構造を有向グラフとして保持することで、階層的な知識の関連性を高速に検索できるのがよい。普通によい検索が大事というのが分かる。

</div>
</div>

</div>



---

## 配属先はAWS API

![bg left:30% fit](../../assets/images/2025/new-job-mcp/yoshida.png)

<div class="info-box">
配属先のAWS API部門で、先輩の佐藤さんから説明を受けました。</br></br>
<strong>「君の役割は、200以上のAWSサービスのAPIを理解し、自然言語の質問をAPI呼び出しに変換することだ」</strong></br></br>
「でも、それって普通にググればいいのでは...？」</br></br>
</div>

<div class="reference-right">
https://github.com/awslabs/mcp/tree/main/src/aws-api-mcp-server
</div>

---

## 配属先はAWS API

![bg left:30% fit](../../assets/images/2025/new-job-mcp/yoshida.png)

<div class="info-box">
<strong>「違う！我々は人間の判断力を活かして、曖昧な要求から最適なAPIを選び、安全に実行する。AIだけではできない仕事だ」</strong></br></br>
途中から何を言っているか分からなくなってきたが30分ぐらい聞いたら「人間だからこその価値があるのか...」って思い始めました。
</div>

<div class="reference-right">
https://github.com/awslabs/mcp/tree/main/src/aws-api-mcp-server
</div>

---

## AWS API MCP 

<div style="display: flex; gap: 5px;">
<div style="width: 45%;">
<img src="../../assets/images/2025/career-change-to-aws-mcp-server/AWS API MCP Server.png" alt="MCP architecture" style="width: 80%; height: fit-content;">
<div style="font-size: 0.5em; text-align: left; margin-top: 5px;">
出典: https://github.com/awslabs/mcp/tree/main/src/aws-api-mcp-server より

</div>

</div>

<div style="width: 60%;">
<ol style="font-size: 0.65em;">

### 基本と構造

AWS API MCP Serverは、**端的に言うと自然言語でAWS APIを実行するツール**です。「EC2インスタンスを全部見せて」「S3バケットの一覧を表示」といった**自然言語でリクエストすると、AIが適切なAWS CLIコマンドに変換して実行**してくれます。CursorやClaude DesktopなどのAI開発ツールと組み合わせて使うことで、**複雑なAWSコマンドを覚える必要なく、会話するようにAWSリソースを操作**できます。ただし、**プロンプトインジェクションやうっかりのリスク**があるため、本番環境での使用は推奨されず、**開発・テスト環境での利用が前提**です。セキュリティ面では**IAMによる権限管理が必須**で、読み取り専用モードも用意されています。従来なら複雑なコマンドやAPIの知識が必要だった作業を、**自然な会話で簡単に実行できるようにするツール**です。


</div>
</div>

</div>

---

## AWS API MCP

<div style="display: flex; gap: 5px;">
<div style="width: 45%;">
<img src="../../assets/images/2025/career-change-to-aws-mcp-server/AWS API MCP Server.png" alt="MCP architecture" style="width: 80%; height: fit-content;">
<div style="font-size: 0.5em; text-align: left; margin-top: 5px;">
出典: https://github.com/awslabs/mcp/tree/main/src/aws-api-mcp-server より

</div>

</div>

<div style="width: 60%;">
<ol style="font-size: 0.65em;">

### AWS API MCP Serverの面白いところ

AWS API MCP Serverの実装で面白いのは、**新しいコマンドも提案できる仕組み**です。モデルには学習時点の知識しかありません。つまり、モデルによって差が半端なくなくなる問題があります。このサーバーは**最新のAWSコマンド一覧を検索できるデータベース（FAISS）**を持っているので、「S3のファイルを自動削除したい」と聞けば、最新のコマンドを見つけて教えてくれます。セキュリティも**3段階の安全装置**があります：①読み取り専用モードで誤って削除を防ぐ、②悪意のある入力を検知してブロック、③危険なコマンド（サーバーへのSSH接続など）は最初から使えないようにしています。さらに、**使った履歴が全部ログに残る**ので、誰が何をしたか後から確認できます。それぞれのOSに合わせた場所にログを保存します。既存のAWS設定とも**そのまま連携**できるので、今使っている認証情報を変更する必要がありません。

</div>
</div>

</div>


---

## Knowledge MCPサーバーの田中さん

![bg left:30% fit](../../assets/images/2025/career-change-to-aws-mcp-server/businesswoman-eating-lunch-box.png)

<div class="info-box" style="font-size: 0.7em;">
昼食時、AWS Knowledge MCPサーバーの田中さんと話しました。</br>
<strong>「私たちKnowledge部門は特別でね。AWS（本物）が直接管理する完全マネージド部門なの」</strong></br>
「え！本物のAWSと関係が？」</br></br>
<strong>「そう。最新のドキュメント、What's New、ブログ記事...全てリアルタイムで頭に入っている。まるで生きたデータベースよ」</strong></br>
「それって大変じゃないですか？
<strong>「慣れれば楽しいわよ。毎日新しい発見があるから」</strong>
（田中さんの笑顔が少し怖かった）
</div>

<div class="reference-right">
https://github.com/awslabs/mcp/tree/main/src/aws-knowledge-mcp-server
</div>

---

## AWS Knowledge MCP Server 

<div style="display: flex; gap: 5px;">
<div style="width: 45%;">
<img src="../../assets/images/2025/career-change-to-aws-mcp-server/AWS Knowledge MCP Server.png" alt="MCP architecture" style="width: 80%; height: fit-content;">
<div style="font-size: 0.5em; text-align: left; margin-top: 5px;">
出典: https://github.com/awslabs/mcp/tree/main/src/aws-knowledge-mcp-server より

</div>

</div>

<div style="width: 60%;">
<ol style="font-size: 0.65em;">

### Documentation MCP Serverとの違い

AWS Knowledge MCP Serverは、AWSが提供する完全管理型のリモートMCPサーバーで、最新のAWSドキュメント、APIリファレンス、What's Newポスト、Getting Started情報、Builder Centerのガイダンス、ブログ記事、アーキテクチャリファレンス、Well-Architectedガイダンスへのアクセスを提供し、認証不要で無料（レート制限あり）で https://knowledge-mcp.global.api.aws から利用でき、Documentation MCP Serverがローカルで動作し公式ドキュメントのみを対象とするのに対し、Knowledge MCPはAWSがホストし複数のAWSコンテンツソースを統合的に検索できる点が大きな違いで、search_documentation、read_documentation、recommendの3つのツールを提供します。

</div>
</div>

</div>

---

## AWS Knowledge MCP Server 

<div style="display: flex; gap: 5px;">
<div style="width: 45%;">
<img src="../../assets/images/2025/career-change-to-aws-mcp-server/AWS Knowledge MCP Server.png" alt="MCP architecture" style="width: 80%; height: fit-content;">
<div style="font-size: 0.5em; text-align: left; margin-top: 5px;">
出典: https://github.com/awslabs/mcp/tree/main/src/aws-knowledge-mcp-server より

</div>

</div>

<div style="width: 60%;">
<ol style="font-size: 0.65em;">

### リモートMCPとしての参考になる

AWS Knowledge MCP Serverの実装でよいのは、完全管理型リモートサーバーという新しいMCPアーキテクチャの参考になる点で、従来のMCPサーバーがすべてローカルプロセスとして動作するのに対し、AWSが直接ホストすることでセットアップ不要・常に最新の情報提供を実現し、さらにHTTPトランスポート非対応のクライアント（Claude Desktop、Cline等）向けにmcp-remoteやmcp-proxyという巧妙なプロキシソリューションを提供してstdioからHTTPへの変換を可能にし、開発者向けにはMCP Inspectorツールでブラウザから直接APIをテストできる仕組みを用意し、最も実用的なのは複数コンテンツソースの統合で、単なるドキュメント検索を超えてWhat's New、ブログ、アーキテクチャガイドなど様々な情報源を横断的に検索することで、「この新機能の使い方は？」と聞けば公式ドキュメントとブログ記事の両方から最適な答えを提供してくれます。

</div>
</div>

</div>


---

## Git Repo Research MCP

![bg left:30% fit](../../assets/images/2025/new-job-mcp/pc_operator.png)

<div class="info-box" style="font-size: 0.7em;">
午後、Git Repo Research MCPサーバーの木戸さんに会いました。</br></br>
<strong>「やあ新人君！俺はコードの探偵さ。どんなに巨大なリポジトリでも、必要なコードを瞬時に見つける」</strong></br></br>
実演を見せてもらうと：</br>
「『認証処理のベストプラクティス』を探して」という要求に対し、数秒で関連コードを10個もリストアップ。</br></br>
<strong>「セマンティック検索の極意は、コードの意味を理解することだ」</strong></br></br>
カッコいい...でも大変そう。
</div>

<div class="reference-right">
https://github.com/awslabs/mcp/tree/main/src/git-repo-research-mcp-server
</div>

---

## Git Repo Research MCP 

<div style="display: flex; gap: 5px;">
<div style="width: 45%;">
<img src="../../assets/images/2025/career-change-to-aws-mcp-server/Git Repo Research MCP Server.png" alt="MCP architecture" style="width: 80%; height: fit-content;">
<div style="font-size: 0.5em; text-align: left; margin-top: 5px;">
出典: https://github.com/awslabs/mcp/tree/main/src/git-repo-research-mcp-server より

</div>

</div>

<div style="width: 60%;">
<ol style="font-size: 0.65em;">

### コードを調べる⋯

Git Repo Research MCP Serverは、Amazon BedrockとFAISSを活用してGitリポジトリをセマンティック検索できるMCPサーバーで、開発者がリポジトリをローカルにクローンすることなく外部のコードベースを研究し、コード生成に影響を与えることができるツールです。主な機能として、ローカル/リモートのGitリポジトリをFAISSインデックスに変換する「create_research_repository」、自然言語でコード検索を行う「search_research_repository」、ディレクトリ構造とREADME等の重要ファイルを識別する「summarize_repository」、GitHubでAWS関連組織（aws-samples、aws-solutions-library-samples、awslabs）のリポジトリを検索する「search_github_repositories」があり、Amazon Titan Embed Text V2を使って1000文字のチャンクに分割（200文字オーバーラップ）してベクトル化します。

</div>
</div>

</div>

---

## Git Repo Research MCP 

<div style="display: flex; gap: 5px;">
<div style="width: 45%;">
<img src="../../assets/images/2025/career-change-to-aws-mcp-server/Git Repo Research MCP Server.png" alt="MCP architecture" style="width: 80%; height: fit-content;">
<div style="font-size: 0.5em; text-align: left; margin-top: 5px;">
出典: https://github.com/awslabs/mcp/tree/main/src/git-repo-research-mcp-server より

</div>

</div>

<div style="width: 60%;">
<ol style="font-size: 0.65em;">

### 技術的な面白いところ

Git Repo Research MCP Serverは、「ダウンロードせずにコードを探せる」仕組みです。例えば、巨大なリポジトリ（数万ファイル）を調査したい時、従来は無限に大きなコンテンツを全部ダウンロードして検索する必要がありましたが、このサーバーはリモートのまま「S3のファイルアップロードのエラー処理どうやってる？」と自然言語で聞けば、関連するコードだけを見つけてくれます**。さらに賢いのはAWS公式のサンプルコードだけを検索対象にする機能で、信頼できないコードをAIが学習しないように工夫されています。また、「Pythonファイルだけ」「テストコードは除外」といった細かい設定もでき、便利なのは関連度スコアによるフィルタリングがあり、「このエラーどう直す？」と聞いた時に、本当に関係のあるコードだけを返すので、AIが的確な回答を生成できるのです。**

</div>
</div>

</div>



---

# 第三章「初めてのクライアント対応」

---

## Core MCPの振り分け

![bg left:30% fit](../../assets/images/2025/new-job-mcp/yoshida.png)

<div class="info-box" style="font-size: 0.7em;">

研修3日目、初めてのクライアント対応が来ました。</br>
まずCore MCPサーバーの山田さんが対応：</br>
<strong>「お客様の要求は『EC2インスタンスを自動スケーリングさせたい』ですね。これはAWS APIとDocumentationの連携案件です」</strong></br>
私とDocumentationの鈴木さんにタスクが振り分けられました。</br>
山田さん：<strong>「Coreの役割は交通整理。複雑な要求を分解して、適切なサーバーに割り当てます」</strong>
</div>

---

## 遠くに行くにはみんなで

![bg left:30% fit](../../assets/images/2025/new-job-mcp/team.png)

<div class="info-box" style="font-size: 0.7em;">
鈴木さんと私で対応開始。<br>
鈴木さん（Documentation）：<br>
「Auto Scalingの最新ベストプラクティスはこちらです。ターゲット追跡スケーリングポリシーが推奨されています」<br>
私（API）：<br>
「了解！それではCreateAutoScalingGroupとPutScalingPolicyのAPIを組み合わせて...」<br><br>

```json
{
  "AutoScalingGroupName": "my-asg",
  "TargetTrackingConfiguration": {
    "TargetValue": 70.0,
    ...
  }
}
```
</div>

---

## クライアントの反応

![bg left:30% fit](../../assets/images/2025/new-job-mcp/pc_operator.png)

<div class="info-box" style="font-size: 0.7em;">
30分後、完璧な自動スケーリング設定が完成。</br>
クライアント：</br>
「素晴らしい！CloudFormationテンプレートまで生成してくれて、セキュリティグループの設定も完璧です」</br>
鈴木さん：「最新のセキュリティベストプラクティスも反映済みです」</br></br>
私：「必要最小限のIAMポリシーも添付しました」</br></br>
<strong>「これがMCP Serversの連携の実力か...」</strong>と実感した瞬間でした。
</div>

---

# 第四章「大規模プロジェクトへの挑戦」

---

## 5つのMCPサーバー総動員

![bg left:30% fit](../../assets/images/2025/new-job-mcp/kaigi.png)

<div class="info-box" style="font-size: 0.7em;">
入社1ヶ月後、大型案件が舞い込みました。<br><br>
<strong>「某大手企業のマイクロサービス全面移行プロジェクト」</strong><br><br>
参加メンバー：<br>
- <strong>Core（山田）</strong>：全体設計とタスク分配<br>
- <strong>API（私）</strong>：APIゲートウェイとサービス連携<br>
- <strong>Documentation（鈴木）</strong>：アーキテクチャ文書<br>
- <strong>Knowledge（田中）</strong>：最新のベストプラクティス<br>
- <strong>Git Repo（木戸）</strong>：既存コード分析<br><br>
<strong>「全員で力を合わせるぞ！」</strong>
</div>

---

## Git Repoの大活躍

![bg left:30% fit](../../assets/images/2025/new-job-mcp/pc_operator.png)

<div class="info-box" style="font-size: 0.7em;">
木戸さんが既存システムを分析。</br></br>
<strong>「モノリシックなコードベースから、54個のマイクロサービス候補を特定した」</strong></br></br>
「どうやって？」</br></br>
<strong>「コードの依存関係、責務の境界、データフローを解析。機械的な分割じゃなく、ビジネスロジックの意味を理解した上での提案だ」</strong></br></br>
さらに各サービスの技術的負債まで可視化。</br>
<strong>「これは人間にしかできない仕事だな」</strong>と確信しました。
</div>

---

## Knowledgeの最新情報力

![bg left:30% fit](../../assets/images/2025/new-job-mcp/yoshida.png)

<div class="info-box" style="font-size: 0.7em;">
田中さんが最新のAWS機能を次々と提案。</br></br>
<strong>「先週リリースされたApp Runner の新機能が、このユースケースにピッタリよ」</strong></br></br>
「先週!? もう把握してるんですか？」</br></br>
<strong>「Knowledge MCPサーバーの特権よ。AWS本家から直接情報が流れてくるから」</strong></br></br>
- 最新のコンテナイメージサポート</br>
- VPCコネクタの改善点</br>
- 料金体系の変更点</br></br>
全て完璧に説明してくれました。
</div>


---

# 第五章「人間MCPサーバーの価値」

---

## 真似できない判断

![bg left:30% fit](../../assets/images/2025/new-job-mcp/panic_men.png)

<div class="info-box" style="font-size: 0.7em;">
ある日、緊急案件が発生。<br><br>
<strong>クライアント</strong>：「本番環境でRDSのCPUが100%に張り付いてる！」<br><br>
Core（山田）が瞬時に判断：<br>
<strong>「これは複合要因だ。API、すぐにCloudWatchメトリクスを。Documentation、RDSのトラブルシューティングガイドを」</strong><br><br>
私がメトリクスを分析すると、不自然なクエリパターンを発見。<br><br>
<strong>「これ、スロークエリじゃなくて、アプリケーションの無限ループが原因では？」</strong><br><br>
長年の経験と直感が問題を解決した瞬間でした。
</div>

---

## チームワークの結晶

![bg left:30% fit](../../assets/images/2025/new-job-mcp/team.png)

<div class="info-box" style="font-size: 0.7em;">
マイクロサービス移行プロジェクトが完了。<br><br>
<strong>成果</strong>：
<ul>
<li>54のマイクロサービスに分割</li>
<li>レスポンスタイム60%改善</li>
<li>インフラコスト40%削減</li>
<li>完全自動化されたCI/CDパイプライン</li>
</ul>
<br>
<strong>クライアントCTO</strong>：<br>
<strong>「普通のコンサルなら1年かかる仕事を、1ヶ月で完成させた。しかも品質は期待以上だ」</strong><br><br>
全員で喜びを分かち合いました。
</div>


---

# エピローグ

## 3年後の今

![bg left:30% fit](../../assets/images/2025/new-job-mcp/yuhi.png)

<div class="info-box" style="font-size: 0.7em;">
AWS MCP Servers社に入社して3年。<br><br>
今では：
<ul>
<li>生成AIモデルの進化に伴う業務の成熟化</li>
<li>後輩MCPサーバーの育成担当</li>
<li>他のプロフェッショナルMCPとの連携(サービス毎)</li>
</ul>
<br>
<strong>「転職したらAWS（MCP）サーバーだった件」</strong><br><br>
最初は戸惑いましたが、人間の専門知識とAIの処理能力を融合させる仕事は、想像以上にやりがいがありました。<br><br>
本物のAWSで働く夢も、違う形で叶ったのかもしれません...。
</div>

---

## まとめ

### Model Context Protocol (MCP)
- AIと外部システムをつなぐ標準規格

### AWS MCP Servers (50+)
- **AWS MCP Servers**: 50+のAWSサービス専門MCPサーバー群で、自然言語でAWSリソース操作・検索・管理を可能にするエコシステム群
- 実際に使うのも良いと思うのですが何よりも実装のアイディアがとても参考になります。


**リンク**: [github.com/awslabs/mcp](https://github.com/awslabs/mcp)

---

<!-- _backgroundColor: white -->

![bg left:30% fit](../../assets/images/nwiizo_icon.jpg)
## nwiizo

<div class="info-box">
株式会社スリーシェイクで</br>プロのソフトウェアエンジニアをやっているものです</br>
格闘技、読書、グラビアが趣味</br>
</div>

<p style="margin-top: 30px !important;">人生を通して"<strong>運動、睡眠、読書</strong>"をちゃんとやりたい</p>

---


<div style="text-align: center; margin-top: 10px;">
  <img src="../../assets/images/3shake-about.png" alt="3-shake about" style="width: 65%; max-width: 550px; max-height: 320px; object-fit: contain;">
</div>

---

## We are Hiring!!

<div style="text-align: center; margin-top: 30px;">

3-shakeは一緒にSRE界隈を盛り上げてくれる**仲間を大募集中**です！
Mobility、FinTech、通信など大規模SREを存分に経験できます
（最近社内はGenAI / GPU / Kubernetesが盛り上がってます）
是非、カジュアル面談しましょう！！！！

  <img src="../../assets/images/3shake-hiring.png" alt="3-shake about" style="width: 80%; margin-top: 10px;">
</div>

---

## 参考資料

### Model Context Protocol (MCP) 関連リンク

**MCP公式ドキュメント**
- Model Context Protocol: https://modelcontextprotocol.io/
- MCP仕様書: https://spec.modelcontextprotocol.io/

**AWS MCP Servers - GitHub リポジトリ**
- メインリポジトリ: https://github.com/awslabs/mcp

---

## 参考資料

- **AWS API MCP Server**  
  https://github.com/awslabs/mcp/tree/main/src/aws-api-mcp-server
  
- **AWS Knowledge MCP Server**  
  https://github.com/awslabs/mcp/tree/main/src/aws-knowledge-mcp-server
  
- **Core MCP Server**  
  https://github.com/awslabs/mcp/tree/main/src/core-mcp-server
  
- **AWS Documentation MCP Server**  
  https://github.com/awslabs/mcp/tree/main/src/aws-documentation-mcp-server
  
- **Git Repo Research MCP Server**  
  https://github.com/awslabs/mcp/tree/main/src/git-repo-research-mcp-server


---

<!-- 
_backgroundColor: #0a1929
_color: white
_class: title dark
-->

![bg](../../assets/images/3shake-background-full.png)

<!-- タイトルページ左上に大きなロゴを表示 -->
<div style="position: absolute !important; top: 5px !important; left: 5px !important; z-index: 9999 !important; margin: 0 !important; padding: 0 !important;">
  <img src="../../assets/images/3shake-logo.png" style="width: 240px !important; height: auto !important; display: block !important;">
</div>

<div style="text-align: center; margin-top: 200px;">

# ありがとう<span class="highlight-yellow">ございました</span>

@nwiizo | https://3-shake.com
</div>
