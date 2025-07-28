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

# <span style="font-size: 0.7em;">Webアプリケーションに</br>オブザーバビリティを実装する</br>Rust入門ガイド</span>


</div>

<div class="author-info" style="text-align: left; padding-left: 0; text-indent: 0;">
2025/7/29 Rustの現場に学ぶ </br>
〜Webアプリの裏側からOS、人工衛星まで〜</br>
@nwiizo 15min #rust_findy
</div>

---

<!-- _backgroundColor: white -->

![bg left:30% fit](../../assets/images/nwiizo_icon.jpg)
## nwiizo

<div class="info-box">
株式会社スリーシェイクで
プロのソフトウェアエンジニアをやっているものです
格闘技、読書、グラビアが趣味でよく本を紹介しています
</div>

<p style="margin-top: 30px !important;">人生を通して"<strong>運動、睡眠、読書</strong>"をきちんとやりたい</p>

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

## 今日のアジェンダ

### Webアプリケーションにオブザーバビリティを実装する

<div style="margin-top: 25px; font-size: 0.95em;">

1. <strong>オブザーバビリティの三本柱</strong>
2. <strong>Rustでの基本実装</strong>
3. <strong>構造化ログとトレーシング</strong> 
4. <strong>メトリクスの実装</strong> 
5. <strong>測定の落とし穴と戦略</strong>
6. <strong>2025年のベストプラクティス</strong>

</div>


---

## オブザーバビリティとは

### CNCFの定義から理解する
<div style="display: flex; gap: 20px; align-items: center;">
<div style="flex: 1; font-size: 0.85em;">

制御理論において、「オブザーバビリティとは、システムの外部出力の知識から、そのシステムの内部状態をどれだけ推測できるかの尺度」という概念から拝借している

<div style="margin-top: 15px; font-size: 0.8em;">

**CNCF Observability Whitepaper v1.0より**
- 2023年10月リリース
- TAG Observabilityが主導
- コミュニティ主導の包括的なガイド

</div>
</div>
<div style="flex: 1;">
<img src="../../assets/images/2025/getting-started-rust-observability/Observability Whitepaper.png" alt="CNCF Observability Whitepaper" style="width: 100%; max-width: 350px;">
<div style="font-size: 0.6em; text-align: center; margin-top: 5px;">
<a href="https://github.com/cncf/tag-observability">https://github.com/cncf/tag-observability</a> より引用
</div>
</div>
</div>

<div style="text-align: center; margin-top: 15px; font-size: 0.8em;">
💡 外部から観測可能な出力を通じて、システムの内部状態を理解する
</div>

---

## オブザーバビリティの三本柱

### CNCFが定義するPrimary Signals

<div style="display: flex; gap: 30px; align-items: center;">
<div style="flex: 1;">

<div style="font-size: 0.9em; margin-bottom: 15px;">
<strong>ログ (Logs)</strong>: 何が起きたかの記録<br><br>
<strong>メトリクス (Metrics)</strong>: どれくらいの量か<br><br>
<strong>トレーシング (Traces)</strong>: どのように流れたか
</div>

<div style="font-size: 0.8em; margin-top: 15px;">
💡 三本柱を組み合わせて、システムの振る舞いを理解する
</div>

</div>
<div style="flex: 1;">
<img src="../../assets/images/2025/getting-started-rust-observability/Primary Signals Whitepaper.png" alt="Primary Signals from CNCF Whitepaper" style="width: 100%; max-width: 400px;">
<div style="font-size: 0.6em; text-align: center; margin-top: 5px;">
<a href="https://github.com/cncf/tag-observability">https://github.com/cncf/tag-observability</a> より引用
</div>
</div>
</div>

---

## シグナルの相関関係

### オブザーバビリティの真価は相関分析にある

<div style="display: flex; gap: 30px; align-items: center;">
<div style="flex: 1;">

<div style="font-size: 0.85em;">
単一のシグナルでは見えない問題も、<strong>複数のシグナルを相関させる</strong>ことで原因が明らかになる

