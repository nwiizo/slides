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

# <span style="font-size: 1.4em;">Claude Code</br>どこまでも.</br></span>

</div>

<div class="author-info" style="text-align: left; padding-left: 0; text-indent: 0;">
2025/6/18 KAGのLT会 #6 </br>@nwiizo 10min #KAGのLT会
</div>

---

<!-- _backgroundColor: white -->

![bg left:30% fit](../../assets/images/nwiizo_icon.jpg)
## nwiizo

<div class="info-box">
株式会社スリーシェイクで</br>プロのソフトウェアエンジニアをやっているものです</br>
格闘技、読書、グラビアが趣味でよく本を紹介してます</br>
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

## Claude Codeとは何か

<div style="display: flex; justify-content: space-between; gap: 30px; align-items: center;">

<div style="flex: 1;">
<img src="/Users/nwiizo/ghq/github.com/nwiizo/3shake-marp-templates/assets/images/2025/claude-code-beyond/codegen.png" alt="Claude Code" style="width: 80%; height: auto;">
</div>

<div style="flex: 1;">

<div style="font-size: 0.7em;">

### 従来のAIアシスタントとの決定的な違い

- **「コード生成器」→「開発パートナー」**
  - 単体機能の提案から、プロジェクト全体の理解・実装まで(限りなく4に近い性能を持ち始めている)
  - エディタの外で動作、ターミナルネイティブな操作

- **自律性の飛躍的向上**
  - 複数ファイルの連携変更
  - git操作、テスト実行、デバッグまで一貫して処理
  - 失敗時の自己修正・再試行

</div>

</div>

</div>

<div class="reference-right">
参考: <a href="https://speakerdeck.com/watany/the-end-of-the-special-time-granted-to-engineers">エンジニアに許された特別な時間の終わり</a>
</div>

---

## 比喩で理解するClaude Code①


<div style="display: flex; justify-content: space-between; gap: 40px;">

<div style="flex: 1;">

#### 🔧 従来のツール
**= 「高性能な電動ドライバー」**
<div style="font-size: 0.8em;">

- 🔩 一つずつのネジ(コード)を効率的に締める
- 📋 でも設計図は人間が用意する必要がある
- ✋ 作業の大部分は依然として手作業

</div>

</div>

<div style="flex: 1;">

#### 🏗️ Claude Code  
**= 「熟練の現場監督 + 職人チーム」**
<div style="font-size: 0.8em;">

- 📐 設計図の理解から施工まで一貫して担当
- 🔄 問題発見時の自律的な修正・改善
- 👁️ プロジェクト全体を俯瞰した判断

</div>

</div>

</div>

※ あくまで比喩的な説明です。細かい差異についてはご容赦ください


---

## 比喩で理解するClaude Code②

<div style="display: flex; justify-content: space-between; gap: 40px;">

<div style="flex: 1;">

#### 🔨 従来の開発：町工場
<div style="font-size: 0.8em;">

- 👨‍🔧 職人（開発者）が一つずつ手作業
- 🎯 品質は職人の技量に依存
- 📏 スケールには限界がある
- 👤 人間は「職人」として個別対応

</div>

</div>

<div style="flex: 1;">

#### 🏭 Claude Code導入後：自動化工場  
<div style="font-size: 0.8em;">

- 📋 設計図（CLAUDE.md）に基づく生産
- ✅ 品質保証（lint/test）の自動化
- ⚡ 並列処理（Task tool）でスケール
- 👨‍💼 人間は「工場長」として全体を指揮

</div>

</div>

</div>


※ あくまで比喩的な説明です。細かい差異についてはご容赦ください

---

## 資料として良いものは前回のこの勉強会から

