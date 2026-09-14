---
marp: true
theme: 3shake-2026-presentation
paginate: true
title: おい、エージェントを使って終わらせろ
description: Forkwell Library #133。書籍の5ステップを紹介し、AIとともに仕事を終え、次の判断を変える進め方を考える。
author: nwiizo
class: reading
---

<!--
_backgroundColor: #0a1929
_color: white
_class: title dark
-->

![bg](../../brands/3shake/assets/images/3shake-background-full.png)

<img src="../../brands/3shake/assets/images/3shake-logo.png" alt="3-SHAKE" style="position: absolute; top: 100px; left: 100px; width: 240px;">

<div class="title" style="text-align: left; margin-top: 80px; margin-left: 80px; max-width: 1120px;">

# おい、エージェントを使って終わらせろ

### 誰かが次へ進めるところまで。

</div>

<div class="author-info">
2026/09/16 Forkwell Library #133<br>
@nwiizo · 40分
</div>

---

<!-- _backgroundColor: white -->

![bg left:30% fit](../../assets/shared/nwiizo_icon.jpg)

## nwiizo

<div style="font-size: 0.75em;">

株式会社スリーシェイクで、プロのソフトウェアエンジニアをやっています。<br> ブログ「<strong>じゃあ、おうちで学べる</strong>」。X / GitHub も <strong>@nwiizo</strong>。

- 趣味は格闘技、読書、グラビア。よく本を紹介しています。
- 格闘技はリフレッシュのため、と言っています。<br>たぶん普通に強くなりたいだけです。
- ソフトウェアで有名になるつもりが、<br>技術以外の文章で見つかりました。
- 技術書を訳すたび、わかることが1つ増え、<br>わからないことが3つ増えます。

</div>

---

## 書籍を出しました

<div class="body pair">
<div style="flex: 0 0 250px; text-align: center;">
<a href="https://www.diamond.co.jp/book/9784478124192.html"><img src="../../assets/images/2026/value-flow-across-roles/oi-toriaezu-owarasero.webp" alt="nwiizo著『おい、とりあえず終わらせろ』の表紙" style="height: 370px; max-width: 100%; object-fit: contain;"></a>
</div>
<div>
<p><strong>『おい、とりあえず終わらせろ』</strong><br>そうすれば「動けない自分」が変わるから</p>
<p>やることはあるのに、始められない。<br>手は動いているのに、終わりが見えない。<br>できているのに、人に見せられない。</p>
<p class="large"><strong>どこで止まっているかを言葉にして、<br>次に動けるところまで考える本です。</strong></p>
<div class="source">nwiizo 著 · ダイヤモンド社、2026年<br><a href="https://www.diamond.co.jp/book/9784478124192.html">書籍の詳細</a>。書影：ダイヤモンド社。</div>
</div>
</div>

---

## 今日お話しすること

<div class="body">
<p><strong>書籍で、仕事が止まる理由をどう考えたか。</strong><br>「決めろ・分けろ・始めろ・出せ・回せ」と、完了の考え方を紹介します。</p>
<p><strong>AIが手伝ってくれても、なぜ終わりが見えなくなるのか。</strong><br>作る速さ、判断する手間、相手へ届くまでの時間を分けて見ます。</p>
<p><strong>エージェントと、5ステップをどう進めるか。</strong><br>目標、プロンプト、判断に使う情報、実行を支える仕組みを揃えます。<br>ループエンジニアリングを、日々の依頼と改善にどう使うかも考えます。</p>
<p class="takeaway">いま止まっている仕事の、次の一歩を考える40分です。</p>
</div>

---

<!-- _class: reading transition -->
<!-- _backgroundColor: black -->
<!-- _color: white -->

<div class="body">

## 書籍で、仕事が止まる理由を<br>どう考えたか。

<p class="large">同じ「進まない」でも、止まっている場所は違います。</p>
<p>終わりが見えないのか。最初の一歩が大きいのか。人に見せるのが怖いのか。<br>理由を分けると、頑張り方ではなく、次に何を変えるかを考えられます。</p>

</div>

---

## 手順があれば、うまくいくと思いたくなる

<div class="body diagram-copy">
<p>私はプログラマーなので、仕事にも名前をつけて、分けて、手続きにしたくなります。<br>手順どおりに進めれば、何かよい結果に近づけるはずだと思ってしまうところがあります。</p>
<p>「なんだか進まない」を、「終わりが決まっていない」「一歩が大きすぎる」と言葉にする。<br>同じ「進まない」でも、名前をつけて分けると、どこを変えればよいかを話せるようになる。</p>
<img width="1100" src="../../assets/images/2026/finish-with-agents/procedure-and-feedback.svg" alt="進まない理由を分け、小さく試し、結果と相手の反応から理由と手順を見直す図。">
<p>手順を決めた時点では、相手の事情まで全部わかっているわけではありません。<br>進めた結果を見て、足りなかった前提や、変えたほうがよい手順を探します。</p>
<p class="takeaway">手順があると、進んだところと、まだ止まっているところを話しやすくなる。</p>
</div>

---

## 分けた先でも、終わりを決める

<div class="body diagram-copy explained">
<p>大きな仕事を細かくしても、一つひとつの終わりが曖昧なら、終わらない仕事が増えるだけです。<br>「何ができれば終わりか」という条件を、分けた一つにも置きます。</p>
<p>一歩が大きすぎるなら、さらに分ける。情報や判断が足りないなら、それを確かめる仕事にする。<br>仕事の一部分にも、終わりを決め、動ける大きさにする進め方を使います。</p>
<img width="1100" src="../../assets/images/2026/finish-with-agents/nested-completion.svg" alt="全体の終了条件から仕事を分け、一つの仕事にも終了条件を置く。実行して確かめた結果を全体へ戻し、次の一歩を判断する図。">
<p>実行して確かめられる大きさになったら、分けるのを止めて着手する。一つ終えた結果を全体へ戻し、次に進める仕事を確かめます。前提が違っていたなら、最初に置いた終わりから考え直してよい。</p>
<p>何をすれば進むか。何がわかったら、どこへ戻るか。それが見えれば、途中から他の人にも仕事を渡せます。</p>
<p class="takeaway">一人で抱えた仕事を、途中からでも任せられる形にしたい。</p>
</div>

---

## 終わらせるための5ステップ

<div class="body explained">
<div class="pair">
<div class="figure-column"><img class="book-figure" src="../../assets/images/2026/finish-with-agents/book-figure-01-five-steps.png" alt="図1 終わらせるための5ステップ。それぞれの行動と、今日試す方法。"></div>
<div><p>本書では、仕事を終わらせる<br>ための進め方を、<strong>5つの手順</strong>として<br>定義しました。</p><p><strong>決めろ。分けろ。<br>始めろ。出せ。回せ。</strong></p><p>終わりが曖昧なら決める。<br>大きすぎるなら分ける。<br>始められる環境を作り、相手へ出して、反応から次を変える。</p><p>順番を一度守れば終わる、という保証ではありません。<strong>止まった理由に応じて戻り、進め方を変えるための手順です。</strong></p></div>
</div>
<div class="source">『おい、とりあえず終わらせろ』図1</div>
</div>

---

## 決めろ。終わりを、まず仮に置く

<div class="body explained">
<div class="pair">
<div class="figure-column"><img class="book-figure" src="../../assets/images/2026/finish-with-agents/book-figure-08-done-criteria.png" alt="図8上段。終了条件を構成する3つの要素は、期日、分量、品質。"></div>
<div><p>「十分に調べる」だけでは、調べるほど対象が広がり、出す時点を選べません。</p><p><strong>いつまでに。どこまで。<br>何ができていればよいか。</strong></p><p>たとえば、明日の打ち合わせに向けて、候補2つの違いと選ぶ理由を1枚にする。何を揃えたら出すかを、先に仮置きします。</p><p>終了条件は仮説です。今の状態と比べれば、足りない材料を選べる。相手と確かめて違うとわかったら、理由を残して見直します。</p></div>
</div>
<div class="source">『おい、とりあえず終わらせろ』図8・上段</div>
</div>

---

## 分けろ。動けない理由まで分ける

<div class="body explained">
<div class="pair">
<div class="figure-column"><img class="book-figure" src="../../assets/images/2026/finish-with-agents/book-figure-13-uncertainty.png" alt="図13 わからなさの5層構造。ゴール、方法、能力、時間、完了を分けて問い、必要な行動を選ぶ。"></div>
<div><p>終わりを決めても、「設計する」「調査する」では、最初の操作を選べないことがあります。</p><p><strong>何がわからないかで、<br>次の一歩は変わります。</strong></p><p>ゴールが不明なら、受け手に期待を聞く。方法が見えないなら、やり方を一つ調べる。できるか不安なら、小さく試す。</p><p>「調査する」を「判断できていない点を書き出す」へ。<strong>何を開き、何をすればよいか選べる大きさにする。</strong>終えた結果を、次の判断へ使います。</p></div>
</div>
<div class="source">『おい、とりあえず終わらせろ』図13</div>
</div>