<div style="font-size: 0.8em; margin-top: 10px;">

**例**：
- トレースでレイテンシの増加を発見
- メトリクスでCPU使用率の急上昇を確認
- ログで特定のエラーパターンを特定

</div>
</div>

</div>
<div style="flex: 1;">
<img src="../../assets/images/2025/getting-started-rust-observability/Correlation Whitepaper.png" alt="Signal Correlation from CNCF Whitepaper" style="width: 100%; max-width: 400px;">
<div style="font-size: 0.6em; text-align: center; margin-top: 5px;">
<a href="https://github.com/cncf/tag-observability">https://github.com/cncf/tag-observability</a> より引用
</div>
</div>
</div>

---

## 実装時のシグナル相関

### トラブルシューティングでの活用例

<div style="display: flex; gap: 30px; align-items: center;">
<div style="flex: 1;">

<div style="font-size: 0.85em;">
<strong>シナリオ</strong>: APIレスポンスの遅延

<div style="font-size: 0.8em; margin-top: 10px;">

1. **トレース**で遅いリクエストを特定
2. **メトリクス**でその時間帯のリソース使用状況を確認
3. **ログ**で具体的なエラーや警告を調査

→ DB接続プールの枯渇が原因と判明

</div>
</div>

</div>
<div style="flex: 1;">
<img src="../../assets/images/2025/getting-started-rust-observability/Observability Whitepaper Correlation.png" alt="Observability Correlation" style="width: 100%; max-width: 400px;">
<div style="font-size: 0.6em; text-align: center; margin-top: 5px;">
<a href="https://github.com/cncf/tag-observability">https://github.com/cncf/tag-observability</a> より引用
</div>
</div>
</div>

---

## ログの実装

### log crateを使った基本的なログ実装

<div style="font-size: 0.75em;">

```rust
use log::{info, warn, error, debug};

// 初期化（env_loggerの場合）
fn main() {
    env_logger::init();  // RUST_LOG環境変数で制御
    
    log::error!("This is an error!");
    log::info!("This is info!");
    log::warn!("This is a warning!");
}

// 実行方法
// $ RUST_LOG=info cargo run
```

<div style="font-size: 0.8em; margin-top: 12px;">
💡 もっとも標準的なログで困ったらこれを使っていれば良いと思います<br>
<code>log</code>がインターフェース役で、実際の出力は<code>env_logger</code>などが担当。<br>
ログレベルは環境変数で制御できるので、開発と本番で使い分けが簡単。
</div>

</div>

---

## より高度なログ：構造化とファイル出力

### 2つのアプローチ

<div style="display: flex; gap: 20px; font-size: 0.75em;">
<div style="flex: 1;">

**log4rs - 設定ファイルベース**

<div style="font-size: 0.85em; margin-bottom: 8px;">
Javaのlog4jを知ってる人なら「あー、あれね」って感じ。<br>
YAMLで細かく設定できるから、運用チームが喜ぶタイプ。<br>
本番環境でログレベルを変えたい時とかに便利。
</div>

```yaml
# log4rs.yaml
appenders:
  stdout:
    kind: console
    encoder: { kind: json }
  file:
    kind: file
    path: "app.log"
root:
  level: info
  appenders: [stdout, file]
```
</div>
<div style="flex: 1;">

**tracing-subscriber - コードベース**

<div style="font-size: 0.85em; margin-bottom: 8px;">
Rustらしい「型で守る」アプローチです。<br>
レイヤーを重ねてカスタマイズできるのが特徴的です。<br>
非同期処理のログを追うならこちらが圧倒的に便利です。
</div>

```rust
use tracing_subscriber::{
    fmt::writer::MakeWriterExt,
    layer::SubscriberExt
};

let file_appender = 
    tracing_appender::rolling::daily(
        "logs", "app.log"
    );
// 非同期・非ブロッキング出力
```
</div>
</div>

---

## HTTPリクエストのログ実装