<div style="display: flex; justify-content: space-between; gap: 20px; align-items: flex-start;">
  <div style="flex: 1; text-align: center;">
    <img src="/Users/nwiizo/ghq/github.com/nwiizo/3shake-marp-templates/assets/images/2025/claude-code-beyond/getting-started-with-claude-code.png" alt="Getting Started with Claude Code" style="width: 100%; height: auto;">
    <p style="margin-top: 10px; font-size: 0.6em;">
      <a href="https://speakerdeck.com/schroneko/getting-started-with-claude-code">https://speakerdeck.com/schroneko/getting-started-with-claude-code</a>
    </p>
  </div>
  <div style="flex: 1; text-align: center;">
    <img src="/Users/nwiizo/ghq/github.com/nwiizo/3shake-marp-templates/assets/images/2025/claude-code-beyond/yasasiiclaude-coderu-men.png" alt="Claude Code入門" style="width: 100%; height: auto;">
    <p style="margin-top: 10px; font-size: 0.6em;">
      <a href="https://speakerdeck.com/minorun365/yasasiiclaude-coderu-men">https://speakerdeck.com/minorun365/yasasiiclaude-coderu-men</a>
    </p>
  </div>
</div>

今回は使ってみての感想を中心にお話をしていければと思います。

---

# 効率化のTips & トリック集

---

### コンテキスト管理
「仕事のことを忘れる天才新人」として扱う→毎回明示的な指示が効果的
しかもたくさんは覚えられないため頻繁にコンテキストをクリアが必要

```bash
/clear
```

### 権限設定で高速化
```bash
# 権限チェックをスキップ（開発環境推奨）,エイリアスを設定(alias c="claude")もおすすめ
claude --dangerously-skip-permissions
alias yolo="claude --dangerously-skip-permissions"
```

未来のあなたに殴られたくないのでしっかり言及しておくと`--dangerously-skip-permissions`は開発環境でのみ使うことを強く推奨します。

---

### 思考力を制御する方法

この辺は最近日本語にも対応してきたので、英語でなくても大丈夫ですが辞書登録してしまったので英語でやってます。あと、「Shift + Tab」でPlan Mode に切り替えられるのでそちらも適切に活用してください。

```bash
# 軽い思考（4,000トークン）
"think about this problem"

# 深い思考（12,000トークン） 
"think harder about the architecture"

# 超詳細思考（32,000トークン）
"ultrathink this complex refactoring"
```

---

### セッション管理
```bash
# プランニングモード（ファイル変更なし）
Shift+Tab を2回押す

# 過去のセッション一覧・再開
claude --resume

# 直前のセッションに戻る
claude --continue

# 前のメッセージに戻ってフォーク
Escape を2回押す
```

---


### 細かい便利機能

こちらについては、どのように設定・活用しているかをブログに詳しく書きましたので、ぜひご確認ください

<div style="display: flex; justify-content: space-between; gap: 20px; align-items: flex-start;">
  <div style="flex: 1; text-align: center;">
    <img src="/Users/nwiizo/ghq/github.com/nwiizo/3shake-marp-templates/assets/images/2025/claude-code-beyond/blog_01.png" alt="Blog 01" style="width: 100%; height: auto;">
    <p style="margin-top: 10px; font-size: 0.6em;">
      <a href="https://syu-m-5151.hatenablog.com/entry/2025/06/05/134147">https://syu-m-5151.hatenablog.com/entry/2025/06/05/134147</a>
    </p>
  </div>
  <div style="flex: 1; text-align: center;">
    <img src="/Users/nwiizo/ghq/github.com/nwiizo/3shake-marp-templates/assets/images/2025/claude-code-beyond/blog_02.png" alt="Blog 02" style="width: 100%; height: auto;">
    <p style="margin-top: 10px; font-size: 0.6em;">
      <a href="https://syu-m-5151.hatenablog.com/entry/2025/06/06/190847">https://syu-m-5151.hatenablog.com/entry/2025/06/06/190847</a>
    </p>
  </div>
</div>


---

### MCP（Model Context Protocol）の戦略的活用

