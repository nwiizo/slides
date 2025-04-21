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

# <span style="font-size: 1.0em;">ここはMCPの夜明けまえ</span>

</div>

<div class="author-info" style="text-align: left; padding-left: 0; text-indent: 0;">
2025/4/23 AI駆動開発実践の手引き -これが僕/私のAI（アイ）棒-</br>@nwiizo 30min #hack_at_delta
</div>

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

## about 3-shake

<div style="text-align: center; margin-top: 30px;">
  <img src="../../assets/images/3shake-about.png" alt="3-shake about" style="width: 80%; margin-top: 10px;">
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

## アジェンダ <!-- 30分を目安に構成を最適化 -->

1. **MCPとは何か** - 基本概念と位置づけ (5分)

2. **技術アーキテクチャ** - 構成要素と通信方式 (5分)

3. **最新仕様の革新点** - Streamable HTTP、OAuth他 (8分)

4. **実装パターン** - クラウド環境・社内システム (8分)

5. **セキュリティ考慮事項** - 脆弱性と対策 (2分)

6. **まとめ：実践への第一歩** (2分)

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
<ol style="font-size: 0.9em;">

### Model Context Protocol (MCP)の本質

*   **定義**: LLMが外部ツール・データソースと通信するための**オープン標準**

* **特徴**: JSON-RPC 2.0をベースとした軽量プロトコル

* **アナロジー**: AIアプリのための「USB規格」- どのAIも同じインターフェースで外部接続

</ol>
</div>
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
<ol style="font-size: 0.9em;">

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