### Warpのカスタムログ機能でリクエスト情報を自動記録

<div style="font-size: 0.65em;">
<stong>フレームワーク側でロギングの機構を用意していることも多いので機能と限界を知っておくことが大切です</strong><br>
<div style="font-size: 0.7em; margin-bottom: 8px;">
「APIが遅い」と言われた時、これがないと原因特定が困難になります。レスポンスタイムとステータスコードは最低限記録しておこう。<br>
</div>
<div style="font-size: 0.85em; margin-bottom: 12px;">

```rust
let log = warp::log::custom(|info| {
    log::info!(
        "{} {} {} {:?} from {}",
        info.method(),
        info.path(),
        info.status(),
        info.elapsed(),
        info.remote_addr().unwrap()
    );
});

let routes = get_questions
    .or(update_question)
    .or(add_question)
    .with(cors)
    .with(log)  // ログフィルタを追加
    .recover(return_error);
```

</div>

<div style="font-size: 0.85em; margin-top: 8px;">
💡 メソッド、パス、ステータス、処理時間、クライアントIPを構造化して記録<br>
出力例: `GET /questions 200 OK 254.528µs from 127.0.0.1:51439`
</div>

</div>

---

## 構造化ログ：機械可読性の向上

### JSON形式での出力例

<div style="font-size: 0.7em;">

```json
{
  "time": "2024-03-15T10:30:45.123Z",
  "message": "GET /questions 200 OK 254.528µs from 127.0.0.1:51439",
  "module_path": "practical_rust_book",
  "file": "src/main.rs",
  "line": 20,
  "level": "INFO",
  "target": "practical_rust_book",
  "thread": "tokio-runtime-worker",
  "thread_id": 123145515622400,
  "request_id": "5da2bc97-e960-4984-be8a-d75be4728119"
}
```

<div style="font-size: 0.75em; margin-top: 12px;">
💡 JSONで出力さえしていれば、どんなログ収集サービスでも助かる。CloudWatch Logs、Datadog、Elasticsearch、どこでも対応可能です。<br>
構造化ログは「クラウド時代の当たり前」です。
</div>

</div>

---

## メトリクスの実装：2つのアプローチ

### prometheus vs metrics クレート

<div style="display: flex; gap: 20px; font-size: 0.65em;">
<div style="flex: 1;">

**prometheus クレート**

<div style="font-size: 0.85em; margin-bottom: 6px;">
もともとGoで書かれたPrometheusの正統派Rust版です。<br>
起動時にすべてのメトリクスを定義する必要があるけど、<br>
その分タイプセーフで間違いが起きにくい設計になっています。
</div>

```rust
use prometheus::{
    IntCounter, Registry, 
    Encoder, TextEncoder
};
use once_cell::sync::Lazy;

static HTTP_REQUESTS: Lazy<IntCounter> = 
    Lazy::new(|| {
        IntCounter::new(
            "http_requests_total", 
            "Total HTTP requests"
        ).unwrap()
    });

// 使用
HTTP_REQUESTS.inc();
```
</div>
<div style="flex: 1;">

**metrics クレート**

<div style="font-size: 0.85em; margin-bottom: 6px;">
logクレートと同じ思想で作られた新しいアプローチです。<br>
実行時に動的にメトリクスを作れるので柔軟性が高くなっています。<br>
バックエンドを自由に選べます（Prometheus、StatsD等）。
</div>

```rust
use metrics::{counter, histogram};

// よりシンプルなAPI
counter!("http_requests_total").increment(1);

histogram!("request_duration_seconds")
    .record(duration.as_secs_f64());

// metrics-prometheusで
// Prometheus形式にエクスポート
```
</div>
</div>

---

## トレーシング：非同期アプリケーションの可視化

### OpenTelemetryの基本概念