---

## 始めろ。始めるまでの手間を減らす

<div class="body explained">
<div class="pair">
<div class="figure-column"><img class="book-figure" src="../../assets/images/2026/finish-with-agents/book-figure-18-environment.png" alt="図18上段。始めたい行動の摩擦を減らし、避けたい行動の摩擦を増やす環境設計。必要なファイルを開き、今日のタスクを置き、通知をオフにするなど。"></div>
<div><p>一歩を小さくしても、資料を探し、道具を開き、通知を見る間に、着手が後ろへずれることがあります。</p><p>次の一歩に使うファイルを開く。必要な資料を隣に置く。気が散る通知は止める。</p><p><strong>やる気だけに頼らず、始めるまでに探したり迷ったりする手間を減らします。</strong></p><p>準備は、今の一歩を実行できるところで区切る。開いたファイルに一文書けば、次に足りない材料も見えてきます。</p></div>
</div>
<div class="source">『おい、とりあえず終わらせろ』図18・上段</div>
</div>

---

## 出せ。相手が動ける60点で渡す

<div class="body explained">
<div class="pair">
<div class="figure-column"><img class="book-figure" src="../../assets/images/2026/finish-with-agents/book-figure-09-sixty-points.png" alt="図9 60点の定義。相手が次のアクションを取れる状態。方向がわかり、次に何をすべきか相手が判断できる。"></div>
<div><p>直せる所を探し続けると、いつまでも人へ渡せません。そこで本書では、出す水準を「60点」と呼びます。</p><p><strong>相手が、次の行動や<br>判断を選べる状態です。</strong></p><p>方向性を見てもらう資料なら、結論・根拠・迷っている点がわかれば、相手は修正点を返せます。実際に使うものなら、必要な動作を確かめます。</p><p>誤りを4割残してよい、という意味ではありません。<strong>渡す目的に応じて範囲を絞り、その範囲の条件を満たします。</strong></p></div>
</div>
<div class="source">『おい、とりあえず終わらせろ』図9</div>
</div>

---

## 回せ。反応を、次の行動へ変える

<div class="body explained">
<p>出すと、作る側だけでは気づけなかった、相手の困りごとが見えてくることがあります。<br>ただ、指摘を受けて落ち込むだけでも、言われた文面を直すだけでも、次の迷いが残ることがあります。</p>
<div class="pair">
<div><img class="feedback-figure" src="../../assets/images/2026/finish-with-agents/book-figure-26-feedback-first.png" alt="図26前半。感情と事実を分ける。要点を言い換える。"></div>
<div><img class="feedback-figure" src="../../assets/images/2026/finish-with-agents/book-figure-26-feedback-last.png" alt="図26後半。行動に落とし、期限を決める。結果を必ず戻す。"></div>
</div>
<p>「わかりにくい」なら、結論が見えないのか、比較材料が足りないのかを確かめる。<br>「冒頭に結論と比較を置き、明日渡す」まで行動に落とし、直した結果を戻します。<br><strong>相手の反応を、何をいつ変えるかまで具体的にするのが「回せ」です。</strong></p>
<div class="source">『おい、とりあえず終わらせろ』図26・4ステップを左右に分けて掲載</div>
</div>

---

## 準備が進んでも、仕事が進んだとは限らない

<div class="body explained">
<div class="pair">
<div class="figure-column"><img class="book-figure" src="../../assets/images/2026/finish-with-agents/book-figure-02-pseudo-completion.png" alt="図2 擬似完了感のループ。情報を集め、ページが増えても核心がなく、準備へ戻る循環。"></div>
<div><p>手順を知っても、準備に時間を使ったことを、完了に近づいたことと取り違える場合があります。</p><p><strong>本書でいう「擬似完了感」です。</strong></p><p>資料が増え、体裁が整っても、相手が必要とする結論や根拠が欠けていることがある。</p><p>準備が不要なのではありません。<strong>その準備によって、渡すべき内容の何ができたかを確かめます。</strong></p><p>時間や作業量だけで進み具合を測らないために、この区別を使います。</p></div>
</div>
<div class="source">『おい、とりあえず終わらせろ』図2</div>
</div>

---

## 相手が次へ進めるかを、終了条件に入れる

<div class="body explained">
<div class="pair">
<div class="figure-column"><img class="book-figure" src="../../assets/images/2026/finish-with-agents/book-figure-03-two-completions.png" alt="図3 自分的完了と他者的完了のズレ。自分が十分と思う基準と、相手が進められる基準を比べ、相手に確認する。"></div>
<div><p>作業の手応えだけで終わりを判断しないために、成果を使う相手が次へ進めるかも確かめます。</p><p><strong>自分的完了</strong><br>自分が十分だと感じる。</p><p><strong>他者的完了</strong><br>相手が次へ進めると判断する。</p><p>たくさん調べたかに加えて、相手が選ぶための根拠が揃ったかを見る。誰が何に使うかを確かめ、終了条件に入れます。</p><p>全員を満足させる必要はありません。受け手が、明日の自分でもよい。</p></div>
</div>
<div class="source">『おい、とりあえず終わらせろ』図3</div>
</div>

---

<!-- _class: reading transition -->
<!-- _backgroundColor: black -->
<!-- _color: white -->

<div class="body">

## AIが手伝ってくれても、<br>なぜ終わりが見えなくなるのか。

<p class="large">作る速さが変わっても、何をもって終えるかは残ります。</p>
<p>判断や確認もAIに任せられるのに、どこまで任せるかが曖昧なら、途中で止まる。<br>自分の作業が減ったことと、相手が使えるようになったことを分けて考えます。</p>

</div>

---

## エージェントには、途中の判断も任せられる

<div class="body diagram-copy explained">
<p>仕事を相手へ届けるには、作る以外に、調べる・確かめる・選ぶ仕事も必要です。<br><strong>エージェント</strong>は、道具を使い、結果を見て作業を進めるAIです。途中の判断にも使えます。</p>
<img width="1100" src="../../assets/images/2026/finish-with-agents/delegated-decisions.svg" alt="目標、終了条件、任せる範囲を共有し、次の一手の選定、作成と確認、採用と統合を進める図。結果から計画と次の一手を選び直し、相手が使えるところへつなぐ。">
<p>何を読むか、どの方法を試すか、結果が足りなければどこを直すか。<br><strong>途中でわかったことから計画を変え、採用・統合まで進める判断も、任せる範囲に入れられます。</strong></p>
<p>作業の中で「動いた」と確かめても、相手に必要なものを選んだかは別の問いです。<br>使った反応から目的や終了条件を見直す案も、AIと考えます。<br>目的や許された範囲を変える必要が出たら、理由と選択肢を相談してもらう。</p>
<p><strong>一手ずつ指示する仕事を減らし、何を任せれば完了まで進めるかを考えたい。</strong></p>
</div>

---

## 考えることまで任せた先に、仕事がある

<div class="body explained">
<p>計画や判断をAIにも手伝ってもらえるなら、<br>「人間が考え、AIが作る」と役割を固定しておく必要はありません。<br>何を聞くかも、どの案がよいかも、一緒に考えられます。</p>
<p>そのうえで、提案を採用すると、誰かの仕事や生活が変わります。<br>案を作り直せても、その案に従って人が使った時間までは戻りません。</p>
<p>だから、案の出来栄えに加えて、使ったあとに困りごとを見つけ、直せるかまで考えます。<br>考える作業を任せられるほど、成果を使う人との関係も、任せ方に含める必要があります。</p>
<p class="large"><strong>誰のために使い、結果をどう確かめ、<br>違っていたら誰が変えられるか。</strong></p>
<p>私は、任せる能力が広がるほど、ここまでを仕事に含めたい。<br>不足した情報を探し、確認方法を考え、結果を調べるところからAIへ任せます。<br><strong>一人で準備と確認を抱えず、相手が使えるところまで一緒に進めたい。</strong></p>
</div>

---

## 暗黙の判断を、確かめられる形にする

<div class="body diagram-copy explained">
<p>成果を誰が使い、どこまで任せてよいかは、依頼文に全部書かれているとは限りません。「この相手には先に相談する」「この品質なら一度出す」。職場では、こうした判断が人の記憶や、その場の会話に残っていることがあります。</p>
<img width="1100" src="../../assets/images/2026/finish-with-agents/tacit-assumptions.svg" alt="未確認の判断を補って作業を進めると、後の成果にもずれが広がる。必要な前提を確かめ、共有してから進める経路と比較する図。">
<p>AIが不足を補えば、作業は先へ進めます。そこで補った判断が違っていたら、その判断を前提に作ったものや説明まで、あとから直すことになります。作るのが速いほど、最初の思い違いから先へ進めてしまう。</p>
<p><strong>目的、優先順位、任せる範囲、確認する条件を、見える場所に置く。</strong><br>私は、これを書く時間を、あとで完成品から意図を探し直さないために使いたい。</p>
<p>全部を先に決め切る必要はありません。AIと曖昧な点を探し、今の判断に必要なところから確かめる。人への引き継ぎにも使える形で残します。</p>
</div>