- **サーバー**: 200+（公式+コミュニティ）[RoadMap](https://modelcontextprotocol.io/development/roadmap)にリポジトリの登場が明記

- **優位性**: 特定ベンダーに依存しないエコシステムが拡大中

---

## MCPアーキテクチャ概要

![bg right:50% 90%]

### 3つの主要機能カテゴリ

1. **Tools（ツール）**
   - LLMが呼び出す「関数」（POST相当）
   - 例：情報検索、API呼出、データベース操作

2. **Resources（リソース）**
   - 読み取り専用のデータソース（GET相当）
   - 例：ドキュメント、構成情報、リファレンス

3. **Prompts（プロンプト）** ※任意実装
   - ツール利用に関するガイダンス文書
   - LLMへの最適な指示テンプレート

**標準化の価値**: 単一インターフェースでAIとデータ・ツールの連携を実現

---

## JSON-RPCによる通信方式 (1/2)

![bg right:40% 95%]

### メッセージフォーマット

**リクエスト例**:
```json
{
  "jsonrpc": "2.0",
  "id": 5,
  "method": "tools/call",
  "params": {
    "name": "get_weather",
    "arguments": { "city": "Tokyo" }
  }
}
```

**レスポンス例**:
```json
{
  "jsonrpc": "2.0",
  "id": 5,
  "result": {
    "current": { "temp": 18, "condition": "Clear" }
  }
}
```

---

## JSON-RPCによる通信方式 (2/2)

![bg right:40% 95%]

### MCPの通信フロー

1. **初期化フェーズ**
   - クライアントが`initialize`でケイパビリティ宣言
   - サーバーが利用可能な機能を応答

2. **リソース探索**
   - `resources/list`で利用可能なリソース一覧取得
   - `resources/get`で特定リソースのデータ取得

3. **ツール呼び出し**
   - `tools/list`でサーバー上のツール一覧取得
   - `tools/call`で特定ツールの実行要求

**利点**: シンプルさと互換性を両立した標準的な通信プロトコル

---

## 通信トランスポート

![bg right:40% 90%]

### STDIOトランスポート (ローカル接続)

- 標準入出力を使用したプロセス間通信

- LLMアプリが子プロセスとしてMCPサーバー起動

- 認証不要、高速、シンプル

- ローカルツール連携に最適

### HTTPトランスポート (リモート接続)

- **旧**: HTTP + SSE (Server-Sent Events)による複雑な実装

- **新**: Streamable HTTP Transport (2025-03-26)
  - 単一エンドポイント (`/message`) 
  - ステートレスモード対応
  - サーバーレス環境での実装が容易に

---

## 2025-03-26仕様の主要革新点 (1/3)

![bg right:40% 90%]

### 1. Streamable HTTP Transport

- **シンプル化**: 単一エンドポイント(`/message`)に統合

- **柔軟性向上**: SSEが任意（従来は必須）

- **TypeScript SDK 1.10.0で実装済み** (SDKによっては未対応)

### クライアント-サーバー通信の流れ

1. **単一エンドポイント利用**
   - POSTリクエストに全ての通信を集約
   - SSEは任意機能（プッシュ通知が必要な場合のみ使用）

2. **セッション管理のオプション**
   - `Mcp-Session-Id` ヘッダーでセッション紐付け
   - ヘッダーなしで完全ステートレスにも対応

---

## 2025-03-26仕様の主要革新点 (2/3)

![bg right:40% 90%]

### 2. ステートレスモード

- **サーバーレス対応**: AWS Lambda、Vercelなどで実装容易

- **セッション管理不要**: 状態保持せずに動作可能

- **呼び出し単純化**: 1回のHTTP POSTでMCPサーバー接続

### 従来の実装からの進化

- **従来**: セッション毎のTransportオブジェクト保持が必要

- **課題**: マルチプロセス環境では外部ストレージ必須

- **新機能**: 永続化層不要、JWT等と組み合わせて認証可能

**革新ポイント**: クラウドネイティブ環境でのMCP実装が大幅に簡素化

---

## 2025-03-26仕様の主要革新点 (3/3)

![bg right:40% 90%]

### 3. OAuth 2.1認証フレームワーク

- **認証の標準化**: OAuth 2.1による認可フロー対応

- **実装の柔軟性**: 認証は任意実装だが推奨

- **HTTP**: OAuthベース認証、**STDIO**: 環境変数経由認証

### 4. Tool annotations & その他の改善

- **ツール注釈**: 動作特性を明示するメタデータ
   - `destructiveHint`（破壊的更新の可能性）
   - `idempotentHint`（重複呼出の安全性）
   - `readOnlyHint`（環境変更なしを示す）
   - `openWorldHint`（外部エンティティとの相互作用）

- **バッチ処理**: 複数リクエストの一括送信対応

- **マルチモーダル拡張**: オーディオデータサポート

**セキュリティ強化**: エンタープライズ利用に向けた品質・安全性向上

---

## AWS/クラウド環境での実装事例


<div style="width: 70%;">
<ol style="font-size: 0.9em;">

### [AWS MCP Servers](https://github.com/awslabs/mcp)

- **Bedrock Knowledge Bases MCP**: 社内文書検索

- **AWS Documentation MCP**: ドキュメント検索

- **CDK/Terraform MCP**: インフラ定義支援

- **Lambda MCP**: カスタム関数実行

</ol>
</div>
</div>

---

### 各種サービスのMCP実装例

- [**Datadog MCP**](https://github.com/winor30/mcp-server-datadog)(非公式)
  - **監視データやログの自然言語分析**
  - インシデント検知と障害対応支援

- [**PagerDuty MCP**](https://github.com/wpfleger96/pagerduty-mcp-server)(非公式)
  - PagerDutyのAPI機能をLLMに提供
  - インシデント、サービス、チーム管理が自然言語で可能

---

## tfmcp - Terraformを操作するMCPサーバー例

![bg right:40% 90%]

### アーキテクチャと実装

```
tfmcp
├── config      - 設定管理
├── core        - コアロジック
├── mcp         - MCPプロトコル実装
├── shared      - 共通ユーティリティ
└── terraform   - Terraform連携
```

### 主な機能と利点

- **使用言語**: Rust (高性能で安全な実装)

- **内部処理**: Terraform CLIをラップしてJSON-RPC化

- **通信方式**: STDIOトランスポート採用

- **主な機能**: 設定解析、計画実行、状態管理、適用実行

**実装例**: インフラ管理をLLMから自然言語で操作可能に

---

## tfmcp - 実装から学ぶMCPの本質

![bg right:40% 90%]

### 公式SDKを使わない独自実装の価値

- **深い理解の獲得**: プロトコルの細部まで理解できる

- **カスタマイズの自由**: 自社要件に最適化した実装が可能

- **軽量な依存関係**: 必要最小限のコードで構築

### tfmcpの開発アプローチ

- **Rustによる高パフォーマンス実装**
  - 型安全性、堅牢なエラー処理
  - 効率的な非同期処理

- **JSON-RPC仕様を直接実装**

- **最小限のコード行数で必要機能を実現**

**開発者へのメッセージ**: 「MCPは実装してこそ理解できる。実装を通じて標準の本質を掴み、独自の拡張も検討してみよう」

---

## 社内応用シナリオ

![bg right:40% 90%]

### 導入しやすいユースケース

1. **ナレッジベース連携**
   - 社内Wiki/Confluence検索サーバー
   - ドキュメント管理システムとLLMの統合

2. **開発業務支援**
   - CI/CD操作の自然言語インターフェース
   - コード生成・テスト支援

3. **データ分析基盤連携**
   - BIツールとLLMの統合
   - データ探索・可視化の自然言語操作

**組織的価値**: 既存システム資産をAIで活性化する「共通言語」の確立

---

## セキュリティリスクと対策

![bg right:40% 95%]

### MCPのセキュリティリスク

- **サードパーティMCPサーバーのリスク**: 信頼できない「野良MCPサーバー」による危険性
- **権限の過剰付与**: 必要以上の権限によるリソース不正アクセスの可能性
- **データ漏洩のリスク**: 機密情報の外部漏洩
- **プロンプトインジェクション攻撃**: 悪意あるプロンプトによる予期しない操作

### 実装時のベストプラクティス

- **信頼できるソースのみ利用**: 公式リポジトリや信頼できる開発者のコードを確認
- **最小権限の原則適用**: 必要最小限の権限のみを付与
- **サンドボックス環境での実行**: 隔離環境によるアクセス制限
- **監査ログの有効化**: 実行コマンドや操作の記録と定期確認
- **機密情報のフィルタリング**: APIキーやパスワード等の検出・削除

---

## MCP vs. 他プロトコル - 戦略的位置づけ

![bg right:40% 90%]

### プロトコル比較

|  | **MCP** | **A2A** | **OpenAI Functions** |
|--|---------|---------|----------------------|
| **設計思想** | 外部ツール・データ連携 | エージェント間協調 | 単一モデル用関数呼出 |
| **標準化** | オープン標準 | 一部オープン | ベンダー仕様 |
| **汎用性** | 言語非依存 | JSON/HTTP | OpenAI専用 |
| **実用例** | 数百プロジェクト | 初期段階 | OpenAI実装のみ |

### A2Aとの関係性

- **目的の違い**: MCPは「エージェント→ツール」、A2Aは「エージェント→エージェント」

- **用途の住み分け**: 両者は競合ではなく補完関係

**優位点**: MCPはAIツール連携の実質的業界標準に

---

## まとめ：AIとシステムの新たな結合点

![bg right:40% 90%]

### 実用段階に入ったMCP

1. **オープン標準のパワー**
   - ベンダーロックイン回避と互換性確保
   - OpenAIも採用し、事実上の業界標準に

2. **2025-03-26仕様の画期的進化**
   - Streamable HTTP・ステートレスモードで実装が容易に
   - OAuth認証・ツール注釈で本番環境での利用障壁を低減

3. **次のステップ**
   - TypeScript SDKで始める最新実装
   - クラウドネイティブ環境での利用検討
   - 既存システムとの統合で新たな価値創出

**MCPは、AIシステム連携のDNAとなる**

**LLMと世界を繋ぐ「共通言語」として、AIアプリケーションの未来を形作る**

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

### ご質問・ご相談はお気軽にお問い合わせください

@nwiizo | https://3-shake.com
</div>