<div style="display: flex; justify-content: space-around; margin: 20px 0;">
<div style="text-align: center; flex: 1;">
<div style="font-size: 2em;">📏</div>
<h3 style="font-size: 0.8em;">Span</h3>
<p style="font-size: 0.7em;">リクエスト内の各処理の情報<br>（処理名、実行時間、ステータス等）</p>
</div>
<div style="text-align: center; flex: 1;">
<div style="font-size: 2em;">🔗</div>
<h3 style="font-size: 0.8em;">Trace</h3>
<p style="font-size: 0.7em;">あるリクエストに対する<br>Spanのまとまり</p>
</div>
<div style="text-align: center; flex: 1;">
<div style="font-size: 2em;">📡</div>
<h3 style="font-size: 0.8em;">Context</h3>
<p style="font-size: 0.7em;">Span間の親子関係や<br>リクエストIDの伝播</p>
</div>
</div>

<div style="text-align: center; font-size: 0.75em;">
💡 1つのリクエスト（Trace）は複数の処理（Span）から構成される<br>
各Spanが親子関係を持つことで、処理の流れが可視化される！
</div>

---

## なぜトレーシングが必要なのか

### 並行処理とマイクロサービスの複雑性に対処

<div style="font-size: 0.75em;">

**従来のログの問題点**
```rust
// 複数のリクエストが同時に処理されると...
[2025-01-28 10:00:01] INFO: リクエスト開始
[2025-01-28 10:00:01] INFO: リクエスト開始  // どっちがどっち？
[2025-01-28 10:00:02] ERROR: DB接続エラー    // どのリクエストの？
```

**Tracingで解決**
```rust
// 各リクエストにIDが自動付与される
[span_id=abc123] INFO: リクエスト開始 user_id=42
[span_id=def456] INFO: リクエスト開始 user_id=99
[span_id=abc123] ERROR: DB接続エラー  // user_id=42のリクエストだ！
```

<div style="text-align: center; margin-top: 15px; font-size: 0.8em;">
🎯 非同期処理でもリクエストの流れを追跡できる<br>
APIゲートウェイ → 認証サービス → ビジネスロジック → DBと<br>
複数のマイクロサービスを横断する処理も一貫して追える！
</div>

</div>

---

## Spanの概念を視覚的に理解する

### 分散トレーシングの実際の姿

<div style="display: flex; gap: 30px; align-items: center;">
<div style="flex: 1;">
<img src="../../assets/images/2025/getting-started-rust-observability/spans.png" alt="Distributed Tracing Spans" style="width: 100%;">
<div style="font-size: 0.65em; text-align: center; margin-top: 5px;">
画像引用: <a href="https://lightstep.com/opentelemetry/spans">https://lightstep.com/opentelemetry/spans</a>
</div>
</div>

<div style="flex: 1; font-size: 0.8em;">


🔍 <strong>親子関係</strong>
各Spanが階層構造を持ち、処理の流れを表現

⏱️ <strong>処理時間</strong>
各サービスでの処理時間が横幅で表示

🚦 <strong>ボトルネック</strong>
最も時間がかかっている処理が一目瞭然

🔗 <strong>依存関係</strong>
どのサービスがどのサービスを呼び出しているか

<div style="margin-top: 15px; padding: 10px; background-color: #f0f0f0; border-radius: 5px;">
💡 Rustの<code>#[instrument]</code>マクロで、<br>
この図のようなトレース情報を自動生成！
</div>

</div>
</div>

---

## Tracingの実装例

### 関数の処理時間を自動で記録する仕組み

<div style="font-size: 0.55em;">

```rust
use tracing::{instrument, info};
use std::collections::HashMap;

#[instrument(
    skip(store),  // 大きなデータはスキップ
    fields(
        user_id = %params.get("user_id").unwrap_or(&String::from("anonymous")),
        method = "GET"
    )
)]
pub async fn get_questions(
    params: HashMap<String, String>,
    store: Store,
) -> Result<impl warp::Reply, warp::Rejection> {
    info!("querying questions");
    // 処理...
}

// {"level":"INFO","span":{"name":"get_questions","user_id":"42"},"message":"querying questions"}
// {"level":"INFO","span":{"name":"get_questions"},"message":"close","elapsed_ms":333}
```

