---
marp: true
theme: 3shake-2026-presentation
class: reading compact-citations
paginate: true
title: AI時代の「技術的負債」の変質ー概念の終焉と再解釈、エージェントと共に向かう先
description: 技術的負債に向き合うConference 2026。AIによって変わる実装の費用、判断の負担、学び方を、オニオンモデルの5層と3つの負債から考える。概念のどこを捉え直し、エージェントとどんな開発へ進むかを語る40分。
author: nwiizo
---

<!--
_backgroundColor: #0a1929
_color: white
_class: title dark
-->

![bg](../../brands/3shake/assets/images/3shake-background-full.png)

<img src="../../brands/3shake/assets/images/3shake-logo.png" alt="3-SHAKE" style="position: absolute; top: 100px; left: 100px; width: 240px;">

<div class="title" style="text-align: left; margin-top: 70px; margin-left: 80px; max-width: 1120px;">

# AI時代の「技術的負債」の変質<br>ー概念の終焉と再解釈、<br>エージェントと共に向かう先

</div>

<div class="author-info">
2026/09/16 技術的負債に向き合うConference 2026<br>
@nwiizo · 12:00–12:40
</div>

---

## nwiizo

![bg left:26% fit](../../assets/shared/nwiizo_icon.jpg)

<div>
<p>株式会社スリーシェイクで、<br>プロのソフトウェアエンジニアをやっているものです。</p>
<p>趣味は<strong>格闘技、読書、グラビア</strong>。<br>人生を通して、<strong>運動・睡眠・読書</strong>をきちんとやりたい。</p>
<p>技術書を訳すたび、わかることが1つ増え、<br><strong>わからないことが3つ増えていく。</strong></p>
<p>ブログ「<strong>じゃあ、おうちで学べる</strong>」。<br>X / GitHubも <strong>nwiizo</strong> です。</p>
</div>

---

## 書籍を出しました

<div class="body pair explained">
<div style="flex: 0 0 250px; text-align: center;">
<a href="https://www.diamond.co.jp/book/9784478124192.html"><img src="../../assets/images/2026/value-flow-across-roles/oi-toriaezu-owarasero.webp" alt="nwiizo著『おい、とりあえず終わらせろ』の表紙" style="height: 370px; max-width: 100%; object-fit: contain;"></a>
<div class="source">ダイヤモンド社 · 2026年<br>nwiizo 著 · <a href="https://www.diamond.co.jp/book/9784478124192.html">書籍の詳細</a><br>書影：ダイヤモンド社</div>
</div>
<div>
<p><strong>『おい、とりあえず終わらせろ』</strong><br>そうすれば「動けない自分」が変わるから</p>
<p>どこで止まっているかを言葉にして、<br><strong>次に動けるところまで考える本です。</strong></p>
<p><strong>本日 9月16日（水）19:30から · オンライン開催</strong><br>Forkwell Library #133 に登壇します。</p>
<p><strong>「おい、エージェントを使って終わらせろ」</strong><br>書籍をもとに、エージェントと仕事を終わらせるための<br>判断や工夫をお話しします。</p>
<p><strong>興味がある方は、ぜひ遊びに来てください。</strong><br><a href="https://forkwell.connpass.com/event/405587/">イベント詳細・参加申込（connpass）</a></p>
</div>
</div>

---

## 目次

<div class="small">
<p><strong>実装を速く作れるようになると、技術的負債は軽くなるのか。</strong><br>作る費用、変更を確かめる負担、理解を得る過程は、同じようには変わりません。</p>
<p><strong>1. 技術的負債の、何が変質するのか</strong><br>オニオンモデルの各層で、従来の理解とエージェントへの適用を分けて考える。</p>
<p><strong>2. どの捉え方を終え、どう再解釈するのか</strong><br>実装の修正費だけでは捉えきれない負担を見分け、対処と発生条件を見直す。</p>
<p><strong>3. エージェントと、どんな開発へ進むのか</strong><br>判断・検証・学習と、採用後の結果までを見据えて、開発の方向性を考える。</p>
<p>個々の解決策の導入手順や実装方法まで扱うには、40分では時間が足りません。<br><strong>実践の詳しい話は、このConferenceのほかのセッションに譲ります。</strong><br><a href="https://technical-debt-con.findy-tools.io/2026">Conferenceのプログラム</a></p>
</div>

---

## 技術的負債を、5つの層で捉える

<div class="columns small">
<div>
<img width="400" src="../../assets/images/2026/technical-debt-in-the-ai-era/taming-your-dragon-figure-1-1.jpg" alt="技術的負債のオニオンモデル。外側から技術、トレードオフ、システム、経済・ゲーム理論、厄介な問題の5層が重なる。">
<p class="source">Figure 1-1 より引用<br>技術的負債のオニオンモデル</p>
</div>
<div>
<p><strong>技術</strong>：コードや設計に現れる問題。</p>
<p><strong>トレードオフ</strong>：何を優先した選択か。</p>
<p><strong>システム</strong>：判断を方向づける役割や評価。</p>
<p><strong>経済・ゲーム理論</strong>：誰の手間が減り、<br>誰が負担を引き受けるか。</p>
<p><strong>厄介な問題</strong>：目的・制約・解決の見方が、<br>関係者で異なる。</p>
<p><strong>表面の問題から、その問題が生まれ、<br>残り続ける条件へ掘り下げるモデル。</strong><br>AIは、各層の費用や判断をどう変えるのか。</p>
</div>
</div>

<blockquote>図：Andrew Richard Brown, <a href="https://doi.org/10.1007/979-8-8688-0264-5">Taming Your Dragon</a>, Apress, 2024, Ch. 1. © Dr. Andrew Richard Brown 2024。エージェントへの適用は本発表の考察。</blockquote>

---

## 技術の層：変更を重くする構造を見る

<div class="small">
<p><strong>Technical Debt</strong>は、短期には都合のよい設計や実装が、<br>将来の変更を高コストにしたり、不可能にしたりする問題を指す。</p>
<img width="1100" src="../../assets/images/2026/technical-debt-in-the-ai-era/onion-technical-layer.svg" alt="技術的負債の内側に実装負債と設計に起因する負債を置く。コード内部や責務・依存関係の問題が、将来の変更で修正・検証・調整の範囲を広げる。">
<p><strong>実装負債は、コードの書き方に残る技術的負債。</strong><br>技術的負債には、責務のずれや依存関係など、設計に起因する問題も含まれる。</p>
<p><strong>古さや好みではなく、どの変更に、どんな修正や検証の負担が生じるかを見る。</strong></p>
</div>

<blockquote>定義：<a href="https://drops.dagstuhl.de/entities/document/10.4230/DagRep.6.4.110">Dagstuhl Seminar 16162</a>, 2016, p. 112。分類：Ernst, Kazman &amp; Delange, <a href="https://mitpress.mit.edu/9780262542111/technical-debt-in-practice/">Technical Debt in Practice</a>, MIT Press, 2021。</blockquote>

---

## 修正の速さを、構造の改善につなげる