---

## AIが速くても、仕事が終わらない理由

<div class="body diagram-copy explained">
<p>目的や判断の前提が曖昧なまま作ると、できたあとで選び直しや確認が必要になります。<br>作る部分が速くなっても、その仕事を誰がどこまで進めるかが曖昧なら、途中で止まります。</p>
<img width="1100" src="../../assets/images/2026/finish-with-agents/generation-to-completion.svg" alt="増えた案には採用の判断、整った説明には実物の確認、分担した成果には統合が必要になる。それらを進めて相手が使える状態へつなぐ図。">
<p>作る量に合わせて、採用・確認・統合も進める必要があります。<br>生成だけを速くしても、その先が止まれば、相手へは届きません。</p>
<p>これは、AIには作ることしか任せられない、という話ではありません。<br>終わりまでに必要な仕事を見つけ、その確認や判断も依頼へ含める、という話です。</p>
<p class="takeaway">5ステップを、任せた仕事を完了へつなぐために使う。</p>
</div>

---

## 作る速さと、届く速さを分けて見る

<div class="body diagram-copy explained">
<p>終わりを「相手が使える状態」と考えると、作成の前後にかかった時間も見えてきます。</p>
<img width="1100" src="../../assets/images/2026/finish-with-agents/creation-and-delivery.svg" alt="作る、確認を待つ、確認・修正・採用、使うという流れ。作る時間と、相手が使えるまでの時間を分け、確認待ちに仕事が積み上がる場所を示す図。">
<p>作るのが早く終わっても、確認待ちが積み上がれば、<br>相手が使えるまでの時間は同じようには縮まりません。</p>
<p>その状態で作る量だけ増やすと、受け取る側には、比較する案や<br>確認する差分がさらに届く。忙しく動く場所と、仕事が止まる場所が<br>別々になることがあります。</p>
<p>確認もAIへ任せる、受け手が判断できる材料を添える、一度に渡す量を絞る。<br>どこで待っているかがわかれば、作成をさらに速くする以外の手を選べます。</p>
<p class="takeaway">自分の作業時間に加えて、相手が使えるまでを見る。</p>
</div>

---

<!-- _class: reading transition -->
<!-- _backgroundColor: black -->
<!-- _color: white -->

<div class="body">

## エージェントと、<br>5ステップをどう進めるか。

<p class="large">本書の手順を、任せた仕事が相手へ届くところまで使います。</p>
<p>何を終えるかを共有し、任せられる単位に分ける。<br>情報と道具を揃えて進め、根拠とともに渡し、結果から次の任せ方を変える。</p>

</div>

---

<!-- _class: reading transition -->
<!-- _backgroundColor: #0a1929 -->
<!-- _color: white -->

<div class="body">

## 決めろ

<p class="large">終わりを仮に置く。<br>AIと曖昧さを調べ、何を優先するかを共有する。</p>
<p>手順まで全部指定しなくても、<br>何ができれば終わりか、何を守るかは一緒に確かめられる。</p>

</div>

---

## 何を作るかの前に、何を解決するか

<div class="body explained">
<div class="pair">
<div class="figure-column"><img class="book-figure" src="../../assets/images/2026/finish-with-agents/book-figure-07-problem.png" alt="図7の比較部分。何を作るかという表面の問題から、誰の何を解決するかという本当の問題へ。資料、競合調査、不具合の例。"></div>
<div><p>最初に決めたいのは、相手のどの困りごとを解くかです。作るものの名前だけでは、必要な内容を選べません。</p><p>AIが5ページの資料を作れても、費用と期待する効果がなければ、予算を判断する仕事は止まったままです。</p><p><strong>何を作ったかに加えて、<br>相手が何をできるように<br>なったかを確かめます。</strong></p><p>AIへも、作るものと一緒に、誰のどんな判断や行動を助けたいかまで渡します。その目的から、調べる内容や確認方法も考えてもらいます。</p></div>
</div>
<div class="source">『おい、とりあえず終わらせろ』図7「表面の問題と本当の問題」・比較部分</div>
</div>

---

## 「最適」を選ぶ前に、誰の都合かを決める

<div class="body diagram-copy explained">
<p>相手の困りごとを選んでも、作る側と使う側で、望ましい案が違うことがあります。<br>AIに「早く終わる案」を頼むとき、誰の時間を短くしたいのか。</p>
<img width="1100" src="../../assets/images/2026/finish-with-agents/whose-effort.svg" alt="一つの案を、作る人の作成と確認の手間、使う人が繰り返し負う操作と確認の手間の両方から見る図。">
<p>作る時間を短くした分、利用者が毎回手順を覚えるなら、負担の置き場所が変わる。<br>もちろん、使いやすさを際限なく作り込む時間もありません。</p>
<p>比較する軸が違えば、同じ案への評価も変わります。<br>「最適な案を選んで」だけでは、この優先順位までAIが補うことになります。</p>
<p><strong>今回は誰の負担を減らし、そのために何を引き受けるか。</strong><br>速さ、費用、使いやすさの優先順位と理由をAIへ渡し、案を比較します。<br>採用したあと誰に何が残るかまで、私は「決める」に含めたい。</p>
</div>

---

## 終了条件を、AIと問い直す

<div class="body explained">
<p>「いい感じに調べて」では、自分も、どこで終わるかを判断できない。<br>先に完璧な指示を書くことまで、一人で抱えなくてよいと思います。</p>
<div class="panel">
<p><strong>誰が、何を判断するための仕事か。</strong></p>
<p>その判断に必要な材料と、今回調べなくてよい範囲は何か。<br>まだ曖昧な前提は何か。何を確かめれば、一回終えられるか。</p>
</div>
<p>AIに不足や選択肢を洗い出してもらい、受け手と必要な点を確かめる。<br><strong>相手の意図として確認したことと、仮に置いたことを分けて残す。</strong></p>
<p>たとえば「費用を優先する」と仮置きしたなら、相手が本当に優先したいのは<br>費用か、導入までの時間かを確かめる。AIが出したもっともらしい答えを、<br>相手と決めた条件にすり替えず、今回終える範囲を一緒に絞ります。</p>
</div>

---

## 目標を、実物で確かめられる形にする

<div class="body diagram-copy explained">
<p>エージェントに渡すgoalは、達成したい状態です。<br>「手順書を書く」という作業の先で、誰が何をできるようになってほしいのかを置きます。</p>
<p>目標に対応する終了条件と確認方法も渡し、作業結果から、続けるか終えるかを判断できるようにします。</p>
<img width="1100" src="../../assets/images/2026/finish-with-agents/goal-and-evidence.svg" alt="目標を終了条件へ具体化し、成果と実測で確かめる図。未達なら、必要な作業を進めて確かめ直す。">
<p>新しく参加した人が開発環境を起動できるようにするなら、文書の存在だけでは足りません。<br>対象の環境で手順を試し、起動できたか、途中で補った知識は何かまで確かめます。<br>確認方法を考え、実行するところまでAIへ任せられます。</p>
<p><strong>ゴールを具体的にすると、途中の手順を任せながら、終えたかを確かめやすくなります。</strong><br>本書の「終了条件」を、エージェントが途中で立ち戻れる判断基準にします。</p>
<div class="source"><a href="https://learn.chatgpt.com/use-cases/follow-goals">Codex · Follow a goal</a></div>
</div>

---

## プロンプトには、任せる判断も書く

<div class="body diagram-copy explained">
<p>依頼文として書くプロンプトには、目的や制約と一緒に、調べる、作る、確かめる、そのどこまで任せるかを書けます。「何を作るか」だけだと、作った先で必要な確認が仕事から抜けることがあります。</p>
<p>たとえば「集計のずれを再現し、原因を調べて修正してほしい。既存の集計条件を保ち、修正前後を同じ入力で比べる。原因調査と確認方法の選定も任せる。集計条件の変更が必要なら、理由を返してほしい」。</p>
<img width="1100" src="../../assets/images/2026/finish-with-agents/prompt-decision-scope.svg" alt="集計のずれを直す目標と、既存の集計条件を守る範囲の中で、調査、修正、確認方法の判断を任せる。集計条件を変える必要が出たときは理由を戻す図。">
<p>この依頼では、調べ方や直し方は選んでもらい、集計の意味を変える判断は戻してもらう。どこで相談するかがわかれば、その手前まで一手ずつ確認を挟まずに進められます。</p>
<p>具体的にするのは、達成したいこと、守る条件、判断を戻してほしい場面。手順を全部決め切らず、自分が知らなかった進め方を見つけてもらえる余地も残します。</p>
<p><strong>うまい言い回しを探す前に、自分がどこまで任せたいのかを言葉にする。</strong></p>
<div class="source"><a href="https://www.anthropic.com/engineering/effective-context-engineering-for-ai-agents">Anthropic · Effective context engineering for AI agents</a></div>
</div>