**原則**: 必要最小限での利用
- **基本操作はClaude Code標準機能で十分**
- MCPは「どうしても標準機能では難しい場合」のみ、パスごとに設定する
- 例：[playwright-mcp](https://github.com/microsoft/playwright-mcp) でのブラウザ自動化

### MCP使用時の注意点
- パフォーマンスオーバーヘッドを考慮
- セキュリティリスクの評価


<div style="font-size: 0.8em;">
基本的には後述の <code>.claude/commands</code>で対応可能な場合は、そちらを優先することを推奨します
</div>

---

## ログ設計の戦略

### デバッグ情報の自動出力

```rust
// 開発モードでの自動ログ出力例
#[cfg(debug_assertions)]
fn send_email(to: &str, subject: &str) {
    println!("DEBUG: Email sent to {} with subject: {}", to, subject);
    println!("DEBUG: Email link: http://localhost:3000/verify/{}", generate_token());
    // 実際の送信処理...
}
```

**効果**: AIが自動的にメール確認→リンククリック→認証完了までを実行可能

---

## ログ設計の戦略

### ログの「ちょうど良い」バランスも変わるのではないか？
- **情報不足**: AIが問題を理解できない
- **情報過多**: トークン消費量増加、推論速度低下  
- **理想**: 問題解決に必要な情報のみを適切なタイミングで簡潔に

デバッグモードでは、AIが理解しやすいように、必要な情報を自動的に出力することが重要になりそうです。
良いログ、悪いログの基準も変わる可能性があります。

---

## 開発哲学の転換点

### 従来の価値観
- **美しいコード**: 抽象化、DRY原則、設計パターン
- **醜いコード**: 重複、ベタ書き、単純な実装

### AI開発での価値観転換：「シンプルで確実」なアプローチの有効性
- AIは複雑な抽象化より、愚直な実装を理解しやすい
- おそらくプログラミング言語もそういう評価のされ方をする(Go言語など)
- 重複コードの方が局所的な修正が安全
- 過度な設計パターンはAIを混乱させる

---

## 開発哲学の転換点

### 新しい判断基準
- **人間の美意識** < **AIの理解しやすさ**
- **抽象化** < **明示的な処理**
- **DRY原則** < **局所的な明確性**


**学び**: AIには「最もダメそうで確実に動く」コードを書かせる

---

## カスタムコマンドによる自動化

### `.claude/commands/` ディレクトリの仕組み

```
.claude/
└── commands/
    ├── rust-qa-pipeline.md    # Rust品質保証パイプライン
    ├── cargo-release.md       # リリース準備チェック
    ├── benchmark.md           # パフォーマンステスト
    └── security-audit.md      # セキュリティ監査
```

---

## カスタムコマンドによる自動化

### 基本的な使い方
```bash
# コマンド実行
/project:rust-qa-pipeline
/project:cargo-release

# 複数タスクの組み合わせも可能
/project:rust-qa-pipeline test clippy fmt audit
```

---

## カスタムコマンドの実践活用例

### 1. Rust品質保証パイプライン（rust-qa-pipeline.md）
```
Step 1: プロジェクト構造分析 (1タスク)
Step 2: 品質チェック (並列4タスク)
  - cargo test | cargo clippy | cargo fmt --check | cargo audit
Step 3: 問題修正 (並列複数タスク)
Step 4: 最終検証とベンチマーク実行
```

---

## カスタムコマンドの実践活用例

### 2. リリース準備チェック（cargo-release.md）
- 依存関係の最新化チェック
- CHANGELOG.mdの更新確認
- cargo publishの事前検証
- タグ作成とGitHub Release準備

**効果**: 手動30分の作業 → 自動5分で完了(MCPを立てるとリソースも喰うので⋯)

---

## Claude Code みたいなやつとの付き合い方

### Claude Codeの特性を人間に例えると... 🧠 

**「仕事のことすぐに忘れる天才新人」モデル**

- **発想は平凡だが手の速さが異常で同僚としていたら心強いプログラミング能力** </br>+ 長期記憶も短期記憶も**完全な記憶喪失**
- 毎回指示待ちで丁寧に状況説明が必要だが、理解すれば驚異的な成果
- 「暗黙の了解」が通じない → 明示的な指示の重要性

---

## Claude Code みたいなやつとの付き合い方

### 効果的なコミュニケーション方法
```bash
# ❌ 悪い例（暗黙の期待）
"バグを直して"

# ✅ 良い例（明示的な指示）  
"src/auth.rs の認証処理で panic! が発生しています。
エラーログを確認し、thiserror を使って適切なエラー型に変換し、
テストも追加してください"
```

---
## Claude Code みたいなやつとの付き合い方

### 効果的なコミュニケーション方法
```bash
# ❌ 悪い例（記憶への期待）
"覚えていて"

# ✅ 良い例（記憶は諦めてメモを取らせる）
"task.mdにタスクの内容を記載してください"
```

---

### 1. プロジェクト設定の最適化

#### CLAUDE.mdの戦略的活用
```markdown
# ./CLAUDE.md プロジェクトルートに配置,再帰的に見てくれるので
# コーディング規約
NEVER: unwrap()の多用を避ける
YOU MUST: すべてのResult<T, E>を適切にハンドリング
IMPORTANT: カスタムエラー型でエラーコンテキストを明確化

# Rust固有の規約
- エラーハンドリング: thiserrorとanyhowを活用
- 非同期処理: tokioを基本とする
- ログ出力: tracing crateを使用

# 階層化
./CLAUDE.md              # 全体設定
./src/web/CLAUDE.md      # Webサーバー固有
./src/cli/CLAUDE.md      # CLI固有
```

---

### 2. ツールチェーンの最適化

#### 開発効率を上げる基本原則
<div style="font-size: 0.8em;">

- **高速フィードバック**: コンパイル・テストの高速化
- **明確なエラーメッセージ**: AIが理解しやすい診断情報
- **統一されたツールチェーン**: 一貫したコマンド体系
- **自動化可能な品質チェック**: 繰り返し作業の削減

</div>

#### 開発効率を上げるMakefile設定
<div style="font-size: 0.8em;">

```makefile
dev:        # cargo watch -x run でホットリロード
test:       # cargo test --all-features
lint:       # cargo clippy -- -D warnings  
format:     # cargo fmt --all
check:      # cargo check --all-targets
release:    # cargo build --release
```

</div>

---

### 3. 段階的アプローチの重要性

#### ❌ 失敗パターン: 一括指示
```
「REST APIを完全実装して」
→ エラーハンドリング不統一、unwrap()多用、テスト不足
```

#### ✅ 成功パターン: 分割指示(分割をさせてもよい)
```
Step 1: エラー型定義・thiserror適用確認
Step 2: APIエンドポイント設計・OpenAPI仕様準拠
Step 3: リクエスト/レスポンス構造体・serde活用
Step 4: ビジネスロジック・Result型での適切なエラー伝播
Step 5: テスト作成・tokio-testでの非同期テスト
```

---


### 4. 並列開発の活用

#### Git Worktreeで同時開発
```bash
# メインプロジェクト
git worktree add ../project-feature-a feature-a
git worktree add ../project-feature-b feature-b

# 別々のClaude Codeインスタンスで並行開発
cd ../project-feature-a && claude-code "axum REST API実装"
cd ../project-feature-b && claude-code "tokio CLI ツール実装"
```

---

### 4. 並列開発の活用

#### Taskツールでサブタスク分割

ツールやCLAUDE.md を活用して、複雑な実装を小さなタスクに分割し、並列で進めることが可能です。Claude Codeでは以前にやっていたロールの設定とかはあまり意味がないのでタスクを淡々とやらせたほうがいい。

```
> 4つの観点でRustプロジェクト分析

Task(Performance Expert)      ⏺ 並列実行
Task(Security Expert)         ⏺ 並列実行  
Task(Error Handling Expert)   ⏺ 並列実行
Task(Testing Expert)          ⏺ 並列実行
```

---


# ガードレールの設計

AI開発において重要なのは、単なる開発速度の向上ではなく、**品質を担保しながら高速開発を実現する仕組み**です。

Claude Codeは確かに高速でコードを生成しますが、適切なガードレールがなければ、技術的負債やセキュリティリスクが蓄積されてしまいます。

実装方法は様々ありますが、今日は特に効果的な3つのアプローチを紹介します。

---

### 1. 自動化されたチェック
Claude Codeは高速でコードを生成しますが、コーディング規約やベストプラクティスの遵守は保証されません。自動化されたチェックにより、生成されたコードが一定の品質基準を満たすことを機械的に担保できます。
```toml
# Cargo.toml
[workspace.lints.clippy]
all = "deny"
pedantic = "warn"
nursery = "warn"

# .cargo/config.toml
[alias]
check-all = "check --all-targets --all-features"
test-all = "test --all-features"
lint = "clippy -- -D warnings"
fmt-check = "fmt --all -- --check"
```


---

### 2. Git Hooks / Huskyでの制限

AIが生成したコードを無検証でコミットすることを防ぎます。とてもこの実行自体も忘れてしまうことがあります。なので、機械的に実行させましょう。コミット前の自動チェックにより、問題のあるコードがリポジトリに混入することを水際で阻止し、チーム全体の開発品質を維持できます。
```bash
# .husky/pre-commit
cargo fmt --all -- --check
cargo clippy -- -D warnings
cargo test --all-features
```


---


#### 3. コンテナでの環境隔離

Claude Codeは`--dangerously-skip-permissions`強力な権限でシステムにアクセスできるため、意図しないファイル変更やセキュリティリスクが生じる可能性があります。コンテナ環境での隔離により、ホストシステムを保護しながら安全にAI開発を進められます。

```bash
cd /path/to/repository
npx @anthropic-ai/claude-code mcp add container-use -- <full path to cu command> stdio
```


#### コンテナ使用時の制約設定例(CLAUDE.md ファイル追記)

```
すべてのファイル、コード、シェル操作には必ずEnvironmentのみを使用してください。簡単な操作や一般的なリクエストであっても例外はありません。

environment_run_cmdツールでgit cliをインストールしたり使用したりしないでください。すべての環境ツールがgit操作を処理します。".git"を自分で変更すると、環境の整合性が損なわれます。

`git checkout <branch_name>`を使用して作業を確認する方法をユーザーに必ず伝えてください。これを怠ると、他の人があなたの作業にアクセスできなくなります。
```

---

### 🔄 Claude Codeを使った開発プロセスの変化


プログラミング言語それ自体を書く技術よりも、要求の認識、現象の分析、問題の特定、そして解決策を的確に指示する**言語化能力**がより重要になっていくのかなって思いました。しかし、**技術的な手札が何もなければAIに的確な指示を出すことは難しい**ので、やはり**プログラミングの基礎知識は依然として必要**です。

<div style="display: flex; justify-content: space-between; gap: 40px;">

<div style="flex: 1;">

#### Before: 「実装中心」の開発
- コードを書いてもらうことが大部分
- デバッグで時間を消費していた  
- 単発的な作業

</div>

<div style="flex: 1;">

#### After: 「設計・指示中心」の開発
- AIに的確な指示を出す時間が中心
- 品質保証の自動化
- システム的な改善

</div>

</div>

---

## まとめ


### プロジェクトに導入する順序
1. **CLAUDE.md作成** - プロジェクト規約・エラーハンドリングパターンの文書化
2. **開発ツール最適化** - 高速チェック・テスト・リントの設定  
3. **ガードレール設置** - lint、format、セキュリティチェックの自動化
4. **段階的タスク分解** - 複雑な実装の構造化
5. **並列開発の活用** - worktree、Task toolでのモジュール分割開発

---

## 参考文献

### 公式ドキュメント
- [Claude Code 公式サイト](https://www.anthropic.com/claude-code)
- [Claude Code ドキュメント](https://docs.anthropic.com/en/docs/claude-code/overview)
- [Claude Code Best Practices](https://www.anthropic.com/engineering/claude-code-best-practices)

---

## 参考文献

### 実践事例・解説記事
- [How I Use Claude Code](https://spiess.dev/blog/how-i-use-claude-code)
- [LLMの制約を味方にする開発術](https://zenn.dev/hidenorigoto/articles/38b22a2ccbeac6)
- [Claude Code版Orchestratorで複雑なタスクをステップ実行する](https://zenn.dev/mizchi/articles/claude-code-orchestrator)
- [Agentic Coding Recommendations](https://lucumr.pocoo.org/2025/6/12/agentic-coding/)
- [Claude Codeに保守しやすいコードを書いてもらうための事前準備](https://www.memory-lovers.blog/entry/2025/06/12/074355)
- [Claude Codeによる技術的特異点を見届けろ](https://zenn.dev/mizchi/articles/claude-code-singularity-point)

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