<div class="small">
<p>エージェントは、コードの修正、依存の調査、設計案の試作を支援できる。<br>実装を整える作業が速くなっても、同じ責務や依存を引き継げば、変更時の調整は残る。</p>
<img width="1100" src="../../assets/images/2026/technical-debt-in-the-ai-era/onion-technical-layer-agents.svg" alt="エージェントによる修正・調査・試作を、コード内部の整理と責務・依存の見直しへ使う。どちらも必要な変更の修正・検証・調整の負担が減ったかで確かめる。">
<p><strong>コードを整えることと、変更を妨げる設計を見直すことを区別する。</strong><br>生成された量や差分の小ささだけでは、技術的負債が減ったとは判断できない。</p>
<p>必要な変更で、修正・検証・調整の範囲がどう変わったかを見る。<br><strong>作業を速める力を、変更を重くする構造の見直しにも使いたい。</strong></p>
</div>

<blockquote>前頁の技術的負債の分類を踏まえた、本発表でのエージェントへの適用。</blockquote>

---

## トレードオフの層：今の速さと、将来の負担

<div class="small">
<p>技術的負債は、今の仕事を早く進めるために、将来の負担を引き受ける選択からも生まれる。<br>その選択は、限られた時間と情報のもとで、将来の負担をどう見積もるかに左右される。</p>
<img width="1100" src="../../assets/images/2026/technical-debt-in-the-ai-era/onion-tradeoff-layer.svg" alt="早く届け、早く確かめられることと、将来の変更・検証・維持の負担を、時間と情報の制約のもとで比べる。そのとき選べた手段と、見積もれた負担から判断を捉える。">
<p><strong>将来の負担があることだけで、そのときの選択が誤りだったとは言えない。</strong><br>早く届けて確かめる必要と、後の変更を重くする費用を、当時の条件から捉える。</p>
<p>選んだ人の判断と、その人が何を選べる状況にいたかを、両方見る。</p>
</div>

<blockquote>Brown, <a href="https://doi.org/10.1007/979-8-8688-0264-5">Taming Your Dragon</a>, Ch. 1・5。</blockquote>

---

## 変更の選択肢を、今の費用で見直す

<div class="small">
<p>調査・実装・修正を省力化できれば、以前は高すぎた変更を選べる可能性がある。<br><strong>変わるのは、選択にかかる費用と、比較できる案の範囲。</strong></p>
<img width="1100" src="../../assets/images/2026/technical-debt-in-the-ai-era/onion-tradeoff-layer-agents.svg" alt="調査・実装・修正で省ける費用と、検証・移行・維持に必要な費用をそれぞれ見積もる。その結果から変更の方法・範囲・優先順位を選び直す。">
<p>検証・移行・知識の維持にかかる費用まで、同時に消えるわけではない。<br>修繕・置き換え・維持のどれを選ぶかは、変更全体と、その後の負担まで比べて決める。</p>
<p><strong>「高すぎて変えられない」という過去の判断を、今の費用で見直したい。</strong><br>作れるものが増えたことと、作って維持する価値があることは、別に確かめる。</p>
</div>

<blockquote>Brown, Taming Your Dragon, Ch. 1・5を踏まえた、本発表でのエージェントへの適用。</blockquote>

---

## システムの層：役割と評価が、選択を方向づける

<div class="small">
<p>人は組織の中で、役割ごとの目標・権限・時間の制約に応じて判断する。<br>その役割では合理的な選択でも、組織全体では維持しにくい構造を増やすことがある。</p>
<img width="1100" src="../../assets/images/2026/technical-debt-in-the-ai-era/onion-systems-layer.svg" alt="役割・目標・権限が選択を方向づけ、その結果として負担が生じる。負担が評価へ戻るかどうかが、次の選択に影響する。">
<p><strong>負債を直す活動と、負債を生み続ける仕事の進め方を、両方見る。</strong><br>実際にかかった負担を目標や評価に反映しなければ、同じ選択を繰り返しやすい。</p>
<p>個人の注意だけに頼らず、何を優先し、誰が決め、結果をどう評価するかを見直す。</p>
</div>

<blockquote>Brown, <a href="https://doi.org/10.1007/979-8-8688-0264-5">Taming Your Dragon</a>, Ch. 3・6。</blockquote>

---

## 実装の進捗から、採用後の結果まで評価する

<div class="small">
<p>実装を速めても、採用の権限や運用の責任は自動では変わらない。<br>生成した量だけを評価すると、理解や検証が追いつかない変更を増やす条件になりうる。</p>
<img width="1100" src="../../assets/images/2026/technical-debt-in-the-ai-era/onion-systems-layer-agents.svg" alt="エージェントが支援する生成・修正だけでなく、採用の判断、統合、運用の結果までを評価する範囲に含める。その結果から、目標・作業範囲・判断の権限を見直す。">
<p><strong>実装の進捗に加えて、採用した変更の結果と、維持する負担まで評価する。</strong><br>誰が採用を決め、誰が運用し、問題が起きたら誰に判断を求めるかを決める。</p>
<p>エージェントを使って得た結果から、目標と役割の分け方も見直す。<br><strong>作業を速くするだけでなく、何をよい仕事とするかも問われる。</strong></p>
</div>

<blockquote>Brown, Taming Your Dragon, Ch. 3・6を踏まえた、本発表でのエージェントへの適用。</blockquote>

---

## 経済の層：選ぶ人と、負担する人の関係を見る

<div class="small">
<p>経済・ゲーム理論の層では、選ぶ側の判断に含まれない、他の人への負担を見る。<br>ここでは、判断に関われない側へ費用が及ぶ問題を、<strong>負の外部性</strong>として捉える。</p>
<img width="1100" src="../../assets/images/2026/technical-debt-in-the-ai-era/onion-economics-layer.svg" alt="何を優先するか選ぶ側と、その判断に関われず後の調整・維持を担う側が分かれる場合を示す。相手に生じる負担も、選択する側の判断へ織り込む。">
<p>ある人や部門にとって都合のよい選択でも、必要な仕事は別の担当に発生することがある。<br>選ぶ側がその負担を考慮しなければ、自分たちの仕事を減らすために、全体の仕事を増やしてしまう。</p>
<p><strong>誰が選び、誰が結果を引き受け、その費用を誰が負うかを見る。</strong><br>選択した側にも後の負担が伝わるようにして、費用の配分と判断をつなぐ。</p>
</div>

<blockquote>Brown, <a href="https://doi.org/10.1007/979-8-8688-0264-5">Taming Your Dragon</a>, Ch. 1・7。図は本発表で整理。</blockquote>

---

## 作る側と維持する側、両方の負担を見る

<div class="small">
<p>AIでコードを書く手間が減る人と、そのコードを理解・検証・運用する人が別だと、<br>作る側の手間は減っても、受け持つ側の仕事が増え、全体の負担が大きくなることがある。</p>
<img width="1100" src="../../assets/images/2026/technical-debt-in-the-ai-era/onion-economics-layer-agents.svg" alt="AIでコードを書く手間が減る側と、そのコードの検証・運用を受け持つ側が分かれる場合を示す。受け持つ側の理解・検証・運用の負担も、変更を採用するときに考慮する。">
<p><strong>どの変更を採用するか決めるとき、理解・検証・運用の負担も含めて考える。</strong><br>誰の仕事が減り、誰の仕事が増えるかを見て、担当や進め方を調整する。</p>
<p>実装で省けた時間や費用を、評価の整備や、理解を引き継ぐ仕事にも振り向ける。<br><strong>一方の効率だけで、開発全体が軽くなったとは判断しない。</strong></p>
</div>