<div style="margin-top: 15px; padding: 10px; background-color: #f0f0f0; border-radius: 5px;">
💡 関数の開始/終了時刻と処理時間が<strong>自動記録</strong>される！
</div>

</div>

---

## Tracing関連ライブラリ

### 用途に応じた選択肢を広げる。足りなかったら自分で作れ！

<div style="font-size: 0.65em;">

**主要なトレーシングライブラリ**

🔍 <strong>tracing-opentelemetry</strong>
Jaeger/Zipkinへの送信。OpenTelemetry準拠で将来性◎

📊 <strong>tracing-bunyan-formatter</strong>
Bunyan形式（業界標準）。Elasticsearch/Datadogと相性良し

🐛 <strong>tracing-error</strong>
エラー時のスタックトレース自動記録。`color-eyre`と最強タッグ

💾 <strong>tracing-appender</strong>
非同期ファイル出力。日次ローテーション対応

<div style="margin-top: 15px; padding: 10px; background-color: #e3f2fd; border-radius: 5px;">
💡 まずは<code>tracing</code>と<code>tracing-subscriber</code>だけで始めよう！
</div>

</div>

---

## 実装後の新たな課題

### 観測可能性の向上がもたらす意図しない影響

<div style="font-size: 0.85em;">

<strong>技術の進歩と運用の複雑性</strong>

🎯 <strong>観測能力の飛躍的向上</strong>
- あらゆるデータが取得可能に
- リアルタイムでの可視化
- 高度な相関分析が容易に

📈 <strong>新たに生まれる課題</strong>
- 情報の洪水への対処
- 真に重要な指標の選別
- チームの認知的負荷

<div style="text-align: center; margin-top: 20px; padding: 12px; background-color: #e3f2fd; border-radius: 5px;">
💭 <strong>考察</strong>: 優れた技術は適切な戦略と共に使われて初めて価値を生む<br>
オブザーバビリティは「何でも見える」ことではなく「見るべきものを見る」こと
</div>

</div>

---

## 三本柱で何を測るべきか

### ビジネス価値に直結する情報だけを収集

<div style="font-size: 0.8em;">

<strong>📝 ログ</strong>: エラーの詳細と文脈情報
```rust
error!(user_id = %id, error = ?e, "決済処理失敗");
```

<strong>📊 メトリクス</strong>: ビジネスに直結する数値
```rust
counter!("payment_completed_total", "currency" => "JPY");
```

<strong>🔗 トレーシング</strong>: クリティカルパスの処理時間
```rust
#[instrument(skip(db), fields(order_id = %id))]
```

<div style="text-align: center; margin-top: 15px; padding: 10px; background-color: #e3f2fd; border-radius: 5px;">
🎯 <strong>共通原則</strong>: アクションに繋がる情報だけを収集する
</div>

</div>


---

## オブザーバビリティ実装の落とし穴

### 測りすぎがもたらす逆効果

<div style="font-size: 0.85em;">

📏 <strong>グッドハートの法則：「測定値が目標になった瞬間、それは良い測定値ではなくなる」</strong>

<div style="margin-top: 20px;">

**オブザーバビリティへの影響:**
- ログ出力数での評価 → 意味のないログの氾濫
- メトリクス数での評価 → カーディナリティ爆発
- カバレッジ100%追求 → getter/setterまで計測

</div>

<div style="text-align: center; margin-top: 20px; padding: 12px; background-color: #fff3cd; border-radius: 5px;">
⚠️ <strong>オブザーバビリティの本質</strong><br>
全てを見ることではなく、見るべきものを見ることが重要
</div>

</div>

---

## 測定戦略のアンチパターンとベストプラクティス

### 測りすぎ vs 賢い測定

<div style="font-size: 0.7em;">

<div style="display: flex; gap: 20px;">
<div style="flex: 1;">