---

## 任せる範囲は、間違えたときから考える

<div class="body diagram-copy explained">
<p>難しい作業だから細かく見る。簡単な修正だから全部任せる。<br>それだけでは、間違えたときに誰が困るかを見落とします。</p>
<img width="1100" src="../../assets/images/2026/finish-with-agents/delegation-and-recovery.svg" alt="誤りを見つけられるか、戻せるか、確認前に誰へ影響するかを調べ、不足を整えた範囲で作業と確認を任せる図。">
<p>隔離した環境で試せる大きな変更なら、確認までまとめて任せられます。<br>一行の変更でも、多くの人が使う設定なら、反映する前に確かめる範囲は広い。</p>
<p><strong>任せる範囲を広げたいなら、誤りを見つけて対処できるかも確かめる。</strong><br>判断に迷うなら、必要な確認や戻し方を調べるところからAIに任せます。</p>
</div>

---

## 終了条件を変えるなら、理由も共有する

<div class="body diagram-copy explained">
<p>終了条件は仮説なので、新しい事実が出たら変えてよい。<br>ただし、どの条件で進め、何が足りず、なぜ変えるのかを残します。</p>
<img width="1100" src="../../assets/images/2026/finish-with-agents/criteria-revision.svg" alt="置いた終了条件を実行結果から見直すとき、変更理由と影響を残し、前の条件で進めている人やAIにも共有する図。">
<p>目的は変わっていないのに、テストが通らないから期待する結果を消す。<br>必要だった確認を黙って外す。それでは、元の目的を達成したかを測れません。</p>
<p>一方で、調査によって必要なデータが手に入らないとわかったなら、<br>代わりに何を確かめれば相手が判断できるかを相談する。先に渡した条件で<br>動いている人やAIがいるため、変えた点と、その影響も伝えます。</p>
<p><strong>前提を更新することと、未達を隠すことを分ける。</strong><br>今回は何を出せるかを決め直して、関係する人とAIへ共有します。</p>
</div>

---

<!-- _class: reading transition -->
<!-- _backgroundColor: #0a1929 -->
<!-- _color: white -->

<div class="body">

## 分けろ

<p class="large">動ける大きさから、<br>任せて、確かめて、つなげられる大きさへ。</p>
<p>AIが一度に作れる量に合わせると、<br>受け取る側が判断できる量を超えることがある。</p>

</div>

---

## 分ける前に、何がわからないかを見る

<div class="body diagram-copy explained">
<p>AIに分解を頼んで手順が並んでも、ゴールが曖昧なままなら、AIが補ったゴールへ向かう計画になっているかもしれません。</p>
<p>本の「わからなさの5層」で見ると、方法の説明が増えても、ゴールや完了についての疑問が解けたとは限らない。</p>
<img width="1100" src="../../assets/images/2026/finish-with-agents/uncertainty-before-plan.svg" alt="期待の不明点は受け手に確かめ、方法の不明点は調べ、実行できるかは試す。得られた結果から次の仕事を分ける図。">
<p><strong>方法が不明なら、手順を調べる。期待が不明なら、受け手に聞く。</strong><br>まだ確かめていない前提を一つ見つけて、それを調べる仕事にする。</p>
<p>ゴールが揃ったら、その先の作業が頼る前提も一つ試す。必要なデータを読めるか。期待する結果を測れるか。調査や試作もAIへ任せ、確かめた結果から、次に進める仕事を分けます。</p>
<p><strong>作業が細かく並んだかに加えて、何がわかり、どこから進められるかを見る。</strong></p>
</div>

---

## AIに任せる一回を、学べる大きさにする

<div class="body explained">
<div class="pair">
<div class="figure-column"><img class="book-figure" src="../../assets/images/2026/finish-with-agents/book-figure-14-learning-from-failure.png" alt="図14 失敗の2種類。新しいことに挑戦して次の行動を学ぶ失敗と、同じミスを繰り返す失敗を分ける。"></div>
<div><p>未確認の前提に頼る仕事を一度に進めると、結果が違ったとき、どの前提から直すべきかを探す仕事も増えます。</p><p>どの前提で頼み、何を変え、何が起きたか。一度に変えるものを絞ると、結果の違いを追いやすくなります。</p><p><strong>うまくいかなかった一回から、次に変える条件を見つけます。</strong></p><p>同じ失敗が続くなら、頼み直すだけでなく、渡す情報や確認方法も見直す。次の一回で、予想した違いが出たかを確かめます。</p></div>
</div>
<div class="source">『おい、とりあえず終わらせろ』図14「失敗の2種類」</div>
</div>

---

## 小さく分けても、確認が軽くなるとは限らない

<div class="body diagram-copy explained">
<p>一つのファイルに絞っても、その変更が多くの画面に影響するなら、<br>確認する範囲は広いままです。作業の小ささと、影響の小ささは<br>別々に見る必要があります。</p>
<img width="1100" src="../../assets/images/2026/finish-with-agents/change-and-impact.svg" alt="一つの共通設定の変更が複数の利用先へ広がる図。変更する範囲と、確認が必要な影響範囲を分けて示す。">
<p>何行変えるか、誰が担当するかに加えて、一緒に変えるものと、<br>何を確かめれば出せるかを調べます。</p>
<p>分けるたびに、受け渡す形式や、共有する前提を合わせる仕事も生まれます。<br>一緒に変えなければ成り立たないものまで分けると、その調整で止まる。<br><strong>分けろは、こちらが確かめて出せる一回分を作ること。</strong></p>
</div>

---

## 分けた仕事は、統合まで終わらせる

<div class="body diagram-copy">
<p>エージェントごとに「完了」が並んでも、組み合わせて使えるとは限りません。<br>項目の意味や受け渡す形式が違えば、別々に動いても全体では止まります。</p>
<img width="1100" src="../../assets/images/2026/finish-with-agents/parallel-integration.svg" alt="共通の目標や受け渡す情報を揃えて仕事を分担し、採用する成果を選んで組み合わせて確かめる図。">
<p>統合では、ただ全部を足すのではなく、目的に合うものを選びます。<br>何を採用し、何を見送り、その結果を誰が使うかまで決めます。</p>
<p><strong>一体にどこまで任せるかと、何体に分担するかは、別々に決めます。</strong><br>最後につなぐ担当と確認方法も置き、統合にもAIを使う。<br>待ち時間が調整の時間に変わるだけなら、担当を増やす理由にはしません。</p>
</div>

---

## 待つ理由に合わせて、分け方を変える

<div class="body diagram-copy explained">
<p>担当を増やしても、必要な情報や判断が届かなければ、その仕事は始められません。<br>分担した先で、人やAIが何を待っているかを見ると、分け方を変える手がかりになります。</p>
<img width="1100" src="../../assets/images/2026/finish-with-agents/waiting-prerequisites.svg" alt="変更の絡み合い、知識の不足、先行する判断待ちを、それぞれ接続の確認、前提の共有、受け渡しの整理へつなげ、進める条件を揃える図。">
<p>わかっていないことが多い間は、一緒に探る。前提が揃ったら、<br>任せて進められる範囲を広げる。分業の形も、途中で変えてよい。</p>
<p class="takeaway">エージェントを増やす前に、何を待てば進めるのかを見る。</p>
</div>

---

<!-- _class: reading transition -->
<!-- _backgroundColor: #0a1929 -->
<!-- _color: white -->

<div class="body">

## 始めろ

<p class="large">取りかかるまでの手間を減らす。<br>着手したあとも、結果を見て進められる環境を渡す。</p>
<p>必要な情報と道具を揃え、結果から次の一手を選ぶ。<br>途中で止まったときに、続きから再開できるところまで考えます。</p>

</div>

---

## AIにも、始められる環境を渡す

<div class="body diagram-copy explained">
<p>仕事を任せられる大きさに分けても、資料を読めず、道具を動かせなければ始まりません。<br>必要な情報を読めて、道具を使えて、結果を確認できる。<br>この実行を支える仕組みを、ハーネスと呼びます。モデルと道具をつなぎ、作業を進めます。</p>
<img width="1100" src="../../assets/images/2026/finish-with-agents/agent-work-system.svg" alt="ハーネスが、目標やプロンプトを含むコンテキスト、次の行動を選ぶモデル、道具と実行環境をつなぎ、結果を次の入力へ戻す図。">
<p>モデルがその時点で判断に使う情報を、コンテキストと呼びます。プロンプトもその一部です。<br>実際の入力には、製品側の指示、使える道具の説明、読んだ資料、実行結果も加わります。</p>
<p><strong>いま使っているエージェントに、小さな作業を一つ、結果の確認まで任せてみる。</strong><br>資料が読めない、確認用のコマンドが動かないなど、見つかった不足から整えます。<br>本書の「始められる環境」を、判断と実行がつながる条件として考えます。</p>
<div class="source"><a href="https://openai.com/index/unrolling-the-codex-agent-loop/">OpenAI · Unrolling the Codex agent loop</a></div>
</div>