<blockquote>Brown, Taming Your Dragon, Ch. 1・7を踏まえた、本発表でのエージェントへの適用。</blockquote>

---

## 厄介な問題の層：何を解決とするかも、異なる

<div class="small">
<p><strong>厄介な問題（Wicked Problem）</strong>では、関係者によって問題の捉え方が異なり、<br>何をよい解決とするかも一致しない。問題の理解と、対処の検討を行き来する。</p>
<img width="1100" src="../../assets/images/2026/technical-debt-in-the-ai-era/onion-wicked-problem-layer.svg" alt="関係者の目的・制約・負担の違いを照合し、守る条件と変える条件を決める。対処した結果から、問題の捉え方も更新する。">
<p>関係者ごとの目的や制約が違うため、技術的に動くことだけでは解決と決められない。<br><strong>何を守り、何を変え、誰が負担を引き受けるかを確かめる。</strong></p>
<p>共有理解は、全員の見方を同じにすることではない。違いを把握し、対処に必要な理解をつくる。</p>
</div>

<blockquote>Brown, <a href="https://doi.org/10.1007/979-8-8688-0264-5">Taming Your Dragon</a>, Ch. 8。図は本発表で整理。</blockquote>

---

## わかりあえなさから、協働の条件を考える

<div class="body pair explained">
<div style="flex: 0 0 285px; text-align: center;">
<a href="https://publishing.newspicks.com/books/9784910063010"><img src="../../assets/images/2026/technical-debt-in-the-ai-era/tasha-to-hataraku-cover.jpg" alt="宇田川元一著『他者と働く──「わかりあえなさ」から始める組織論』の表紙" style="height: 395px; max-width: 100%; object-fit: contain;"></a>
<div class="source">宇田川元一 著 · 2019年<br>書影：NewsPicksパブリッシング<br><a href="https://publishing.newspicks.com/books/9784910063010">出版社の書籍紹介</a></div>
</div>
<div>
<p><strong>『他者と働く』</strong><br>「わかりあえなさ」から始める組織論</p>
<p>同じ出来事でも、専門性や役割、組織文化が違えば、<br>何が問題で、何が正しいかの捉え方が変わる。</p>
<p>本書の<strong>ナラティヴ</strong>は、その人が状況を理解する前提や見方。<br><strong>相手が理解していないと決めつける前に、自分の見方も問い直す。</strong></p>
<p>技術的負債への対処でも、修正案の正しさだけで合意は決まらない。<br>何を守り、誰が負担するかを、関係者の立場から確かめたい。</p>
<p><strong>見方の違いを捉え、共に進める条件をつくる。</strong><br>エージェントが整理した説明も、この対話の材料として使う。</p>
</div>
</div>

<blockquote>宇田川元一『他者と働く』第1章・<a href="https://note.com/np_publishing/n/nb37914241b43">出版社による本文公開</a>を参照。技術的負債への接続は本発表の考察。</blockquote>

---

## エージェントの案を、合意のための材料にする

<div class="small">
<p>エージェントは、案を並べ、前提の違いや矛盾を調べる助けになる。<br>出力の中で話が整っていても、関係者が何を優先するかを決めたことにはならない。</p>
<img width="1100" src="../../assets/images/2026/technical-debt-in-the-ai-era/onion-wicked-problem-layer-agents.svg" alt="エージェントが整理した案と前提を、関係者自身の目的・制約・負担に照らして検討する。人が守る条件と変更する範囲を判断し、試した結果で未決事項と判断を見直す。">
<p><strong>案を増やす支援と、何を引き受けるかの合意を区別する。</strong><br>理由の整理を任せても、何を守り、誰が負担するかは、関係者が確かめて判断する。</p>
<p>決まっていない点を明らかにしておき、試した結果を次の判断に生かす。<br><strong>エージェントの説明を、対話を進める材料として使いたい。</strong></p>
</div>

<blockquote>Brown, Taming Your Dragon, Ch. 8を踏まえた、本発表でのエージェントへの適用。</blockquote>

---

## AI時代の負債を、理解と判断理由から考える

<div class="body explained">
<p>5つの層のどの判断にも、変更の影響を理解し、選んだ理由をたどれることが要る。<br><strong>理解や理由を引き継げない問題は以前からあり、AIやエージェントを使う開発でも起こる。</strong></p>
<img width="1000" src="../../assets/images/2026/technical-debt-in-the-ai-era/onion-and-three-debts.svg" alt="エージェントが実装・調査・試行を支援しても、チームに変更を判断できる理解があるかを、認知的負債の観点から考える。目的・制約・理由の整理を支援しても、その記録を後から使えるかを、意図の負債の観点から考える。矢印は支援の先で確かめる問いへのつながりを表す。AIが必ず負債を生むという意味ではなく、同じ5つの層で、理解を得る過程と理由の引き継ぎ方がどう変わるかを掘り下げる。">
<p>エージェントが実装や説明を作るとき、チームが理解を得る過程と、判断理由の残り方はどう変わるのか。<br>AIの支援で不足を補える場面もあれば、出力が揃っても、理解や理由が不足したまま進むこともある。</p>
<p><strong>その変化を、認知的負債と意図の負債から考えたい。</strong><br>実装・設計の問題や5つの層の判断と、これらの負債がどう影響し合うのかまで見ていく。</p>
</div>

<blockquote>Brown (2024), Ch. 1／<a href="https://arxiv.org/abs/2603.22106v4">Storey (2026)</a>をもとに、本発表で再構成。</blockquote>

---

## 認知的負債は、共有理解に残る

<div class="small">
<p><strong>Cognitive Debt：変更や運用に必要な、チームの共有理解が不足している。</strong></p>
<img width="1100" src="../../assets/images/2026/technical-debt-in-the-ai-era/cognitive-debt.svg" alt="実装にある依存と、チームが変更の影響を予測して確かめられる依存を比較する。影響を判断できない関係を破線で示す。共有理解の不足が、再調査や特定の人を待つ負担につながる模式図。">
<p>変更の影響を判断できる人が限られると、その人への確認や、背景の調べ直しが増える。<br>説明を読んで納得できても、次の変更を自分たちで判断できるとは限らない。</p>
<p>全員が内部のすべてを知る必要はない。<br><strong>担当する範囲で、何を変えるとどこへ影響するかを、根拠を使って確かめられる状態にしたい。</strong></p>
</div>

<blockquote>負債の定義：Storey, <a href="https://arxiv.org/abs/2603.22106v4">Triple Debt Model</a>, 2026。</blockquote>

---

## 認知的負債は、記録の量だけでは測れない

<div class="small">
<p>理由が文書に残っていても、誰も読まず、知っている人に聞いて済ませることはある。<br>その場では聞く方が早くても、根拠の探し方が共有されなければ、次の変更でも同じ人を頼る。</p>

<div class="large">

| どこで止まっているか | 変える対象 |
| --- | --- |
| 記録が読まれない | 変更箇所から根拠へたどる導線と、探して確認する時間 |
| 読んでも判断に使えない | 背景・適用条件の説明と、今の動作で確かめる機会 |
| 理解しても判断を任されない | 自分で決めてよい範囲と、他の人に判断を求める条件 |