**❌ アンチパターン**
```rust
// カーディナリティ爆発
static METRICS: Lazy<IntCounterVec> = 
  Lazy::new(|| {
    register_int_counter_vec!(
      "app_metrics",
      "Everything",
      &["function", "user_id", 
        "timestamp", "version"]
    ).unwrap()
  });

// すべての関数を計測
#[instrument]  // getter/setterも！
pub fn get_flag(&self) -> bool {
    self.flag
}
```
</div>
<div style="flex: 1;">

**✅ ベストプラクティス**
```rust
// REDメトリクスのみ
pub struct ApiMetrics {
    requests: IntCounter,
    errors: IntCounter,
    duration: Histogram,
}

// ビジネスクリティカルのみ
#[instrument(
    skip_all,
    fields(order.id = %id)
)]
pub async fn process_order(
    id: Uuid
) -> Result<Order> {
    // 重要な処理のみ
}
```
</div>
</div>

<div style="text-align: center; margin-top: 15px; padding: 10px; background-color: #e8f5e9; border-radius: 5px;">
💡 <strong>原則</strong>: ビジネス価値に直結する情報だけを収集する
</div>

</div>

---

## 真のオブザーバビリティとは

### システムの健全性を総合的に理解すること

<div style="font-size: 0.85em;">

<strong>メトリクスだけでは見えないもの</strong>
- システムの将来的な拡張性
- コードベースの保守性
- チームの運用負荷
- ユーザー体験の質

<div style="text-align: center; margin-top: 25px; padding: 15px; background-color: #f0f0f0; border-radius: 5px;">
🌟 <strong>オブザーバビリティの真価</strong><br>
三本柱（ログ・メトリクス・トレーシング）を組み合わせて<br>
システムの内部状態を正しく理解し、素早く問題解決すること
</div>

</div>

---

## AI時代のオブザーバビリティ戦略

### ログ設計の新しいパラダイム

<div style="font-size: 0.8em;">

<strong>AIとの協働を前提としたログ設計</strong>

📊 <strong>情報量の最適化</strong>
- **情報不足**: AIが問題を理解できない
- **情報過多**: トークン消費増加、推論速度低下
- **理想**: 問題解決に必要十分な情報を簡潔に

🤖 <strong>AI理解を考慮した構造化</strong>
```rust
// AI向けに最適化されたエラーログ
error!(
    context = "payment_processing",
    user_id = %id,
    amount = %amount,
    error_type = "timeout",
    retry_count = 3,
    "決済タイムアウト: 外部APIレスポンス遅延"
);
```

🔄 <strong>文脈の自動付与</strong>
- リクエストID、トレースIDの自動伝播
- 関連するビジネスコンテキストの付加
- デバッグモードでのみ詳細情報を出力

<div style="margin-top: 15px; padding: 10px; background-color: #e8f5e9; border-radius: 5px;">
💡 <strong>将来展望</strong>: AIが理解しやすいログは、人間にとっても理解しやすい<br>
構造化と簡潔性のバランスが、次世代のログ設計の鍵となる
</div>

</div>

---

## 2025年のオブザーバビリティトレンド

### 最新の実装パターンと推奨事項

<div style="margin-top: 15px; font-size: 0.85em;">

<strong>1. OpenTelemetryの成熟</strong>
- v0.30.0でMetrics API/SDKが安定版に
- `opentelemetry-appender-tracing`が推奨ログアプローチ
- 最小Rustバージョン: 1.75

<strong>2. メトリクスの2つのエコシステム</strong>
- `prometheus`クレート: Prometheus特化
- `metrics`クレート + `metrics-prometheus`: 汎用的

<strong>3. Tracingクレートの普及</strong>
- 「基本的な使い方はシンプルだが、可能性は無限」
- RUST_LOG=debugで簡単に開始

<strong>4. Webフレームワークの選択</strong>
- axumが人気上昇中（Towerエコシステム）
- warpも引き続き安定的な選択肢

</div>

---

## まとめ：実装から運用まで

### 今日学んだこと