---

## 置いた資料と、いま読める情報は違う

<div class="body diagram-copy">
<p>まず、判断に使ってほしい情報が、実際のコンテキストへ届くかを見ます。<br>リポジトリに保存した情報が、すべて毎回の入力に入っているわけではありません。</p>
<img width="1100" src="../../assets/images/2026/finish-with-agents/context-selection.svg" alt="保存した資料、コード、実行履歴から必要な範囲を読み、現在のコンテキストに入れる図。採用した判断や未解決点は、あとで読めるように記録する。">
<p>「前に説明した」「同じフォルダに置いた」だけで、今回も使われるとは考えない。<br>関係する資料へ辿れるか、実際に読めたか、今の作業に使える内容かを見ます。<br>この調査と情報の選び直しも、エージェントへ任せます。</p>
<p><strong>人へ引き継ぐときと同じように、知っていてほしいことへ辿れる形を作る。</strong></p>
<div class="source"><a href="https://www.anthropic.com/engineering/effective-context-engineering-for-ai-agents">Anthropic · Effective context engineering for AI agents</a></div>
</div>

---

## 次に判断するための情報を選ぶ

<div class="body diagram-copy explained">
<p>コンテキストには上限があります。大量の情報を渡せるモデルでも、古い指示や、採用しなかった案が混ざれば、どれを使うか判断する仕事が増えます。短ければよいという話でもありません。必要な前提を削ると、推測で埋める余地が増える。</p>
<img width="1100" src="../../assets/images/2026/finish-with-agents/context-priorities.svg" alt="最初に渡す目標や条件と、必要なときに探す資料を現在の判断へつなぐ。指示、採用した判断、参考情報を区別し、今も成り立つか確かめる図。">
<p><strong>最初に、今回の目標、守る条件、資料を探す入口を渡す。</strong><br>細部は必要になったときに読み、長いログは要点と元の記録の場所を返す。開始時の読み込みを減らす分、途中の検索には時間がかかる。その配分も仕事に合わせます。</p>
<p>依頼として守ること、採用した判断、参考として読んだ情報も分けて残します。古い資料に書かれた方針を、今回の決定として扱ってほしくはありません。</p>
<p>AIには「足りない資料は何か」「この情報は今も成り立つか」も調べてもらう。<strong>情報を全部こちらが選び切るより、必要な情報を探して確かめられるようにしたい。</strong></p>
<div class="source"><a href="https://www.anthropic.com/engineering/effective-context-engineering-for-ai-agents">Anthropic · Effective context engineering for AI agents</a></div>
</div>

---

## 指示と、実行できる範囲を揃える

<div class="body diagram-copy explained">
<p>必要な情報を渡したら、道具が使える範囲も、任せた範囲に合わせます。<br>「本番のデータは変えずに調べて」と書くことと、<br>その道具から本番へ書き込めないようにすることは、違う仕事です。</p>
<img width="1100" src="../../assets/images/2026/finish-with-agents/harness-enforcement.svg" alt="目的や制約を指示として伝えることと、権限や隔離で実際の操作を制御することを分け、両方を揃える図。">
<p>書き換えを任せないなら、読み取りだけの権限で調べられるようにする。<br>変更を試すなら、影響を分けた環境と、結果を確かめる手段を用意する。<br>指示文を強くして注意を求めるだけでなく、道具が動く範囲も合わせます。</p>
<p><strong>その範囲で調べ、試し、直せるから、途中の操作を細かく見張る必要を減らせます。</strong><br>ハーネスを整えるのは、任せてよい仕事を実際に任せられるようにするためです。</p>
<div class="source"><a href="https://www.anthropic.com/engineering/managed-agents">Anthropic · Scaling Managed Agents</a></div>
</div>

---

## 失敗の表示にも、次の仕事がある

<div class="body diagram-copy explained">
<p>道具を動かせても、結果の意味がわからなければ、次の一手を選べません。<br>「失敗しました」だけでは、コードを直すのか、環境を整えるのかがわからない。<br>テストで期待と違う結果が出たことと、テスト自体を起動できなかったことを分けます。</p>
<img width="1100" src="../../assets/images/2026/finish-with-agents/tool-feedback.svg" alt="実行した対象と条件、起きた結果、詳しい証拠の場所を一緒に返し、次の調査や修正を選べるようにする図。">
<p>実行結果には、対象の版、試した条件、エラーの要点、詳しい記録への参照を残す。<br>大量のログを毎回読み直させず、必要なら元の記録へ戻れるようにします。<br>「成功」も、コマンドが終わったのか、必要な動作まで確かめたのかを区別します。</p>
<p><strong>次の一手を選べる結果が返れば、同じ操作を繰り返す以外の進み方を選べます。</strong><br>道具の返し方も、エージェントが仕事を終えられるかに関わります。</p>
<div class="source"><a href="https://www.anthropic.com/engineering/writing-tools-for-agents">Anthropic · Writing effective tools for agents</a></div>
</div>

---

## 次の指示を、観測した結果から作る

<div class="body diagram-copy explained">
<p>結果が次の判断に使える形で返れば、毎回こちらが「調べて」「直して」と言わずに、<br>エージェントが不足を調べ、次の一手を選べます。</p>
<p><strong>何を観測し、目標とどう比べ、結果を次の行動へどう戻すかを設計する。</strong><br>私の考えるループエンジニアリングです。単に同じ依頼を繰り返すこととは分けて考えます。</p>
<img width="1100" src="../../assets/images/2026/finish-with-agents/observed-action-loop.svg" alt="現状を読み、終了条件と比べ、必要な一手を実行する。結果を次の比較へ戻し、条件を満たした場合と進めない場合にはループを抜ける図。">
<p>不具合なら、再現・調査・修正・検証まで任せる。<br>調べた結果、変更が不要なら、その根拠を残して終える。<br>結果が違えば、許された範囲で直し、もう一度確かめます。</p>
<p><strong>自分の返事を待つ時間を減らし、確かめて直すところまで進めたい。</strong></p>
<div class="source"><a href="https://syu-m-5151.hatenablog.com/entry/2026/06/23/215158">nwiizo「ループエンジニアリングは、サイバネティクスの再発見だ」</a></div>
</div>

---

## 一回の応答と、仕事の完了を分ける

<div class="body diagram-copy explained">
<p>「ここまでできました」という応答が返っても、依頼した仕事が全部終わったとは限りません。<br>未達なら、何を残して、どう続きを始めるかも、ループを動かす仕組みに含めます。</p>
<p>Codexの<code>/goal</code>は、目標を保持し、複数の応答にまたがって作業を続ける機能です。<br>次の「続けて」を自分が送る部分も、仕組みに任せられます。</p>
<img width="1100" src="../../assets/images/2026/finish-with-agents/goal-continuation.svg" alt="目標、進捗、状態を引き継ぎ、一回の作業を越えて継続する図。未達で続行できるなら次へ進み、完了と中断を区別する。">
<p>公開実装では、目標の状態を保存し、続行できる状態なら次の作業を開始します。<br>ただし、継続の仕組みがあることは、終了条件を必ず満たす保証にはなりません。<br>予算や情報不足で止まることもあり、完了と記録する判断にも誤りはあり得ます。</p>
<p><strong>完了の判定まで任せるなら、条件に対応する実物と確認結果を残してもらう。</strong><br>長く動いたかより、目標との差が減り、受け手へ渡せる状態になったかを見ます。</p>
<div class="source"><a href="https://learn.chatgpt.com/use-cases/follow-goals">OpenAI · Follow a goal</a> ／ <a href="https://github.com/openai/codex/tree/6f39a47bb3b04de4c804187bfbf55edc56939aab/codex-rs/ext/goal">Codexのgoal実装</a></div>
</div>

---

## 「終わるまでやって」に、出口も渡す

<div class="body diagram-copy explained">
<p>終わりを目指す仕事にも、続けても進まない場面はあります。<br>「終わるまで」を、同じ操作を何度でも試してよい意味にはしたくありません。</p>
<img width="1100" src="../../assets/images/2026/finish-with-agents/loop-exit-conditions.svg" alt="実際の結果を終了条件と比べて完了、続行、中断を分ける。進める条件が不足したときは再開条件を、時間や費用などの上限では未達の仕事を残して返す図。">
<p>調べられる不足なら、資料や道具を見直し、許された範囲で進めてもらう。<br>関係者の判断が必要なら、選択肢と違い、再開に必要な判断を返す。<br>同じ試行から新しい情報が出ないなら、試し方を変えるか、そこで区切ります。</p>
<p>上限は指示に書くだけでなく、実行する仕組みでも止められるようにする。<br>延ばすときは、次に何がわかる見込みかを確かめます。<br><strong>止まる条件と残す情報を決め、際限ない試行と、再開時の調べ直しを減らします。</strong></p>
</div>