</div>

<p><strong>判断が偏っていることだけから、文書不足や認知的負債とは決められない。</strong><br>記録の不足、共有理解の不足、権限や仕事の進め方を、実際に止まった箇所から見分ける。</p>
<p>各自がAIの説明に納得しても、同じ前提を共有できたとは限らない。<br><strong>同じ変更の影響を予測し合い、判断が分かれた理由を、記録と実際の動作から確かめる。</strong></p>
</div>

<blockquote>Storey, <a href="https://arxiv.org/abs/2603.22106v4">Triple Debt Model</a>, 2026；Brown, Taming Your Dragon, Ch. 8・11。</blockquote>

---

## 意図の負債は、判断のよりどころに残る

<div class="small">
<p><strong>Intent Debt（意図の負債）</strong>は、目的・制約・判断理由の記録が欠けたり古くなったりして、<br>人もエージェントも、変更のよりどころとして使えない状態を指す。</p>
<img width="1100" src="../../assets/images/2026/technical-debt-in-the-ai-era/intent-debt.svg" alt="コードや設定には現在の動作が残る一方、目的・制約・判断理由の記録が使えず、設計を維持するか変えるかの根拠が不足する。">
<p>現在の動作が分かっても、なぜ残したのか、どの条件なら変えてよいかまでは分からない。<br>理由が使えなければ、必要性を調べ直したり、不要になった制約まで引き継いだりする負担が増える。</p>
<p><strong>AIが補った理由は、確認するまで推測として扱う。文章が埋まっても、判断の根拠が揃ったとは限らない。</strong><br>目的・優先順位・適用条件を残し、未決事項には、誰が何を確かめて決めるかを添える。<br>担当者が覚えているだけでなく、次に変更する人が、維持と見直しの判断に使えるようにする。</p>
</div>

<blockquote>Storey, <a href="https://arxiv.org/abs/2603.22106v4">Triple Debt Model</a>, 2026；Addy Osmani, <a href="https://www.oreilly.com/radar/the-intent-debt/">The Intent Debt</a>, 2026。要約。</blockquote>

---

## 意図の負債は、意図的に選んだ負債とは違う

<div class="small">
<p><strong>Deliberate Debt</strong>は、負債を認識して引き受けること。慎重な判断だったかとは別の軸になる。<br><strong>Intent Debt</strong>が問うのは、目的・制約・判断理由を、後から使えるかどうか。</p>
<img width="1100" src="../../assets/images/2026/technical-debt-in-the-ai-era/deliberate-and-intent-debt.svg" alt="負債を意図的に引き受けたかを縦軸、目的・制約・理由を後から使えるかを横軸にした四つの組み合わせ。意図的な選択でも理由を引き継げないことがあり、負債と認識しなかった設計でも当時の理由を残せる。">
<p>意識して引き受けた負債でも、理由と適用条件を引き継げなければ、意図の負債は残る。<br><strong>負債だと分かって選んだかと、その理由を後から使えるかは、別々に確かめる。</strong></p>
</div>

<blockquote>Martin Fowler, <a href="https://martinfowler.com/bliki/TechnicalDebtQuadrant.html">Technical Debt Quadrant</a>, 2009；Storey, <a href="https://arxiv.org/abs/2603.22106v4">Triple Debt Model</a>, 2026。</blockquote>

---

## すべての負債は、互いに影響する

<div class="body explained">
<img width="900" src="../../assets/images/2026/technical-debt-in-the-ai-era/debt-interactions.svg" alt="オニオンモデルの5層を通して、実装負債を含む技術的負債の背後にある条件をたどる。認知的負債と意図の負債は追加の層ではなく、どの層の判断にも関わる。双方向の矢印は相互の影響を表す。構造や仕事の進め方が理解と判断理由の引き継ぎに影響し、その不足が構造・優先順位・役割・費用の分担・守る条件を見直す判断を難しくする。">
<p>認知的負債と意図の負債は、実装・設計の問題への対処だけでなく、5つの層すべての判断に関わる。<br><strong>構造が複雑になるほど理解や理由の照合が難しくなり、理解や理由を失うほど構造を変えにくくなる。</strong></p>
<p>優先順位・役割や評価・費用の分担・関係者の目的も、負債が生まれ、残る条件になる。<br>コードを直しても、その条件が同じなら、同じような負債が再び生まれることがある。</p>
<p><strong>AIやエージェントは、このつながりのどこを軽くし、どこに負担を残すのか。</strong></p>
</div>

<blockquote>Brown (2024), Ch. 1・6–8／<a href="https://arxiv.org/abs/2603.22106v4">Storey (2026)</a>をもとに、本発表で再構成。</blockquote>

---

## AIで、負債の増え方と減らし方が変わる

<div class="small">
<p>構造・共有理解・判断理由まで掘り下げると、AIで何が楽になり、どこに負担が増えるかが見えてくる。<br><strong>変わるのは作業の費用だけでなく、確認する変更の量と、人が理解を深める過程。</strong></p>

<div class="large">

| 負債 | 減らすために使えること | 増えうる条件 |
| --- | --- | --- |
| 技術的負債 | 実装負債の修正、設計・境界案の試作 | 古い責務や依存を引き継ぎ、実装を増やす |
| 認知的負債 | 構造の説明、影響調査、反例の検討 | 人が試して理解を確かめる機会が抜ける |
| 意図の負債 | 目的・制約・判断理由の草案と更新 | 推測した理由を確かめず、決定事項として残す |

</div>

<p>実装と説明が先に揃っても、チームが影響を判断できるようになるまでには、検証と学習が要る。<br>変更量に応じてこの時間も確保し、生成結果を使って、自分たちの理解を確かめたい。</p>
<p><strong>どの負担が減り、どの負担が増え、誰が引き受けるかを問いたい。</strong></p>
</div>

<blockquote>Storey, <a href="https://arxiv.org/abs/2603.22106v4">Triple Debt Model</a>, 2026をもとに、エージェントの利用条件を本発表で整理。</blockquote>

---

## 「概念の終焉」を、どこまで言えるか

<div class="small">
<p>技術的負債は、以前から判断や組織と関わっていた。<br><strong>将来の変更を重くする構造を、今の選択と結びつける考え方は、AI時代にも必要になる。</strong></p>

<div class="large">

| 終えたい捉え方 | 捉え直す対象 |
| --- | --- |
| 実装の修正費だけで、負債全体の重さを測る | 調査・検証・調整・移行・維持までの費用 |
| コードが改善すれば、理解や理由も回復したとみなす | 構造・共有理解・判断理由、それぞれの状態 |
| 既存コードを直し続けることだけを返済とする | 修繕・置き換え・廃止と、発生条件の見直し |

</div>

<p><strong>この発表で終えたいのは、技術的負債をコードの修繕だけで考えること。</strong><br>技術的負債という考え方は今も必要だ。AIで実装が速くなると、修繕だけでは解消しない負担が目立つ。</p>
<p>実装の修正が速くなっても、理解や理由の不足による再調査は残りうる。</p>
</div>

<blockquote>Brown, <a href="https://doi.org/10.1007/979-8-8688-0264-5">Taming Your Dragon</a>, Ch. 1・6・7とStoreyの議論を踏まえた、本発表の立場。</blockquote>

