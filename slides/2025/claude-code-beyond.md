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

3-shakeは一緒にSRE界隈を盛り上げてくれる<strong>仲間を大募集中</strong>です！
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

- <strong>「コード生成器」→「開発パートナー」</strong>
  - 単体機能の提案から、プロジェクト全体の理解・実装まで(限りなく4に近い性能を持ち始めている)
  - エディタの外で動作、ターミナルネイティブな操作

- <strong>自律性の飛躍的向上</strong>
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

## Claude Codeが変えるエンジニアの役割

### 「コードを書く」から「意図を伝える」へ

<div style="margin-top: 30px; font-size: 1.1em;">

今まで私たちエンジニアは、</br>
<strong>「何を作りたいか」</strong>を考え、</br>
<strong>「どう作るか」</strong>を実装していた

</div>

<div style="text-align: center; margin-top: 40px; font-size: 1.2em;">

Claude Codeは<strong>「どう作るか」を自動化</strong>する</br>
私たちは<strong>「なぜ作るか」に集中</strong>できる

</div>

---

## 実は私たちが既にやっていること

### エンジニアリングの日常

<div style="margin-top: 30px; font-size: 1.05em;">

🔄 <strong>要件定義を読んでコードに落とす</strong>
- 「ユーザーが求めているもの」から「具体的な実装」へ

🔄 <strong>コードを読んで設計を理解する</strong>  
- 「具体的な実装」から「意図や目的」を読み取る

</div>

<div style="text-align: center; margin-top: 40px; font-size: 1.1em;">

これが<strong>「具体と抽象の往復」</strong></br>
Claude Codeはこの往復を<strong>高速化</strong>するツール

</div>

---

## なぜClaude Codeが「使えない」と感じるのか

### 1️⃣ 抽象度のミスマッチ

```bash
# ❌ 悪い例
"いい感じのWebアプリ作って"

# ✅ 良い例
"認証機能付きのタスク管理システムで、
優先度による並び替えとフィルタリング機能を実装"
```

<div style="margin-top: 30px; font-size: 0.9em;">
上司の「いい感じにしといて」と同じように、</br>
AIに対しても適切な抽象度での指示が必要
</div>

---

## なぜClaude Codeが「使えない」と感じるのか

### 2️⃣ 具体化の方向性を示していない

#### 抽象から具体への選択肢

<div style="font-size: 1.1em; margin-top: 30px;">

<strong>「ユーザー管理」という抽象</strong>

- メール認証？
- ソーシャルログイン？  
- 多要素認証？

</div>

<div style="text-align: center; margin-top: 30px;">
AIは「ある一つの具体」を選ぶが、</br>
それがあなたの期待と一致するとは限らない
</div>

---

## なぜClaude Codeが「使えない」と感じるのか

### 3️⃣ 往復の欠如

#### 一度の指示で完璧を求めるのではなく

<div style="font-size: 1.1em; margin-top: 30px;">

1. 初期の抽象的な指示</br>
2. 生成された具体（コード）の確認</br>
3. より精緻な抽象への昇華</br>
4. 改善された具体化

</div>

<div style="text-align: center; margin-top: 40px; font-size: 1.1em;">
この往復運動を繰り返すことが重要
</div>

---

## 「自分でやった方が早い」の落とし穴

<div style="text-align: center; font-size: 1.1em; margin-top: 30px;">

これは<strong>具体に囚われすぎている</strong>状態

</div>

### 自問すべきこと

<div style="margin-top: 30px;">

- その実装から抽象を導き出せているか？
- 次に類似の問題に直面した時、より良い設計ができるか？
- チームメンバーに説明できる抽象的な概念として整理できているか？

</div>

---

## 実装スキルから設計スキルへのシフト

### 価値の源泉が変化している

<div style="display: flex; gap: 40px; align-items: center; margin-top: 40px;">

<div style="flex: 1; text-align: center;">

<strong>従来</strong>

実装の巧拙が</br>
エンジニアの価値を決めた

</div>

<div style="font-size: 2em;">
→
</div>

<div style="flex: 1; text-align: center;">

<strong>これから</strong>

設計の良し悪しが</br>
成果の質を決める

</div>

</div>

<div style="text-align: center; margin-top: 40px; font-size: 0.9em;">
実装はClaude Codeが担当、設計は人間の仕事
</div>

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

## Claude Codeとの効果的な連携

### 特性を理解した上での活用