---

## 会話が終わっても、仕事を再開できるようにする

<div class="body diagram-copy explained">
<p>長く続く仕事や、判断待ちで区切った仕事では、会話の外にも再開に必要な情報を残します。<br>コンパクションは、履歴を圧縮し、限られたコンテキストで作業を続ける仕組みですが、<br>あとで必要になる細部が、圧縮した情報から落ちることもあります。</p>
<img width="1100" src="../../assets/images/2026/finish-with-agents/context-handoff.svg" alt="前の会話から目標、判断の理由、未解決点、成果と確認結果の場所を引き継ぎ、現在の実物と照合して再開する図。">
<p>終了条件、採用した判断と理由、残る問題、次に確かめることを、あとで読める形に残す。<br>この引き継ぎもAIへ任せます。元の記録や実物へ戻れる参照も、一緒に残してもらう。<br>再開するときは今の状態と照合し、終わった調査を不要に繰り返さないようにします。</p>
<p><strong>記録しただけでは、次の会話で使われるとは限りません。</strong><br>再開時に読む場所を示し、次の実行が必要な記録を判断に使えるところまでつなげます。</p>
<div class="source"><a href="https://www.anthropic.com/engineering/managed-agents">Anthropic · Scaling Managed Agents</a> ／ <a href="https://www.anthropic.com/engineering/effective-harnesses-for-long-running-agents">Effective harnesses for long-running agents</a></div>
</div>

---

## 反応が返る速さに、作業の速さを合わせる

<div class="body diagram-copy explained">
<p>結果が返るまでに時間がかかる仕事では、待っている間に次の修正を足せます。<br>けれど、前の結果を見ずに変更を重ねると、何が効いたかを見分けにくくなる。</p>
<img width="1100" src="../../assets/images/2026/finish-with-agents/feedback-and-versions.svg" alt="版Aへの確認結果を受け取ってから、結果に応じて版Bを作る。待つ間は独立した別の仕事へ進み、どの版への結果かを保つ図。">
<p>CIの結果を受け取る前に同じ不具合への修正を重ねると、前の修正が効いたかも知らずに、次の手を選ぶことになります。資料も、相手が読んでいる途中で版を増やすと、確認する対象がずれます。</p>
<p><strong>渡した版と結果を結びつけ、結果に応じた修正は、その結果を見てから進める。</strong><br>待っている間は、独立して進められる別の仕事へ。返事が遅いことを、内容が悪いと決めつけて直し続けない。</p>
<p>確認待ちが積もるなら、同時に進める量も絞ります。<br><strong>作る速さを、結果を受け取って判断できる速さにつなげたい。</strong></p>
</div>

---

## 「動いた」と「使ってよい」の間を埋める

<div class="body diagram-copy explained">
<p>試作で方向性を確かめられたなら、それも一回の完了です。<br>ただ、手元で動いたことは、そこで試した条件の結果です。</p>
<p>エージェントが試作を早く作れるほど、そのまま使いたくなる場面もあります。<br>試作を見る人から、実際に使う人へ受け手が変わるなら、必要な確認も変わります。</p>
<img width="1100" src="../../assets/images/2026/finish-with-agents/prototype-to-use.svg" alt="隔離した試作で方向性を確かめた完了から、実際に使う人へ渡すための確認へ進む。受け手や利用場面が変わったら、権限、失敗時の動作、データ、戻し方を終了条件に含める図。">
<p>次に使う場面が変わるなら、終了条件も置き直します。<br>AIには確認や修正も任せられる。<strong>確かめた範囲に合わせて任せ方を変える。</strong><br>60点を、未確認のまま本番へ出す理由にはしません。</p>
</div>

---

<!-- _class: reading transition -->
<!-- _backgroundColor: #0a1929 -->
<!-- _color: white -->

<div class="body">

## 出せ

<p class="large">相手が次に動ける形で渡す。<br>成果に、確かめた根拠と残る問いを添える。</p>
<p>作る時間が減っても、受け手の調べ直しが増えたなら、<br>仕事全体が同じだけ早く終わったとは言えない。</p>

</div>

---

## 完了報告のあとに、確認の仕事を隠さない

<div class="body diagram-copy explained">
<p>「できました」だけで渡すと、受け手は、どの条件を満たし、何が残っているかを調べ直します。<br>成果と一緒に、確認した根拠と、次に判断してほしい点を渡します。</p>
<img width="1100" src="../../assets/images/2026/finish-with-agents/completion-evidence.svg" alt="成果、確かめた根拠、残る問いを揃えて渡し、受け手が使い始めたり次の判断をしたりできるようにする図。">
<p>この3つを揃える仕事も、エージェントへ任せます。<br>実物を確認し、入力や利用場面を変えて試した結果、開いて確かめた根拠へ辿れるようにしてもらう。<br>未確認の条件もまとめ、報告を受け取ってから、人が全部調べ直す形を変えます。<br><strong>「なぜよいか」の説明に納得しただけで、条件を満たした事実にはしません。</strong></p>
<p>ログを全部貼るだけでも、読む仕事は増える。<br><strong>主張から根拠へ辿れて、受け手が何を判断すればよいかわかる形にする。</strong><br>私は、相手の調べ直しを減らすところまで、他者的完了に含めたい。</p>
</div>

---

## 同じ見落としを、確認でも繰り返さない

<div class="body diagram-copy explained">
<p>確認結果が揃っていても、確かめた条件自体が、相手の必要と違う場合があります。<br>作った側と確認する側が同じ思い込みを使えば、別のエージェントに頼んでも見逃します。</p>
<p>たとえば、一覧の検索結果をダウンロードする仕事を考えます。</p>
<img width="1100" src="../../assets/images/2026/finish-with-agents/shared-blind-spots.svg" alt="作成役と確認役が画面に見える行だけを出すと思い込むと、テストは通っても検索条件に合う全件が必要な利用者には足りない。受け手と確かめた条件から、画面外の行も含むかを検証する図。">
<p><strong>作った側の説明に加えて、受け手と確かめた条件からも検証します。</strong><br>どの入力で、何が起きるはずか。実際にはどうなったか。<br>AIにも、その比較と、まだ確かめていない条件を調べてもらいます。</p>
<p>確認役を増やすなら、何の見落としを補うのかを決める。<br><strong>確認役の数より、必要だった結果を別の根拠から確かめられたかを見たい。</strong></p>
</div>

---

## 今回の合格で、何を見ていなかったか

<div class="body diagram-copy explained">
<p>ループに渡した評価が狭いまま、その合格だけで仕事を進めてしまうことが気になります。<br>確認の外に置いたものは、合格が続いても守れたとは言えません。</p>
<img width="1100" src="../../assets/images/2026/finish-with-agents/evaluation-boundaries.svg" alt="変更ごとの動作確認から、組み合わせによる影響、実際に使った結果へと確認する時点を選ぶ。合格の根拠になるのは実際に確かめた条件までと示す図。">
<p>たとえば、表示を速くするために結果を保存して再利用したなら、<br>表示の速さに加えて、元の情報が変わったあとに古い結果を出さないかも見る。</p>
<p><strong>守りたいことごとに、何を、いつ確かめるかを決めます。</strong><br>すべてを毎回確認する費用もある。変更の影響に合わせ、AIに調査と検証を任せます。<br>未確認の影響が大きいなら、使う範囲を絞ってから確かめます。</p>
</div>

---

## 完了と改善を分ける

<div class="body diagram-copy explained">
<p>相手と置いた今回の条件を満たし、使う範囲と残る課題を伝えたら、<br>一度閉じます。その後に得る反応は、次の改善を選ぶ材料にします。</p>
<img width="1100" src="../../assets/images/2026/finish-with-agents/completion-and-improvement.svg" alt="今回の条件を満たさないなら修正し、満たしたら渡して一度閉じる。追加の案は利用後の反応と合わせて、次の改善として選ぶ図。">
<p>AIは追加の改善案も出せます。そのたびに今回の仕事を開き直すと、<br>受け手へ渡す時点が来ません。残った案は、効果を見て次に採用する。</p>
<p>既知の重大な問題まで「次の改善」にする話ではありません。<br>今回守る条件を満たしていることが、一度閉じる前提です。</p>
<p class="takeaway">「まだ良くできる」は、いつまでも出さない理由にならない。</p>
</div>

---

## 一つ採用すると、次の仕事が動き出す