---

## 再解釈：どこに負担があり、なぜ残るのか

<div class="small">
<p>変更に必要な検証や学習を、すべて負債とは呼ばない。<br><strong>構造の問題や理解・理由の不足によって、余分にかかる調査や手戻りを見る。</strong></p>
<img width="1050" src="../../assets/images/2026/technical-debt-in-the-ai-era/reinterpretation-decisions.svg" alt="構造の問題や共有理解・判断理由の不足が増やす負担と、その問題が生まれて残る理由を、別の問いとして調べる。両方から対処を選び、余分な作業と、同じ問題を繰り返す条件がどう変わったかを確かめる。">
<p>構造を直す。理解を確かめる。使える理由を残す。それぞれに必要な対処がある。<br>そのうえで、目標・権限・費用配分が、同じ負担を繰り返し生む状態も変える。</p>
<p><strong>必要な変更で、どの負担を減らせるか。そのための対処に、どれだけかかるか。</strong><br>両方を比べ、改善の優先順位を決め直す。</p>
</div>

<blockquote>Brown, <a href="https://doi.org/10.1007/979-8-8688-0264-5">Taming Your Dragon</a>, Ch. 1・6・7・12を踏まえた本発表の整理。</blockquote>

---

## 対処が進まない理由を、5つの層へたどる

<div class="small">
<p>直すべき構造が分かっても、修正に着手できるとは限らない。<br><strong>技術の問題から出発し、選択・役割・費用・目的のどこが対処を止めているかを調べる。</strong></p>

<div class="large">

| 層 | 対処を難しくする条件 | 見直す対象 |
| --- | --- | --- |
| 技術 | 修正の影響が広く、確かめにくい | 責務・依存と、変更を検証する仕組み |
| トレードオフ | 今の進捗を優先し、後の負担を考慮できない | 変更の必要性と、対処・維持の費用 |
| システム | 直す時間や権限が、担当に与えられていない | 目標・役割・評価・判断の権限 |
| 経済・ゲーム理論 | 選ぶ側の判断に、維持する側の負担が入らない | 後の負担を伝える方法と、費用の分担 |
| 厄介な問題 | 何を守り、何を解決とするかが揃っていない | 目的・制約・未決事項と、合意する範囲 |

</div>

<p>どの層でも、理解が揃わず、判断理由が使えなければ、調査や合意を繰り返す負担が増える。<br><strong>何が対処を止めているかに応じて、構造の修正・共有理解の確認・理由の更新を組み合わせる。</strong></p>
</div>

<blockquote>Brown, Taming Your Dragon, Ch. 1・5・6・7・8を踏まえた、本発表での対処の整理。</blockquote>

---

## 対処を選ぶ：負担が生じるところと、全体の費用

<div class="small">

<div class="large">

| 負担が生じるところ | 対処の選択肢 | 確かめること |
| --- | --- | --- |
| 実装内部の構造 | 修繕・再生成・廃止 | 必要な動作、検証・移行・保守の費用 |
| 責務や依存の境界 | 設計と担当範囲の見直し | 変更の波及、調整と運用の負担 |
| 共有理解と判断理由 | 共同での検証、記録と導線の更新 | 根拠を使って、次の変更を判断できるか |
| 負債を生む仕事の進め方 | 目標・権限・費用の分担を見直す | 維持する側の負担を、採用時に考慮できるか |

</div>

<p><strong>再生成</strong>は、必要な振る舞いを保つよう、対象の実装を生成し直すこと。<br>実装負債への選択肢の一つになる。どの対処も、調査・検証・移行・維持まで含めて比べる。</p>
<p>変更の必要性が低い範囲は、負担を把握して維持する判断もある。<br><strong>必要な変更を妨げる問題と、それを生む仕事の進め方に手を入れたい。</strong></p>
</div>

---

## 再生成は、実装負債を終える一つの手段

<div class="small">
<p>今のコードには、業務の条件だけでなく、障害や運用から学んだことも埋まっている。<br><strong>必要な知識を実装の外でも使える形にして、コードを替える選択肢を持ちたい。</strong></p>
<img width="1100" src="../../assets/images/2026/technical-debt-in-the-ai-era/replaceable-implementation.svg" alt="目的・制約・判断理由、動作・境界・データの責任、評価と運用の根拠を実装の外で維持する。その条件を保ちながら、実装Aを実装Bへ差し替える。">
<p>引き継ぐのは、利用者や周辺システムが頼る振る舞いと、それを確かめる根拠。<br>失敗時の動作・順序・データの扱いまで捉え、旧実装の動作をすべて無条件には保存しない。</p>
<p><strong>利用・データ・運用が旧実装へ依存しなくなれば、旧実装内だけの負債は廃止で終えられる。</strong><br>引き継いだ設計の問題や理解・理由の不足は残る。移行用の処理にも、廃止までの維持費がかかる。</p>
</div>

---

## コードを整えても、境界のずれは残る

<div class="body columns explained">
<div>
<img width="510" src="../../assets/images/2026/technical-debt-in-the-ai-era/balancing-coupling-figure-8-2.jpg" alt="一緒に変更する部品の距離が、文、メソッド、オブジェクト、ライブラリ、サービス、システムへと広がるほど、変更を調整する負担が増える概念図。実測した比例関係ではない。">
<p><small>Figure 8.2 より引用<br>一緒に変える部品の距離と、調整の負担<br>実測した比例関係ではなく、関係を示す概念図。</small></p>
</div>
<div>
<p>同じルールを変えるたびに、複数のサービスやチームを動かす必要があると、<strong>仕様のすり合わせやリリース順序の調整</strong>も増える。</p>
<p>業務ルールの変更が増えれば、調整の負担も増えやすい。コードが同じでも、担当チームや仕事の進め方が変われば、以前の責任の分け方が合わなくなる。</p>
<p>同じ理由で変わる処理は、同じ部品や担当範囲へ集めることを検討する。別々に変わる処理は、相手の内部構造に依存せず使えるようにする。</p>
<p>依存の調査や試作にエージェントを使い、処理の配置も見直したい。<strong>古い分け方を固定して書き直せば、同時に変更する負担まで引き継いでしまう。</strong></p>
</div>
</div>

<blockquote>Vlad Khononov, <a href="https://www.pearson.com/en-us/subject-catalog/p/balancing-coupling-in-software-design-successful-software-architecture-in-general-and-distributed-systems/P200000000372">Balancing Coupling in Software Design</a>, Addison-Wesley Professional, 2024, Figure 8.2。原図は改変なし。変化に応じた境界の見直しは第11章も参照。</blockquote>

---

## 生成の速さと、変更が届く速さを分ける

<div class="small">
<p>修正や設計の見直しで作った候補は、検証・採用・統合を経て、利用者へ届く。<br>判断・検証・移行が滞れば、実装を速めても、変更全体にかかる時間は縮まりにくい。</p>

<img width="1100" src="../../assets/images/2026/technical-debt-in-the-ai-era/generation-and-delivery.svg" alt="生成した候補は評価と採否の判断を待ち、採用した候補だけが統合・運用へ進む。却下・保留は別に扱う。送られる候補が判断できる数を上回り続けると、判断待ちが積み上がる。">
<p><strong>評価へ送る候補が、採用・却下を判断できる数を上回り続ければ、判断待ちは増える。</strong></p>
<p><strong>同時に進める変更を絞り、評価や統合が追いつくように整える。</strong><br>待ちがあるだけで負債とは決めず、変更量と、繰り返し判断を妨げる原因を分けて調べる。</p>
</div>

