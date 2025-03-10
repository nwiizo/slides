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
    font-size: 3.2em !important;
    margin-bottom: 0.1em !important;
  }
  .title h3 {
    font-size: 1.5em !important;
    margin-top: 0.1em !important;
  }
  /* 作者情報のスタイル */
  .author-info {
    position: absolute !important;
    bottom: 40px !important;
    left: 50px !important;
    padding-left: 0 !important;
    text-indent: 0 !important;
    font-size: 1.2em !important;
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

<img src="../../assets/images/3shake-logo.png" alt="3-SHAKE logo" style="position: absolute !important; top: 5px !important; left: 5px !important; width: 240px !important; height: auto !important; z-index: 9999 !important;">

<div class="title" style="text-align: left; margin-top: 180px; margin-left: 50px; padding-left: 0;">

# SLI/SLO・ラプソディ<br><span class="highlight-yellow">あるいは組織への適用の旅</span>

### SLI/SLOをビジネスに活かす実践的アプローチ

</div>

<div class="author-info" style="text-align: left; padding-left: 0; text-indent: 0;">
2025/3/21 信頼性向上の第一歩！～SLI/SLO策定までの取り組みと運用事例～</br>@nwiizo 15min #信頼性向上_findy
</div>

---

<!-- _backgroundColor: white -->

![bg left:35% fit](../../assets/images/nwiizo_icon.jpg)
## nwiizo

<div class="info-box">
株式会社スリーシェイクで</br>ソフトウェアエンジニアとして活動しています。</br>
専門とかないのですがパソコンカタカタ好きです。</br>
</div>

<p style="margin-top: 30px !important;">"<strong>信頼性は可用性ではない</strong>"を標語としています。</p>

---

<!-- _backgroundColor: white -->

## <span class="highlight-blue">SLI/SLO導入への心構え</span>

<div style="display: grid; grid-template-columns: 1fr; gap: 20px; margin-top: 30px;">
<div>

### SLI/SLO導入は組織変革のプロジェクト

SLI/SLO導入を成功させるには、以下の3つの側面に向き合う心構えが必要です。

1. **既存の習慣や方法からの変更を伴う**
   * 変化への抵抗は自然な反応であり、適切に対処する必要がある

2. **多くのステークホルダーとの協力が不可欠**
   * 技術部門だけでなく、組織全体の理解と参画が重要

3. **目に見える成果が出るまでに時間がかかる**
   * 短期的な成果と長期的な価値創出のバランスが鍵

</div>
</div>

---

<!-- _backgroundColor: white -->

<div class="info-box">
SLI/SLOの導入は単なる技術的な変更ではなく、<strong>組織全体の文化と仕事のやり方の変革</strong>です。今回紹介する3つの心構えを守ったとしても、必ずしもあなたの組織で成功が保証されるわけではありません。また、短期的には混乱や抵抗が生じることもあります。<br>しかし、長期的には<strong>サービスの信頼性向上</strong>と<strong>チームの協働文化の醸成</strong>という大きな価値をもたらします。導入プロセスにおいては、全てのステークホルダーが「なぜこの変化が必要か」を十分に理解し、共通の目標に向かって一丸となって進むことが重要です。
</div>

---

<!-- _backgroundColor: white -->

## <span class="highlight-blue">1. 既存の習慣や方法からの変更を伴う</span>


---
<!-- _backgroundColor: white -->

## <span class="highlight-green">変化に対する抵抗</span>

![bg right:30% 80%](../../assets/images/2025/sli-slo-rhapsody/book_change_resistance_cycle.png)

どのような技術も概念も導入時には抵抗が生じます。

1. **情性による抵抗（惰性/現状維持バイアス）**
2. **労力による抵抗（実行コスト）**
3. **感情による抵抗（否定的感情）**
4. **心理的反発（変化への抵抗）**

<div class="info-box">
変化への抵抗は克服すべき「障害」ではなく、<strong>理解し対話すべき自然な反応</strong>です。各抵抗パターンに適した対応を行いましょう。
</div>

<div class="reference-right">
参考：「変化を嫌う人を動かす」 https://www.soshisha.com/book_wadai/books/2624.html
</div>

---

<!-- _backgroundColor: white -->

![bg left:30% 80%](../../assets/images/2025/sli-slo-rhapsody/north_wind_and_sun.png)

<div class="info-box">
北風と太陽の寓話は、SREやSLI/SLOの導入に関する重要な教訓を示しています。既に多くの成功事例と明確なメリットがあるSREプラクティスが、なぜ多くの組織で進まないのでしょうか？</br>
北風（強制的アプローチ）のように<strong>「これは業界のベストプラクティスだから導入すべき」</strong>と押し付けるほど、組織は抵抗し、コートを強く握りしめます。一方、太陽（説得と共感のアプローチ）のように、<strong>具体的な痛点からはじめ、チームの状況に寄り添いながら徐々に温めていく</strong>と、組織は自ら変化を受け入れるようになります。</br>
SLI/SLOの価値が明らかでも、<strong>導入方法と導入プロセス</strong>が成功の鍵を握るのです。
</div>

---

<!-- _backgroundColor: white -->

## <span class="highlight-green">情性による抵抗</br>（惰性/現状維持バイアス）</span>

![bg right:30% 80%](../../assets/images/2025/sli-slo-rhapsody/book_change_resistance_cycle.png)

- これは「自分が馴染みのあることにとどまろうとする欲求」として表れます
- 「今のやり方で問題ないのに、なぜ変える必要があるのか」という考えにつながります
- 既存のプロセスや方法への愛着が、新しいSREプラクティスの導入を妨げる要因となります

<div class="reference-right">
参考：「変化を嫌う人を動かす」 https://www.soshisha.com/book_wadai/books/2624.html
</div>

---

## <span class="highlight-green">労力による抵抗（実行コスト）</span>

![bg right:30% 80%](../../assets/images/2025/sli-slo-rhapsody/book_change_resistance_cycle.png)

- 変化を実行するために必要な努力やコストへの懸念です
- 新しいツールの学習、プロセスの変更、追加の作業などへの抵抗感として現れます
- 特に短期的なコストと労力が目に見えやすい一方で、長期的なメリットが見えにくいことが課題となります

<div class="reference-right">
参考：「変化を嫌う人を動かす」 https://www.soshisha.com/book_wadai/books/2624.html
</div>

---

## <span class="highlight-green">感情による抵抗（否定的感情）</span>

![bg right:30% 80%](../../assets/images/2025/sli-slo-rhapsody/book_change_resistance_cycle.png)

- 提示された変化に対する感情的な拒否反応です
- 自分の専門性や経験が否定されるのではないかという不安
- 変化によって自分の立場や影響力が失われることへの懸念

---

## <span class="highlight-green">心理的反発（変化への抵抗）</span>

![bg right:30% 80%](../../assets/images/2025/sli-slo-rhapsody/book_change_resistance_cycle.png)

- 変化を強制されることに対する本能的な反発です

- 変化を強制されることに対する本能的な反発です
- 自律性が脅かされることへの抵抗
- 「押し付けられる」ことへの反発心が生まれます

---

## <span class="highlight-green">変化に対する抵抗の克服</span>

![bg right:30% 80%](../../assets/images/2025/sli-slo-rhapsody/book_change_resistance_cycle.png)

- 変化に対する抵抗を克服するためのポイント
  - 丁寧なコミュニケーションと説明
  - 段階的な導入アプローチ
  - 早期の成功体験の創出
  - チーム全体の参加と関与
  - 適切な教育とサポートの提供

**まずどういうところから取り組むべきか**を明確にし、その後に**具体的な施策として提案していく**ことが重要です。段階的なアプローチが変化への抵抗を軽減します。

---

<!-- _backgroundColor: white -->

## <span class="highlight-blue">2. 多くのステークホルダーとの協力が不可欠</span>


---

<!-- _backgroundColor: white -->

## <span class="highlight-blue">ステークホルダーの協力</span>

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 30px;">
<div>

### 多くのステークホルダーとの協力が不可欠

* **日常的な課題解決に貢献する**
  * SLOを通じた実際の問題解決を示す
  * 「改善のための測定」という価値提供

* **チームの痛点を理解し、解決を支援**
  * 各部門固有の課題とSLOの関連付け
  * 「監視のための監視」ではなく解決策の提供

</div>
<div>

* **透明性の高いコミュニケーション**
  * 進捗状況の定期的な共有
  * 失敗も含めた正直なフィードバック

* **技術的・非技術的なメンバーとの橋渡し**
  * 技術用語の翻訳とビジネス言語の使用
  * 双方向のコミュニケーションの促進

</div>
</div>

<div class="info-box">
SLI/SLOは<strong>孤立したSREチームの取り組み</strong>ではなく、組織全体で共有される価値観と実践です。各ステークホルダーの関心事を理解し、共通の目標に向けて協力することが成功の鍵です。
</div>

---

<!-- _backgroundColor: white -->

## <span class="highlight-blue">部門間コラボレーションの構築</span>

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 40px;">
<div>

### 各部門の役割と貢献

* **エンジニアリング**：技術的実装と運用
* **プロダクト**：ユーザー体験とSLO目標値の提案
* **マーケティング**：顧客期待値とブランドポジショニング
* **財務**：コスト最適化と投資対効果分析
* **経営層**：戦略的方向性と資源配分の意思決定

</div>
<div>

### 協働フレームワーク

* 定期的なSLOレビュー会議の設置
* 部門間の情報共有とダッシュボード
* 共通KPIと評価指標の設定
* クロスファンクショナルな改善チーム
* 成功事例の全社的な共有メカニズム

</div>
</div>

<div class="info-box">
SLO文化の成功には<strong>組織全体の参画</strong>が不可欠です。各部門がそれぞれの専門性を活かしながら、共通の目標に向かって協働する体制を構築します。「SREチームだけの取り組み」から「全社的な価値創造活動」へと発展させることが重要です。
</div>

---

<!-- _backgroundColor: white -->

## <span class="highlight-blue">SLI/SLOの基本原則</span>

<div style="display: grid; grid-template-columns: 1fr; gap: 20px; margin-top: 20px;">
<div>

### まずはSLIから始めよう

* **SLI（Service Level Indicator）が基盤**
  * SLAやSLOにこだわる前に、まず適切なSLIを確立
  * システムの実際のデータに基づく正確な指標設計

* **既存のビジネスコミットメントに左右されない**
  * 理想的なSLI/SLOは現実の測定から導き出す
  * 既存のSLAに合わせてSLIを歪めない

</div>
</div>

<div class="info-box">
SLI/SLOの導入において最も重要なのは、<strong>適切な測定</strong>から始めることです。何を測定するかが、何を改善できるかを決定します。まずはサービスの健全性を正確に表す指標を見つけることに集中しましょう。
</div>

---

<!-- _backgroundColor: white -->

## <span class="highlight-blue">SLIの設計原則</span>

<div style="display: grid; grid-template-columns: 1fr; gap: 20px; margin-top: 20px;">
<div>

### データ駆動型のSLI設計

* **顧客視点に基づく選定**
  * 都合の良いデータポイントではなく、顧客価値を反映
  * 「システムが動作している」ではなく「顧客体験が良好」を測定

* **原因と結果の明確化**
  * メトリクスで変化を促すか、変化でメトリクスを動かすか
  * 測定そのものが目的化しないよう注意

</div>
</div>

<div class="info-box">
効果的なSLIは<strong>顧客が実際に体験するサービス品質</strong>を反映します。内部的な指標ではなく、ユーザーにとって意味のある指標を選びましょう。例えば、単なるシステム可用性ではなく、ユーザーリクエストの成功率やレイテンシなどが有効です。
</div>

---

<!-- _backgroundColor: white -->

## <span class="highlight-blue">SLOからSLAへの展開</span>

<div style="display: grid; grid-template-columns: 1fr; gap: 20px; margin-top: 20px;">
<div>

### 証拠に基づくアプローチ

* **SLI/SLOがSLAを裏付ける**
  * 証拠（SLI/SLO）が結論（SLA）を後押しする関係
  * 逆ではなく、データから適切なコミットメントを導出

* **SREリソースの効果的配分**
  * 99.9%以上のサービスにSREリソースを集中
  * 信頼性要件の低いサービスは必要に応じて段階的に対応

</div>
</div>

<div class="info-box">
SLOとSLAの関係は重要です。<strong>SLOは内部目標</strong>であり、<strong>SLAは顧客との契約上の約束</strong>です。データに基づいてSLOを設定し、その実績をもとにSLAを設計することで、持続可能かつ現実的なサービス品質保証が可能になります。
</div>

---

<!-- _backgroundColor: white -->

## <span class="highlight-blue">SLI/SLOの実行力</span>

<div style="display: grid; grid-template-columns: 1fr; gap: 20px; margin-top: 20px;">
<div>

### アクションにつながるSLO

* **SLO違反時の対応が重要**
  * 違反検知後のプロセス変更や修正能力が鍵
  * 検知しても行動できなければ意味がない

* **信頼性向上の実行サイクル**
  * 計測 → 分析 → 改善 → 検証のサイクル確立
  * 優先度付けと意思決定のデータ基盤としての活用

</div>
</div>

<div class="info-box">
SLI/SLOは<strong>単なる監視ダッシュボード</strong>ではありません。目標未達時に具体的なアクションを起こせる体制を整えることが重要です。「どう測定するか」と同じくらい「何をすべきか」を明確にしておきましょう。
</div>

---

<!-- _backgroundColor: white -->

## <span class="highlight-blue">SLI/SLOの一般的なアンチパターン</span>

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 30px;">
<div>

### アンチパターン: SLO = SLA

* SLOとSLAを同一に設定する誤り
* **常にSLOはSLAより厳しく設定**
  * 例: SLO 99.95%、SLA 99.9%
* 内部目標と外部約束の区別が重要
* バッファがないとSLA違反リスク増大

</div>
<div>

### アンチパターン: SLI = OKR/KPI

* SLIを業績指標と混同する誤り
* **グッドハートの法則の罠**
  * 「測定が目標になると良い測定でなくなる」
* 指標の操作や数値至上主義への誘惑
* 顧客価値より数値を優先する危険性

</div>
</div>

<div class="info-box">
効果的なSLI/SLO実践のためには、これらのアンチパターンを回避することが重要です。<strong>SLOとSLAの適切な分離</strong>、および<strong>測定と目標設定の健全な関係</strong>を維持しましょう。
</div>

---

<!-- _backgroundColor: white -->

## <span class="highlight-blue">3. 目に見える成果が出るまでに時間がかかる</span>

---

<!-- _backgroundColor: white -->

## <span class="highlight-green">SLI/SLOの長期的成果</span>

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 30px;">
<div>

### 目に見える成果が出るまでに時間がかかる

* **運用負荷（Toil）の削減**
  * 初期段階では負荷が増加することも
  * SLIに基づく自動化による長期的効果

* **SLOに基づくコスト最適化**
  * SLO達成のための適切な投資判断
  * 過剰な信頼性と過少な信頼性のバランス

</div>
<div>

* **サービス品質の向上**
  * SLIで測定された顧客体験の改善
  * データに基づく優先順位付け

* **SLI/SLO文化の定着**
  * 指標に基づく意思決定への移行
  * 継続的な改善サイクルの確立

</div>
</div>

<div class="info-box">
SLI/SLO導入の真の価値は<strong>長期的な視点</strong>で現れます。短期的な「成果」への固執よりも、持続可能な改善サイクルの確立を目指しましょう。「完璧なSLO」よりも「継続的に改善されるSLO」を重視することが重要です。
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