<div class="body diagram-copy explained">
<p>エージェントに比較や評価を任せても、条件を満たす案が複数残ることがあります。<br>そのとき、もっと調べれば唯一の正解が出るとは限りません。</p>
<img width="1100" src="../../assets/images/2026/finish-with-agents/adoption-enables-work.svg" alt="条件を満たす複数案から優先順位で一案を選び、採用した版と理由を共有すると、受け手が使い始められる。見送った案は前提が変わったときの見直し材料として残す図。">
<p><strong>一つを採用すると、他の人は、その結果を前提に動き始められます。</strong><br>作る。確かめる。使う。選んだ案には、その後に誰かが使う時間や、覚える手順も結びついていきます。</p>
<p>だから、完了はファイルを保存した時点だけでは考えたくありません。今回は何を採用し、何を見送り、何が変われば見直すか。採用した案と理由を共有し、受け手が使い始められるところまで進めます。</p>
<p>決めた優先順位で選べるなら、採用も任せる。順位を変える必要があれば、得るものと諦めるものを戻してもらいます。</p>
<p><strong>終わらせることで、可能性だったものを、誰かが使えるものにする。</strong></p>
</div>

---

## 出す怖さには、3つの顔がある

<div class="body explained">
<div class="pair">
<div class="figure-column"><img class="book-figure" src="../../assets/images/2026/finish-with-agents/book-figure-19-fear.png" alt="図19上段。出せない裏にある3つの恐怖。評価される恐怖、限界を知る恐怖、完了後の空虚。"></div>
<div><p>条件を満たしても、自分の名前で出す怖さが残ることがあります。AIが作れることと、人に見せられることは、別の問題です。</p><p>評価が怖ければ、<strong>見てほしい点を絞って出す。</strong>何への意見を求めるかを、先に相手と揃えます。</p><p>限界が見えるのが怖ければ、<strong>今の成果と、自分の価値を分ける。</strong>今回の成果への指摘として受け取ります。</p><p>終えたあとの空虚さが気になるなら、<strong>次にすることを一つ置く。</strong>休むことでもよい。仕事を開いたままにせず、その後の時間を考えます。</p></div>
</div>
<div class="source">『おい、とりあえず終わらせろ』図19・上段</div>
</div>

---

<!-- _class: reading transition -->
<!-- _backgroundColor: #0a1929 -->
<!-- _color: white -->

<div class="body">

## 回せ

<p class="large">反応を次の行動へ変える。<br>人とAIが次に判断するときの条件を変える。</p>
<p>出力だけが新しくなっても、<br>同じ迷いを生む前提が残っていれば、また同じ所で止まる。</p>

</div>

---

## 回す速さだけでなく、回し方も変える

<div class="body diagram-copy explained">
<p>一件を直して終えても、次の依頼で同じ情報が欠けていれば、同じ手戻りが起きます。<br>今回の成果を直すことと、次に同じ所で止まらないようにすることを分けて考えます。</p>
<img width="1100" src="../../assets/images/2026/finish-with-agents/work-and-learning-loops.svg" alt="今回の仕事は終了条件と成果を比べて直し、完了させる。その手戻りや待ちの理由から、次の仕事へ渡す前提、分け方、確認方法を変え、次の一回で違いを見る図。">
<p>毎回同じ場所で直し直すなら、修正を速くするだけでなく、<br>最初に渡す前提や、確かめるタイミングも変えてみる。</p>
<p>この振り返りにもAIを使えます。実行記録から繰り返す問題を探してもらう。<br>変更案と減らしたい手戻りを挙げ、条件を一つ変えて、次の一回で違いを確かめます。</p>
<p><strong>一件が終わるたび、次を任せやすくする材料を増やしたい。</strong><br>本書の「回せ」を、エージェントと仕事をする仕組みそのものにも使います。</p>
</div>

---

## 指摘の背景も、AIと確かめる

<div class="body diagram-copy explained">
<p>指摘は文面ごとAIへ渡せます。すぐ直せる指摘なら、そのまま進める。<br>何を直せばよいか曖昧なら、相手が判断できなかった点をAIと整理します。</p>
<img width="1100" src="../../assets/images/2026/finish-with-agents/feedback-interpretation.svg" alt="わかりにくいという指摘についてAIが解釈の候補を出す。必要な点を相手に確かめ、直した結果を戻して困りごとが解けたかを見る図。">
<p>本のフィードバックの4ステップは、この整理にも使えます。感情と事実を分け、要点を言い換える。必要な点を相手に確かめてから、行動と期限を決め、直した結果を戻します。</p>
<p>「わかりにくい」は、結論が見えないのか、比較する根拠が足りないのか。<strong>AIには解釈の候補を出してもらい、確かめた内容から直す。</strong>相手の困りごとが解けたかまで戻って、次の頼み方を変えます。</p>
<p>文面の意味をAIが説明できても、相手の意図を確認したことにはなりません。解釈によって直す場所が変わるなら、必要な点を聞く。言い換えがうまくできたかより、困っていたことが解けたかを確かめます。</p>
</div>

---

## 修正を、その場限りで終わらせない

<div class="body diagram-copy explained">
<p>成果物だけ直しても、次のAIに同じ不足した情報を渡せば、<br>また同じ所で迷うかもしれません。何を変えれば再発を減らせるかを見る。</p>
<img width="1100" src="../../assets/images/2026/finish-with-agents/feedback-to-next-input.svg" alt="目的のずれは終了条件、情報不足は資料への参照、確認漏れは実行できる確認へ反映する。次の作業で実際に使われ、同じ手戻りが減ったかを見る図。">
<p>資料を置くだけでなく、次の作業で読めたかを確かめる。<br>テストの結果や相手の指摘も、次の判断に届く形へ直す。<br>その経路を直すための調査も、エージェントへ任せられます。</p>
<p>すべての失敗に、永続的なルールを足す必要はありません。<br><strong>次にも効く変更を選び、実際に同じ指摘が減ったかを見ます。</strong></p>
</div>

---

## 作り直しても、守る条件と理由を残す

<div class="body diagram-copy explained">
<p>確認の漏れを直す方法を、ソフトウェアの作り直しで考えます。<br>AIが書き直したものが動いても、過去の失敗を防ぐ条件が抜けているかもしれない。<br><strong>何が成り立つべきか、なぜ必要になったかを、確認方法と一緒に残します。</strong></p>
<img width="1100" src="../../assets/images/2026/finish-with-agents/preserve-behavior.svg" alt="削除した記事が決めた時間内に検索結果から消えるという条件と理由を残し、保存や検索を旧構造から新構造へ替えても、同じ動作を確かめ続ける図。">
<p>内部構造に結びついたテストを直すときも、使う人に必要な動作を確かめ続ける。<br>目的が同じなら、テストを通すために期待する結果まで消してはいけません。<br>AIにも理由の調査と記録を任せます。見つからない理由を、もっともらしく埋めずに残します。</p>
<p>使う側が切り替えられることを確かめ、古い経路は利用が終わってから外す。<br>切り替えの費用が高ければ、今回は必要な部分だけ直す選択もあります。<br><strong>次の人が使えて、判断の理由も辿れるところまでを、作り直す仕事に含めたい。</strong></p>
</div>

---

## 残した指示が、次の仕事を重くしていないか

<div class="body diagram-copy explained">
<p>失敗のたびに指示を足すと、前提の違う指示が並んできます。<br>次の人やAIは、どれに従うべきかを調べるところから始まります。</p>
<img width="1100" src="../../assets/images/2026/finish-with-agents/instruction-lifetimes.svg" alt="繰り返す判断、確かめる条件、今回だけの事情を使う場所へ残す。次の仕事では今の前提に合う情報を選び、不要になった指示は外して変更理由を履歴へ残す図。">
<p>Skillは、繰り返し使う仕事の進め方をまとめる場所の一つです。<br>失敗を見つけたら、その原因に合う場所へ直し方を残す。<br>指示が長くなったことを、そのまま学習が進んだことにはしたくありません。</p>
<p><strong>必要がなくなった指示は外し、変えた理由は履歴へ残す。</strong><br>仕事の前提や使う道具が変わったら、以前の対策も見直します。</p>
</div>

---

## ハーネスにも、作りすぎがある

<div class="body diagram-copy explained">
<p>見直す対象は、文章で残した指示だけではありません。<br>以前のモデルが苦手だったことを補う仕組みが、今も必要とは限りません。<br>細かな分割や確認役を増やした分、引き継ぎや待ち時間が増えることもあります。</p>
<img width="1100" src="../../assets/images/2026/finish-with-agents/harness-improvement.svg" alt="実際の仕事を動かして原因を調べ、情報、道具、確認方法を一つ変え、達成した条件と手戻り、確認時間、費用を比べる図。">
<p>難易度や作業の種類が違う仕事を使い、補助を一つ変えた前後で結果を比べる。<br>同じ条件でも結果は揺れるので、複数回試し、一度の成功だけで効果を決めません。<br>モデルを替えたときも、繰り返していた失敗と、その対策が今も必要かを確かめます。</p>
<p><strong>仕組みを増やした量より、任せた仕事が終わり、こちらの手戻りが減ったかを見る。</strong><br>本書の「回せ」を、ハーネスの作り方と、作ったものを減らす判断にも使います。</p>
<div class="source"><a href="https://www.anthropic.com/engineering/harness-design-long-running-apps">Anthropic · Harness design for long-running application development</a></div>
</div>