---

## エージェントとどんな開発へ進むか

<div class="small">
<p>判断待ちを減らすには、生成量の調整と、判断に必要な条件・根拠の準備を一緒に進める。<br><strong>何を作り、どう採用し、利用者に何が起きたかまでを、一続きの仕事として扱いたい。</strong></p>
<img width="1100" src="../../assets/images/2026/technical-debt-in-the-ai-era/agent-judgment-loops.svg" alt="開発全体の反復の内側に、エージェントが担う生成・実行・修正の反復を置く。目的と範囲を定め、結果を検証・採用して運用し、その結果から判断を見直す。">
<p>調査・実装・評価のどこにエージェントを使うかを、作業ごとに決める。<br><strong>チームは、自動で進める条件と、人が判断する条件を定め、運用の結果から見直す。</strong></p>
<p>すべての操作を人が承認する必要はない。<br><strong>採用の根拠を確かめ、問題があれば変更・停止できる仕事の進め方をつくる。</strong></p>
</div>

---

## 事業・ソフトウェア・チームを、同じ変更へ揃える

<div class="small">
<p>同じ変更でも、事業・開発・運用では、期待する成果と避けたい負担が異なる。<br><strong>何を変える価値があり、どこを変え、誰が運用まで担うかを、一緒に考えたい。</strong></p>
<img width="1000" src="../../assets/images/2026/technical-debt-in-the-ai-era/strategy-architecture-teams.svg" alt="利用者に必要な変化を中心に、開発の優先順位、意味と変更を揃えるソフトウェアの境界、実装から運用まで担うチームの責任を対応づける。変更を届けた結果で3つを見直す。">
<p>生成の費用が下がっても、すべてを自作する理由にはならない。<br><strong>どこを自社の強みにし、どこは既存の仕組みを使うかを、保守や依存の負担も含めて選ぶ。</strong></p>
<p>関係するチームと条件や負担を確かめ、優先順位・実装の境界・担当を一緒に見直す。<br>エージェントは、その範囲の調査・試作・実装を支える。</p>
</div>

<blockquote>Kaiser, <a href="https://www.oreilly.com/library/view/architecture-for-flow/9780137392759/">Architecture for Flow</a>, Ch. 6・8・12。事業・設計・チームの整合を参照。</blockquote>

---

## 変更を止める依存は、コードの外にもある

<div class="small">
<p>どの部品に触れるかに加えて、誰の知識と、どの作業の完了を待つかを見る。<br>実装が速くなっても、担当間の受け渡しで、変更全体が滞ることがある。</p>

<div class="large">

| 依存の種類 | 変更が止まる構造 | 見直す対象 |
| --- | --- | --- |
| アーキテクチャ | 同じ変更が、複数の部品とチームへ波及する | 業務上の境界、データと動作の依存 |
| 専門知識 | 特定の人やチームの理解がないと進めない | 必要な知識の探し方、共同で学ぶ機会 |
| 作業 | 他の担当の作業完了を待たないと進めない | 担当範囲、作業の順序、受け渡しの回数 |

</div>

<p><strong>必要な連携を残しながら、日常の変更で繰り返す待ちを減らす。</strong><br>一時的な共同作業で理解を揃え、安定した共通機能は自分たちで利用できる形へ整える。</p>
<p>依存の有無だけで負債とせず、変更を妨げる構造と、その費用から対処を選ぶ。</p>
</div>

<blockquote>Kaiser, <a href="https://www.oreilly.com/library/view/architecture-for-flow/9780137392759/">Architecture for Flow</a>, Ch. 5・6。依存の3分類は同書で紹介するDeGrandisとDemariaの整理。</blockquote>

---

## チームの境界は、理解して運用できる範囲で決める

<div class="small">
<p>関連する業務ルールと変更理由をまとめ、その範囲を継続して担当するチームを決める。<br>業務の理解・変更の判断・運用を誰が担い、他のチームと何を相談するかを明らかにする。</p>
<img width="1000" src="../../assets/images/2026/technical-debt-in-the-ai-era/team-boundary-and-load.svg" alt="チームが判断から運用まで担う範囲を示し、その内部で決めることと、他のチームへ相談することを区別する。外との必要な依存を残し、互いの目的・制約を共有しながら、知識と調整の負荷から担当範囲を見直す。">
<p><strong>認知負荷は、仕事で同時に扱う情報や判断の負荷。認知的負債は、共有理解の不足。</strong><br>理解済みでも担当範囲が広すぎれば負荷は高い。説明を増やすだけでなく、範囲や依存を見直す。</p>
<p>境界を分けても、他のチームへの影響は残る。互いの目的・制約と、相談する条件を共有する。<br>エージェントがコードを扱える量と、チームが結果を引き受けられる範囲は別に決める。</p>
</div>

<blockquote>Kaiser, <a href="https://www.oreilly.com/library/view/architecture-for-flow/9780137392759/">Architecture for Flow</a>, Ch. 3・5・6。認知的負債との区別とエージェントへの適用は本発表で整理。</blockquote>

---

## 生成の前に、守る条件と変える範囲を決める

<div class="small">
<p>関係者が何を守り、どの負担を避けたいかを持ち寄り、今回守る動作と、変えてよい範囲を決める。<br><strong>決めた条件を保って内部を替える仕事と、責任の分け方自体を変える判断を分ける。</strong></p>
<img width="1050" src="../../assets/images/2026/technical-debt-in-the-ai-era/evidence-and-decision.svg" alt="コードの動作、記録された期待、運用での利用と依存を照合する。一致と食い違いを確かめ、今後守る条件と変更理由を判断する。確認した事実、推測、今回の決定を区別して残す。">
<p>コードから推測した理由は、当時の判断理由とは限らない。<br><strong>事実・推測・今回の決定を分け、これから守る条件を関係者と確かめる。</strong></p>
<p>守る条件は、文章に加えて、検査する項目や操作権限にも反映する。<br><strong>未決事項に触れたら、影響する処理を保留し、決める人へ確認する。</strong>確認後は記録と実行条件を揃える。</p>
</div>

---

## 評価の根拠を、生成結果の外から確かめる

<div class="small">
<p>同じ未確認の前提から仕様・実装・テストを作ると、誤りまで一致することがある。<br><strong>守る条件は、生成結果同士の整合に加え、関係者や実際の利用に照らして確かめる。</strong></p>
<img width="1100" src="../../assets/images/2026/technical-debt-in-the-ai-era/implementation-independent-evaluation.svg" alt="関係者と確かめた条件と実際の利用を評価基準の根拠にする。修正や置き換えで作った候補の動作を照合し、結果と残る不確実さから採否を判断する。">
<p>修正でも置き換えでも、必要な動作・性能・失敗時の条件を、確かめた基準で評価する。<br>実装固有の検査は構造に合わせ、運用で見つかった評価の抜けも補う。</p>
<p><strong>候補に合わせて期待値を動かさず、評価を変える場合は、その理由を確かめる。</strong></p>
</div>

---