Claude Codeは<strong>圧倒的な実装スピード</strong>を持つ一方で、
<strong>コンテキストの保持</strong>や<strong>暗黙の了解</strong>には対応していない
暗黙知を形式知に変換し、明示的な指示を与えることが重要です。

<div style="margin-top: 30px;">

#### この特性を踏まえた3つのポイント

1️⃣ <strong>明示的な指示</strong> - 曖昧さを排除する
2️⃣ <strong>タスク管理</strong> - TodoWriteで状態を保存
3️⃣ <strong>コンテキスト制御</strong> - 定期的な/clearで最適化

</div>

---

## 1️⃣ 明示的な指示の重要性

```bash
# ❌ 曖昧な指示
"バグを直して"

# ✅ 具体的な指示  
"src/auth.rs の認証処理で panic! が発生しています。
エラーログを確認し、thiserror を使って適切なエラー型に変換し、
テストも追加してください"
```

<div style="margin-top: 30px; font-size: 0.9em;">
💡 ファイル名、ライブラリ名、エラーメッセージなどを具体的に
</div>

---

## 2️⃣ タスク管理の徹底

```bash
# ❌ 一時的な指示
"あとでリファクタリングもやって"

# ✅ TodoWriteで管理
"TodoWriteツールで'リファクタリング'を
低優先度タスクとして追加してください"
```

<div style="margin-top: 30px; font-size: 0.9em;">
💡 複雑なタスクは必ずTodoに記録し、進捗を可視化
</div>

---

## 3️⃣ コンテキストの最適化

```bash
# コンテキストが大きくなりすぎたら
/clear

# セッションを分割して再開
claude --continue
```

<div style="margin-top: 30px; font-size: 0.9em;">
💡 パフォーマンス維持のため、定期的なクリアが効果的
</div>

---

# 「なぜ」を問う力を鍛える実践方法

---

## 「なぜ」の習慣化

### コードの背後にある意図を言語化する

```rust
// ❌ 「何を」しているかだけ
fn process_data(input: Vec<String>) -> Vec<String> {
    input.iter().filter(|s| !s.is_empty()).collect()
}

// ✅ 「なぜ」そうするのかを明確に
// 空文字列を除外する理由:
// 1. データベースインポート時のNull値対策
// 2. 後続処理でのエラー防止
// 3. UI表示時のレイアウト崩れ回避
fn sanitize_import_data(raw_data: Vec<String>) -> Vec<String> {
    raw_data.iter().filter(|s| !s.is_empty()).collect()
}
```

---

## Claude Codeで「なぜ」を明確化する訓練

### 意図の言語化サイクル

<div style="font-size: 1.05em; margin-top: 30px;">

1. <strong>要求の背景を説明</strong>
   - 「○○機能を作って」→ 「○○の問題を解決するために」

2. <strong>生成コードの意図を確認</strong>
   - 「この実装は、つまり○○を意図している？」

3. <strong>代替アプローチの提案</strong>
   - 「別の観点から、△△でも解決できる？」

4. <strong>トレードオフの明示化</strong>
   - 「性能と保守性、どちらを優先すべき？」

</div>

<div style="text-align: center; margin-top: 30px; font-size: 1.1em;">
<strong>「何を作るか」ではなく「なぜ作るか」を伝える習慣</strong>
</div>

---

# 効率化のTips & トリック集

---

### 権限設定で高速化
```bash
# 権限チェックをスキップ（開発環境推奨）,エイリアスを設定(alias c="claude")もおすすめ
claude --dangerously-skip-permissions
alias yolo="claude --dangerously-skip-permissions"
```

未来のあなたに殴られたくないのでしっかり言及しておくと`--dangerously-skip-permissions`は開発環境でのみ使うことを強く推奨します。

---

### 思考力を制御する方法

この辺は最近日本語にも対応してきたので、英語でなくても大丈夫ですが辞書登録してしまったので英語でやってます。

```bash
# 軽い思考（4,000トークン）
"think about this problem"

# 深い思考（12,000トークン） 
"think harder about the architecture"

# 超詳細思考（32,000トークン）
"ultrathink this complex refactoring"
```

---

### ショートカット & セッション管理

<div style="display: flex; gap: 40px;">
<div style="flex: 1;">