---

## 任せたあと、次に見る場所がわかるか

<div class="body explained">
<p>仕組みを改善する一方で、任せた自分には何が残るかも考えたい。<br>自分で書いた量だけで、学べたかを測る必要はないと思います。</p>
<p>AIが直した箇所を見て、最初の予想のどこが違ったかを考える。<br>「次はこの入力も見る」という判断が増えれば、任せた仕事からも学べます。</p>
<p>逆に、成果だけが残り、自分が何を見ればよいかはずっとわからないまま。<br>その状態では、任せる範囲を広げるための材料も増えません。</p>
<p><strong>予想と結果を比べ、見落とした条件を一つ言葉にする。</strong><br>その条件を、次の確かめ方や任せ方へ反映する。</p>
<p>「この案を選んだ理由」を一文で残すことも試せます。<br>書けたことだけで理解したとはせず、別の条件でもその理由が通るかを確かめる。<br>全部を自分で作らなくても、次に疑う場所は増やせます。</p>
</div>

---

## 次の改善は、仕事が待っている場所から

<div class="body diagram-copy explained">
<p>仕事が届いたあと、作る時間だけでなく、待った時間と差し戻しを見ます。<br>どこで止まり、何の情報や判断が足りなかったかを確かめます。</p>
<img width="1100" src="../../assets/images/2026/finish-with-agents/moving-wait.svg" alt="確認待ちの理由を調べて改善し、仕事が届くまでの時間を見る。その後に別の場所で待ちが見えた場合は、そこから次の改善を選ぶ図。">
<p>差分が大きく読み切れないなら、一回に確認する変更を小さくする。<br>根拠を探す時間が長いなら、結果へ辿れる資料を揃える。<br>確認できる量を越えるなら、同時に進める仕事の数も減らします。</p>
<p><strong>いま待ちが生まれる条件を変え、使えるまでの時間が縮んだかを見る。</strong><br>一つ解けると、別の場所で待ちが見えることもあります。<br>次に直す場所を、前回の思い込みで固定しません。</p>
</div>

---

## やってわかったことを、次の一回へ戻す

<div class="body explained">
<div class="pair">
<div class="figure-column"><img class="book-figure" src="../../assets/images/2026/finish-with-agents/book-figure-06-five-step-spiral.png" alt="図6 5ステップの螺旋構造。前の一周の学びを、次の一周へ反映する。"></div>
<div><p>受け手に足りなかった材料。AIへ渡し忘れた前提。確認に時間がかかった理由。仕事を一回終えたから、次に直せる点が見えてきます。</p><p><strong>その知識を持って、<br>もう一度「決めろ」へ。</strong></p><p>必要な材料を終了条件へ入れる。一度に任せる量を変える。最初から使える確認方法を用意する。</p><p>回数を重ねるだけでは、よくなるとは限りません。わかったことを次の条件へ戻し、同じ手戻りや待ちが減ったかを確かめます。</p></div>
</div>
<div class="source">『おい、とりあえず終わらせろ』図6</div>
</div>

---

## 確認する人の時間を、無限に扱わない

<div class="body diagram-copy explained">
<p>確かめることや振り返ることを増やしても、最後に受け取る人の一日は長くなりません。<br>すべてに承認を挟めば、今度はその人が仕事を抱えることになります。<br>だから、何を人へ戻し、どこまでエージェントで終えるかも、結果を見て変えます。</p>
<p>条件と確認方法が揃い、実際の結果で確かめられる範囲は、完了の判定まで任せる。<br>条件の変更や優先順位の判断が必要なときに、理由と比較する材料を戻してもらいます。</p>
<img width="1100" src="../../assets/images/2026/finish-with-agents/bounded-human-attention.svg" alt="任せた範囲で条件を満たし根拠が揃う仕事は完了まで任せる。条件や優先順位を変える判断は人へ戻し、材料、時間、権限を揃える。前提を辿り、任せ方を変え、実行を止められるようにする図。">
<p><strong>人が見ると決めたところには、材料と時間と権限を揃える。</strong><br>回数を増やすだけでなく、何を決めるために見るかを絞り、<br>見逃しや待ち時間から、任せ方を見直します。</p>
</div>

---

## エージェントに任せて、自分の仕事を終える

<div class="body explained">
<p>自分の仕事だと言える根拠は、自分が打った文字数だけではないと思います。<br>何を解決するかを選び、エージェントと作り、確かめ、相手へ渡す。<br>その結果で困ったことが起きたら、次の進め方を変える。</p>
<p>小さな仕事にも終わりを置き、確かめ方と、判断を戻してほしい条件を共有する。<br>任せた結果から、次の進め方も変える。<br><strong>相手に渡せる成果と、次の自分やAIが引き継げる条件を残します。</strong></p>
<p><strong>自分がどれだけ操作したかに加えて、誰の仕事が進んだかを見たい。</strong><br>任せたまま終えられたなら、それも自分たちの仕事の進め方が変わった成果です。</p>
<p><strong>いま止まっている仕事を一つ選ぶ。<br>誰に何を渡せれば一回終えられるかを、エージェントと書いてみる。</strong><br>わからない所が残るなら、そこを調べる一歩から任せます。</p>
<p>一人で抱えて止まっていた仕事が、一つ相手に届く。<br>早く終えたあとの時間を、何に使うかも自分で選びたい。</p>
</div>

---

## 「動けない自分」を、責める前に

<div class="body pair explained">
<div style="flex: 0 0 240px; text-align: center;">
<a href="https://www.diamond.co.jp/book/9784478124192.html"><img src="../../assets/images/2026/value-flow-across-roles/oi-toriaezu-owarasero.webp" alt="『おい、とりあえず終わらせろ』書籍の詳細へ" style="height: 370px; max-width: 100%; object-fit: contain;"></a>
<div class="source"><a href="https://www.diamond.co.jp/book/9784478124192.html">書籍の詳細</a> · ダイヤモンド社</div>
</div>
<div>
<p>あとがきには、<strong>「ここまでで確認させてください」</strong>と<br>言えるようになった変化を書きました。<br>途中でも見てもらえる形にして、必要な助言を求める。</p>
<p><strong>何を終えればいいか、見えない。</strong><br><span class="small">第1・2章　完了の正体を知る。やることを絞る。</span></p>
<p><strong>やることはあるのに、手が動かない。</strong><br><span class="small">第3・4章　動ける粒度と、始められる環境を作る。</span></p>
<p><strong>見せるのが怖い。指摘がつらい。</strong><br><span class="small">第5・6章　出す怖さをほどき、反応を次へつなぐ。</span></p>
<p>全部を読んでから始めなくてもよい。<br><strong>いま止まった場所から、一つ試してもらえたらうれしいです。</strong></p>
</div>
</div>

---

<!--
_backgroundColor: #0a1929
_color: white
_class: reading transition
-->

<div class="body">
<p class="large"><strong>あなたが終わらせたものを、<br>誰かが待っている。</strong></p>
<p class="small muted">nwiizo『おい、とりあえず終わらせろ』あとがきより</p>
<p>AIと考え、作り、確かめて、相手が次へ進めるところまで渡す。<br>出してわかったことを残し、次の自分とAIが動きやすくなるようにする。</p>
<p>決めろ。分けろ。始めろ。出せ。回せ。</p>
<p class="large">おい、エージェントを使って終わらせろ。</p>
</div>

---

## 参考資料

<div class="body">
<p><strong>nwiizo『おい、とりあえず終わらせろ』</strong><br>ダイヤモンド社、2026年<br><span class="small">5ステップ、擬似完了感、他者的完了、60点、出す怖さ、フィードバック。</span></p>
<p><strong>岡野原大輔『ヒトとAI』</strong><br>岩波新書、2026年<br><span class="small">理解、評価軸、仕事の再設計、指揮と統合、任せる範囲と注意の配分、<br>監査・変更・停止、人の有限性、選択と完了。</span></p>
<p><strong>nwiizo「<a href="https://syu-m-5151.hatenablog.com/entry/2026/06/23/215158">ループエンジニアリングは、サイバネティクスの再発見だ</a>」</strong><br><span class="small">観測と目標の比較、停止条件、評価の範囲、任せたあとの学び。</span></p>
<div class="source"><a href="https://www.diamond.co.jp/book/9784478124192.html">ダイヤモンド社 書籍情報</a> ／ <a href="https://www.iwanami.co.jp/book/b10170462.html">岩波書店 書籍情報</a></div>
</div>