## 今回の作業に渡す情報と、残しておく知識を分ける

<div class="small">
<p><strong>コンテキスト</strong>は、エージェントが作業中に参照する情報。<br>目的・判断理由・設計・評価の記録から、今回の変更に必要な範囲を選び、現在の状態と合わせて渡す。</p>
<img width="950" src="../../assets/images/2026/technical-debt-in-the-ai-era/knowledge-and-run-context.svg" alt="残しておく知識と現在の状態から、今回の作業に必要な情報を選ぶ。結果を確かめて記録を更新し、次の作業に渡す情報を選び直す。">
<p>会話の中で誤りを直しても、共有の記録が古いままなら、次の作業は同じ誤った前提から始まりうる。<br><strong>修正したコードに加え、判断理由と評価も更新し、次に参照する箇所へ反映する。</strong></p>
<p>会話を丸ごと残すだけでは、途中の推測と採用した判断が混ざる。<br><strong>何を根拠に、誰の目的・制約を踏まえて選び、何が未決なのかを残す。</strong><br>有効な条件も添え、情報を渡せたかに加えて、次の判断で使えたかまで確かめる。</p>
</div>

---

## どこまで自動で進め、どこで人が判断するか

<div class="body explained">
<p>エージェントが作業を進めてよい条件と、人に判断を戻す条件を、先に決める。<br><strong>その範囲は、エージェントの能力に加え、チームが結果を確かめ、失敗に対処できるかで決めたい。</strong></p>
<img width="900" src="../../assets/images/2026/technical-debt-in-the-ai-era/delegation-and-verification.svg" alt="根拠と結果を確認できること、実行条件を変更・停止する権限と手段があること、影響を限定して復旧できることを確かめる。その条件から、自動実行の範囲と同時に動かす仕事の数を別々に決め、運用の結果から見直す。">
<p>必要な動作と影響を確かめられる範囲から自動化する。内部を全部説明できることを条件にはしない。<br>ただし、失敗に気づけるか、影響の拡大を止められるか、復旧できるかは、実行前に確かめる。<br>コードを戻しても、データや外部へ起きた変化は残る。復旧の手段は、その範囲まで用意する。</p>
<p><strong>運用を担う人には、判断の根拠と実行結果を追える記録、止める権限、確認する時間が要る。</strong><br>承認者の名前を置くだけでは、問題へ対処する力は増えない。責任を担える条件まで、開発側で整えたい。<br>同時に動かす仕事の数も、結果を評価し、統合できる量から別に決める。</p>
</div>

---

## 設計の方針を、毎回確かめる条件にする

<div class="small">
<p>決めた責務や依存の境界を、変更ごとに確かめる。<br>そのために、重要な設計上の性質を検査する<strong>フィットネス関数</strong>を用意する。</p>
<img width="1100" src="../../assets/images/2026/technical-debt-in-the-ai-era/architecture-fitness-check.svg" alt="設計の方針から定めた検査条件を変更した実装へ適用する。不合格なら実装を修正して再検査する。合格は採否判断の材料の一つで、他の評価と合わせて確かめる。">
<p>依存は変更時、組み合わせた動作は統合時、性能や安定性は実際の環境でも確かめる。<br>データの整合・アクセス制御を含め、<strong>必要な条件を同時に満たせるか</strong>を見る。</p>
<p><strong>必要な動作・性能・設計上の条件を満たせるなら、最初に選んだ構造も見直せる。</strong><br>実装を直すことと、合格の条件を変えることは区別する。条件を変えるなら、その理由を確かめる。</p>
</div>

<blockquote>Neal Ford et al., <a href="https://www.oreilly.com/library/view/building-evolutionary-architectures/9781492097532/">Building Evolutionary Architectures, 2nd Edition</a>, O'Reilly, 2022。</blockquote>

---

## エージェントが書いても、理解する仕事は残る

<div class="small">
<p>検査に合格したコードでも、次の変更をチームが判断できるかは別に確かめる。<br>コードを書く過程には、曖昧な条件を決め、予想と違う動作を調べる機会がある。<br>エージェントが実装を進めると、その試行錯誤をチームが共有しないまま、完成したコードを受け取れる。</p>
<img width="1000" src="../../assets/images/2026/technical-debt-in-the-ai-era/implementation-and-understanding.svg" alt="エージェントの生成・実行・修正から、コードと試行の記録が得られる。記録が揃うことと、チームが変更の影響を判断できることの間には、予測と結果を照合する過程が必要になる。破線は理解が自動で揃わないことを示す。">
<p>説明への納得だけでは、何を変えると壊れるか、前提が変わったらどう直すかを確かめたことにはならない。<br>自分で書いても理解が十分とは限らない。<strong>書いた人にかかわらず、変更を判断できるかを確かめたい。</strong></p>
<p><strong>省けた実装作業の中に、理解を得ていた機会まで含まれていないか。</strong><br>エージェントを調査や試行にも使い、コードを作る速さと、チームが理解を得る過程をつなぎ直す。</p>
</div>

---

## 食い違いから、互いの判断の前提を確かめる

<div class="body explained">
<p>各自がAIの説明に納得しても、同じ前提から判断しているとは限らない。<br><strong>食い違いは、知識の不足だけでなく、役割や優先順位の違いからも生まれる。</strong></p>
<img width="1000" src="../../assets/images/2026/technical-debt-in-the-ai-era/understanding-through-change.svg" alt="動作の見立ては記録と実際の動作を比べて確かめ、優先順位や守る条件の違いは互いの理由と負担を持ち寄って検討する。確かめた事実と合意したことを区別し、未決事項も含めて判断を更新する。エージェントは調査・反例の検討・試行・論点の整理を支援する。">
<p>何が変わるはずかを持ち寄り、記録と実際の動作で確かめる。全員の予測が同じでも、検証は省かない。<br>何を守り、どの負担を引き受けるかは、相手の理由を聴き、自分たちの優先順位も問い直す。</p>
<p>見方の違い自体を認知的負債とは呼ばない。<strong>影響と、合意した条件・未決事項を共有し、変更を判断できる状態へ。</strong><br>共同で確かめる時間も開発の仕事に含め、特定の人への依存や、同じ背景を調べ直す負担を減らす。</p>
</div>

---

## 構造・理由・評価を、同じ対象へ結びつける

<div class="small">
<p>共同で確かめた依存・判断理由・採用条件を、対応する実装や担当範囲からたどれるようにする。<br>採用した実装から、使った仕様・設計・生成条件・評価結果へ戻れる記録も保つ。</p>
<img width="1100" src="../../assets/images/2026/technical-debt-in-the-ai-era/structure-reason-evaluation.svg" alt="担当範囲と採用した実装から、構造と依存、判断理由と適用条件、仕様と生成条件、評価結果と運用の学びへたどれるようにする。線は工程ではなく参照関係を表す。">
<p>技術的負債には、変更を妨げる依存関係を見直す。認知的負債には、予測と実際の動作を比べる。<br>意図の負債には、判断理由と、その判断が有効な条件を更新する。</p>
<p><strong>運用で直したことは、理由を記録し、次の変更を確かめる評価項目にも加える。</strong><br>コードだけに修正を残すと、後の変更で同じ問題が起きかねない。次の判断で根拠を使える形にする。</p>
</div>