#### キーボード操作
```bash
# ファイル・画像の操作
Ctrl + j        # 改行を入力
Ctrl + v        # クリップボードから画像貼り付け
@/path/to/file  # ファイルを指定して読み込み

# モード切り替え・ナビゲーション
Shift + Tab     # Plan Modeへ切り替え
Shift + Tab×2   # プランニングモード
Escape × 2      # 前のメッセージに戻る
```

</div>
<div style="flex: 1;">

#### セッション管理
```bash
# セッションコマンド
/clear          # コンテキストをクリア
/resume         # セッション一覧・再開
/continue       # 直前のセッションに戻る

# CLIオプション
claude --resume    # 過去のセッション選択
claude --continue  # 直前のセッション継続
```

</div>
</div>

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

<strong>原則</strong>: 必要最小限での利用
- <strong>基本操作はClaude Code標準機能で十分</strong>
- MCPは「どうしても標準機能では難しい場合」のみ、パスごとに設定する
- 例：[playwright-mcp](https://github.com/microsoft/playwright-mcp) でのブラウザ自動化

### MCP使用時の注意点
- パフォーマンスオーバーヘッドを考慮
- セキュリティリスクの評価


<div style="font-size: 0.8em;">
基本的には後述の <code>.claude/commands</code>で対応可能な場合は、そちらを優先することを推奨します
</div>

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

<strong>効果</strong>: 手動30分の作業 → 自動5分で完了(MCPを立てるとリソースも喰うので⋯)

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

<strong>効果</strong>: AIが自動的にメール確認→リンククリック→認証完了までを実行可能

---

## ログ設計の戦略

### ログの「ちょうど良い」バランスも変わるのではないか？
- <strong>情報不足</strong>: AIが問題を理解できない
- <strong>情報過多</strong>: トークン消費量増加、推論速度低下  
- <strong>理想</strong>: 問題解決に必要な情報のみを適切なタイミングで簡潔に

デバッグモードでは、AIが理解しやすいように、必要な情報を自動的に出力することが重要になりそうです。
良いログ、悪いログの基準も変わる可能性があります。

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

- <strong>高速フィードバック</strong>: コンパイル・テストの高速化
- <strong>明確なエラーメッセージ</strong>: AIが理解しやすい診断情報
- <strong>統一されたツールチェーン</strong>: 一貫したコマンド体系
- <strong>自動化可能な品質チェック</strong>: 繰り返し作業の削減

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


### 4. 品質を高める並列開発

#### 複数アプローチの同時検証
```bash
# メインプロジェクト
git worktree add ../project-feature-a feature-a
git worktree add ../project-feature-b feature-b

# 別々のClaude Codeインスタンスで並行開発
cd ../project-feature-a && claude-code "axum REST API実装"
cd ../project-feature-b && claude-code "tokio CLI ツール実装"
```

---

### 4. 品質検証の並列化

#### 複数観点からのコード評価

<div style="font-size: 0.95em;">

ツールやCLAUDE.md を活用して、<strong>同じ機能を複数のアプローチで実装</strong>し、</br>
最も良い品質のコードを選択することが可能です。

</div>

```
> 同じ機能を4つのアプローチで実装

Task(パフォーマンス重視実装)    ⏺ 並列実行
Task(メンテナンス重視実装)    ⏺ 並列実行  
Task(セキュリティ重視実装)      ⏺ 並列実行
Task(テスト容易性重視実装)    ⏺ 並列実行
```

---


# 品質を保証するガードレール

### 高速開発と高品質の両立

<div style="text-align: center; margin-top: 30px; font-size: 1.1em;">

<strong>スピードを活かして、より良いコードを</strong>

</div>

Claude Codeの高速性は、単に「早く作る」ためのものではありません。</br>
<strong>「何度も試して、最良を選ぶ」</strong>ためのツールです。

ただし、適切なガードレールなしでは、</br>
技術的負債やセキュリティリスクが蓄積されてしまいます。

ここでは、特に効果的な3つのアプローチを紹介します。

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

## 🔄 開発プロセスの根本的な変化

### エンジニアリングの価値軸が根底から変わった

<div style="text-align: center; margin-top: 30px; font-size: 1.3em;">

<strong>「どう作るか」の時代は終わった</strong></br>
<strong>「なぜ作るか」の時代が始まった</strong>

</div>

<div style="margin-top: 40px; font-size: 1.1em;">

- <strong>実装の巧みさ</strong>で差がつく時代は過去に
- <strong>意図の明確さ</strong>で成果が決まる時代へ
- Claude Codeは<strong>実装の奴隷</strong>から<strong>思考の解放</strong>をもたらした

</div>

---

## 開発の「速度」が変わると「質」も変わる

<div style="display: flex; justify-content: space-between; gap: 40px; margin-top: 40px;">

<div style="flex: 1;">

### 🚶 従来: 1週間かけて1機能

<div style="margin-top: 30px; font-size: 0.95em;">

- 実装に時間を取られる
- 設計の見直しは困難
- <strong>「動けばいい」</strong>で妥協
- フィードバックサイクルが遅い

</div>

</div>

<div style="flex: 1;">

### 🚀 Claude Code: 1日で10パターン

<div style="margin-top: 30px; font-size: 0.95em;">

- 実装は瞬時に完了
- 複数の設計を比較検討
- <strong>「最適解は何か」</strong>を追求
- 高速PDCAで品質向上

</div>

</div>

</div>

<div style="text-align: center; margin-top: 40px; font-size: 1.1em;">
<strong>量が質に転化する</strong> - これがClaude Code時代の開発
</div>

---

## 「早いコード」ではなく「良いコード」を

### Claude Codeの真の価値は速度ではない

<div style="margin-top: 30px; font-size: 1.1em;">

<div style="text-align: center; margin-bottom: 30px;">
<strong>重要なのは「早く書く」ことではなく</strong></br>
<strong>「何度も書き直せる」こと</strong>
</div>

#### 🎯 質の高いコードが生まれる理由

1. <strong>試行回数の増加</strong> - 10倍のアプローチを試せる
2. <strong>比較検討の容易さ</strong> - 複数の実装を並べて評価
3. <strong>リファクタリングの低コスト化</strong> - 気軽に最適化
4. <strong>ベストプラクティスの適用</strong> - AIが最新パターンを提案

</div>

---

## 新しい競争優位性の源泉

### 「実装力」から「構想力」へのパラダイムシフト

<div style="margin-top: 40px;">

#### 💡 真の差別化要因

1. <strong>問題発見力</strong> - そもそも何を解決すべきか
2. <strong>アーキテクチャ設計力</strong> - 全体最適を描く力
3. <strong>意図の言語化力</strong> - AIと協働する対話力
4. <strong>品質基準の設定力</strong> - 「良い」を定義する力

</div>

<div style="text-align: center; margin-top: 40px; font-size: 1.2em; color: #4AADDD;">

<strong>コードを書く能力ではなく、</strong>
<strong>コードに込める意図の質で勝負する時代</strong>

</div>

---

## エンジニアリングの新たな地平

### Claude Codeがもたらした「創造的破壊」

<div style="margin-top: 30px; font-size: 1.1em;">

<div style="display: flex; gap: 40px; margin-top: 20px;">
<div style="flex: 1;">

<strong>破壊されたもの</strong>
- 実装速度での差別化
- 暗記型の知識優位性
- 手作業による最適化

</div>
<div style="flex: 1;">

<strong>創造されたもの</strong>
- 設計思想での差別化
- 概念理解の優位性
- 試行錯誤による最適化

</div>
</div>

</div>

<div style="text-align: center; margin-top: 40px; font-size: 1.2em;">

<strong>私たちは今、エンジニアリングの再定義の瞬間に立っている</strong>

</div>

---

## 今すぐ始められる3つのアクション

### Claude Code時代を生き抜くために

<div style="margin-top: 30px; font-size: 1.1em;">

1. <strong>今日から</strong>: 書いたコードの「なぜ」を3行で説明する習慣
2. <strong>今週から</strong>: Claude Codeで1つの機能を3パターン実装してみる
3. <strong>今月から</strong>: 設計の意図をドキュメント化し、チームで共有

</div>

<div style="text-align: center; margin-top: 50px; font-size: 1.3em; color: #4AADDD;">

<strong>実装の時代は終わった。設計の時代が始まった。</strong></br>
<strong>あなたはどちら側に立つ？</strong>

</div>

---

## 参考文献

### 公式ドキュメント
- [Claude Code 公式サイト](https://www.anthropic.com/claude-code)
- [Claude Code ドキュメント](https://docs.anthropic.com/en/docs/claude-code/overview)
- [Claude Code Best Practices](https://www.anthropic.com/engineering/claude-code-best-practices)

---

## 参考文献

### 実践事例・解説記事
- [抽象化をするということ - 具体と抽象の往復を身につける](https://speakerdeck.com/soudai/abstraction-and-concretization)
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