<div style="margin-top: 15px; font-size: 0.85em;">

<strong>1. オブザーバビリティの基礎</strong>
- ログ、メトリクス、トレーシングの三本柱
- それぞれの役割と使い分け

<strong>2. Rustでの段階的実装</strong>
- `log` → `tracing`への移行パス
- 構造化ログとJSON出力の重要性
- 非同期処理での`#[instrument]`活用

<strong>3. 2025年の実装選択肢</strong>
- OpenTelemetry v0.30.0の成熟
- metricsクレートエコシステムの台頭
- axumなど新しいWebフレームワークへの対応

<strong>4. 測定の落とし穴を避ける</strong>
- 測りすぎによる弊害の認識
- 内部改善vs外部評価の明確な区別

</div>

---

## 重要なメッセージ

### 測定は手段であって目的ではない

<div style="text-align: center; margin-top: 40px; font-size: 1.1em;">

<strong>メトリクスは問題解決のツール</strong>

</div>

<div style="margin-top: 30px; font-size: 0.9em;">

✅ システムの健全性を維持するために使う

✅ チームの改善を促進するために使う

❌ 個人やチームを評価するために使わない

❌ 数値の最適化が目的にならないよう注意

</div>

---

---

## 参考文献（1/2）

### 書籍・オブザーバビリティ理論

<div style="display: flex; gap: 40px; align-items: start;">
<div style="flex: 1;">

**測定戦略・理論**
- ジェリー・Z・ミュラー『測りすぎ』
- 『入門監視』 Mike Julian
- 『オブザーバビリティエンジニアリング』 Charity Majors他

**Rust実装ガイド**
- 『Zero To Production In Rust』 Luca Palmieri著
- 『Programming Rust』 Jim Blandy他著
- 『Rust for Rustaceans』 Jon Gjengset著

<div style="margin-top: 20px; padding: 15px; background-color: #e3f2fd; border-radius: 5px;">
<strong>特に推奨</strong><br>
『Zero To Production In Rust』は実践的なRust Webアプリケーション開発と<br>
オブザーバビリティの実装を同時に学べる最良の一冊
</div>

</div>
<div style="width: 180px;">
<img src="../../assets/images/2025/getting-started-rust-observability/zero_to_production_in_rust.jpg" alt="Zero To Production In Rust" style="width: 100%; box-shadow: 0 4px 6px rgba(0,0,0,0.1); margin-top: 20px;">
</div>
</div>

---

## 参考文献（2/2）

### オンラインリソース・技術ドキュメント

<div style="font-size: 0.85em;">

**公式ドキュメント**
- [Rust log crate](https://docs.rs/log/) - Rustのロギング標準
- [tracing クレート](https://docs.rs/tracing/) - 非同期Rust向けトレーシング
- [OpenTelemetry Rust (v0.30.0)](https://github.com/open-telemetry/opentelemetry-rust)
- [prometheus-rust](https://github.com/prometheus/client_rust)

**技術ブログ・記事**
- [「測りすぎ」アンチパターンとエンジニアリングメトリクス](https://syu-m-5151.hatenablog.com/entry/2024/05/06/090014)
- [State of the Crates 2025](https://ohadravid.github.io/posts/2024-12-state-of-the-crates/)
- [Tokio Tracing Tutorial](https://tokio.rs/tokio/topics/tracing)
- [CNCF Observability Whitepaper](https://github.com/cncf/tag-observability)

**コミュニティリソース**
- [Rust Users Forum](https://users.rust-lang.org/)
- [日本Rustユーザグループ](https://rust-jp.rs/)
- [r/rust (Reddit)](https://www.reddit.com/r/rust/)

<div style="margin-top: 20px; padding: 12px; background-color: #fff3cd; border-radius: 5px;">
📚 <strong>学習のコツ</strong>: 理論（測定戦略）と実装（Rustコード）を並行して学ぶことで、<br>
実践的なオブザーバビリティの知識が身につく
</div>

</div>



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