---

## 運用の結果から、次の改善と作業範囲を決める

<div class="small">
<p><strong>採用を決めたら、実際に使われてどうなったかまで確かめたい。</strong><br>利用者に起きた変化と、調査・調整・検証・運用でかかった負担を、次の判断に生かす。</p>
<img width="1000" src="../../assets/images/2026/technical-debt-in-the-ai-era/flow-outcomes-and-decisions.svg" alt="変更を届けた後、優先順位を決めた側と利用・運用する側が、期待した成果と実際の負担を確かめ合う。上の矢印は変更を届ける流れ、下の双方向の線は互いの前提を問い直す対話を示す。その結果から優先順位・費用の分担・担当範囲・実行条件を見直す。">
<p>生成量だけでは、変更の流れが改善したとは言えない。待ち・手戻り・維持費まで見る。<br>解消した詰まりと、新たに現れた詰まりを見分け、構造や仕事の進め方を選び直す。</p>
<p><strong>作る側と使う側・運用する側で、結果の受け止め方と、実際にかかった負担を確かめ合う。</strong><br>決めた側の前提も問い直し、目的・優先順位・費用の分担・担当範囲、エージェントの実行条件を見直す。</p>
</div>

---

## 技術的負債の変質を、開発の変化へつなげる

<div class="small">
<img width="950" src="../../assets/images/2026/technical-debt-in-the-ai-era/debt-to-engineering.svg" alt="変質は、実装の費用・変更量・学び方が別々に変わること。終焉と再解釈は、コードの修繕だけで考えることをやめ、どこで負担が生じ、なぜ残るかを調べること。向かう先は、判断・検証・学習と採用後の責任を、エージェントとの開発へ組み込むこと。">
<p><strong>実装の費用が下がっても、次の変更を判断し、問題に対処できる状態は、自動では手に入らない。</strong><br>構造・理解・判断理由と、それらを更新する仕事の進め方まで含めて、技術的負債を考えたい。</p>
<p><strong>残した理由が次の判断に使われ、見つけた問題が次の検証で確かめられる開発へ。</strong><br>互いの立場から前提を問い直し、変更の影響を記録と実際の動作で確かめる。<br>その根拠を残し、人が替わっても、判断と検証を続けられるようにする。</p>
<p>エージェントと、変更を届けながら学び続ける。その可能性に、かなり期待しています。</p>
</div>

---

<!--
_backgroundColor: #0a1929
_color: white
_class: title dark
-->

![bg](../../brands/3shake/assets/images/3shake-background-full.png)

<img src="../../brands/3shake/assets/images/3shake-logo.png" alt="3-SHAKE" style="position: absolute; top: 100px; left: 100px; width: 240px;">

<div class="title" style="text-align: left; margin-top: 100px; margin-left: 80px; max-width: 1120px;">

# ありがとうございました

### 判断と学習を、次の変更へつなぐ

</div>

<div class="author-info">
@nwiizo<br>
株式会社スリーシェイク
</div>

---

## 参考文献 · 負債の定義と意思決定

<div class="small">
<p><a href="https://doi.org/10.1007/979-8-8688-0264-5">Taming Your Dragon: Addressing Your Technical Debt</a><br>Andrew Richard Brown · Apress · 2024<br>第1・3・5・6・7章：オニオンモデル、負債の発生条件、トレードオフ、組織と外部性。<br>第8・11・12章：共有理解と問題への対処。Figure 1-1を引用。エージェントへの適用は本発表の考察。</p>
<p><a href="https://drops.dagstuhl.de/entities/document/10.4230/DagRep.6.4.110">Managing Technical Debt in Software Engineering</a><br>Paris Avgeriou et al. · Dagstuhl Seminar 16162 · 2016</p>
<p><a href="https://mitpress.mit.edu/9780262542111/technical-debt-in-practice/">Technical Debt in Practice</a><br>Neil Ernst, Rick Kazman, Julien Delange · MIT Press · 2021。実装負債と設計・アーキテクチャの負債。</p>
<p><a href="https://martinfowler.com/bliki/TechnicalDebtQuadrant.html">Technical Debt Quadrant</a><br>Martin Fowler · 2009。負債を意図的に引き受けたかという軸。</p>
</div>

---

## 参考文献 · 認知的負債と意図の負債

<div>
<p><a href="https://arxiv.org/abs/2603.22106v4">From Technical Debt to Cognitive and Intent Debt:<br>Rethinking Software Health in the Age of AI</a><br>Margaret-Anne Storey · 2026 · arXiv v4。Triple Debt Modelの提案。</p>
<p><a href="https://margaretstorey.com/blog/2026/02/09/cognitive-debt/">How Generative and Agentic AI Shift Concern<br>from Technical Debt to Cognitive Debt</a><br>Margaret-Anne Storey · 2026-02-09</p>
<p><a href="https://www.oreilly.com/radar/the-intent-debt/">The Intent Debt</a><br>Addy Osmani · O'Reilly Radar · 2026-08-14</p>
</div>

---

## 参考文献 · 構造と変更の評価

<div>
<p><a href="https://www.oreilly.com/library/view/architecture-for-flow/9780137392759/">Architecture for Flow</a><br>Susanne Kaiser · Addison-Wesley · 2025<br>第3・5・6・8・12章：事業・ソフトウェア・チームの整合、依存と認知負荷、変更と学習の流れ。</p>
<p><a href="https://www.oreilly.com/library/view/building-evolutionary-architectures/9781492097532/">Building Evolutionary Architectures, 2nd Edition</a><br>Neal Ford, Rebecca Parsons, Patrick Kua, Pramod Sadalage · O'Reilly · 2022<br>重要な性質を確かめながら構造を変える。</p>
<p><a href="https://www.pearson.com/en-us/subject-catalog/p/balancing-coupling-in-software-design-successful-software-architecture-in-general-and-distributed-systems/P200000000372">Balancing Coupling in Software Design</a><br>Vlad Khononov · Addison-Wesley Professional · 2024<br>変更の結びつき、境界をまたぐ調整。Figure 8.2を引用。</p>
</div>

---

## 参考文献 · エージェントとの開発と学習

<div class="small">
<p><a href="https://www.oreilly.com/library/view/agentic-engineering/0642572392291/">Agentic Engineering</a><br>Addy Osmani · O'Reilly · Early Release<br>第1・2・4・5章：開発全体の反復、作業範囲と検証、コンテキスト、仕様。</p>
<p><a href="https://www.oreilly.com/library/view/regenerative-software/0642572383954/">Regenerative Software</a><br>Chad Fowler · O'Reilly · Early Release<br>第1〜4章：実装をまたいで残す知識、置き換えと廃止の条件、運用からの学習。</p>
<p><a href="https://c2.com/doc/oopsla92.html">The WyCash Portfolio Management System</a><br>Ward Cunningham · OOPSLA '92 · 1992。技術的負債の比喩を述べた原文。</p>
<p><a href="https://hillbig.github.io/human-and-ai/">ヒトとAI</a><br>岡野原大輔 · 岩波新書 · 2026<br>第8・10・21章：理解の複数の観点と、知識を共有・検証・更新する学習。<br>第15〜18・20・23章：判断と実行、確認・変更・停止、明示する条件と残る不確実さ。</p>
</div>
