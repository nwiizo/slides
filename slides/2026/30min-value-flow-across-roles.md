---
marp: true
theme: 3shake-2026-presentation
paginate: true
---

<!--
_backgroundColor: #0a1929
_color: white
_class: title dark
-->

![bg](../../brands/3shake/assets/images/3shake-background-full.png)

<img src="../../brands/3shake/assets/images/3shake-logo.png" alt="3-SHAKE logo" style="position: absolute !important; top: 100px !important; left: 100px !important; width: 240px !important; height: auto !important; z-index: 9999 !important;">

<div class="title" style="text-align: left; margin-top: 100px; margin-left: 80px; padding-left: 0; max-width: 78%;">

# <span style="font-size: 0.82em; line-height: 1.25;">AIで実装は速くなった。</br>なのにプロダクトは速くならない。</span>

### <span style="font-size: 0.78em;">職能の壁を越えて、価値が届くまでの流れを設計する</span>

</div>

<div class="author-info" style="text-align: left; padding-left: 0; text-indent: 0;">
2026/09/05 Product Engineering Conference 2026</br>
@nwiizo 30min
</div>

---

<!-- _backgroundColor: white -->

![bg left:30% fit](../../assets/shared/nwiizo_icon.jpg)

## nwiizo

<div style="font-size: 0.75em;">

株式会社スリーシェイクでプロのソフトウェアエンジニアをやっているものです。格闘技、読書、グラビアが趣味でよく本を紹介しています。

技術書翻訳を手がけるたび、わかることが1つ増えるのと引き換えに、わからないことが3つ増えていく。

インターネット上では <strong>nwiizo</strong> を名乗り、ブログ「<strong>じゃあ、おうちで学べる</strong>」を運営しています。X / GitHub もこのIDでやっています。

</div>

---

## about 3-shake

<div style="text-align: center; margin-top: 30px;">
  <img src="../../brands/3shake/assets/images/3shake-about.png" alt="3-shake about" style="width: 80%; max-height: 430px; object-fit: contain; margin-top: 10px;">
</div>

---

## 初めての単著が出ました

<div style="display: flex; gap: 44px; align-items: center;">

<div style="width: 31%; text-align: center;">
<img src="../../assets/images/2026/value-flow-across-roles/oi-toriaezu-owarasero.webp" alt="書籍『おい、とりあえず終わらせろ』の表紙" style="height: 390px; max-width: 100%; object-fit: contain; box-shadow: 0 4px 14px rgba(0, 0, 0, 0.18);">
<div style="font-size: 0.55em; color: #888; margin-top: 5px;">書影：ダイヤモンド社</div>
</div>

<div style="flex: 1; font-size: 0.78em;">

<div style="font-size: 1.28em; line-height: 1.4;">
<strong>『おい、とりあえず終わらせろ』</strong>
</div>

<div style="margin-top: 14px;">
完璧に準備しようとして動けなくなるより、まず終わらせ、そこから直していく。そんな進め方をまとめた本です。
</div>

<div style="margin-top: 22px; padding: 16px 18px; background-color: #f5f5f5; border-radius: 8px; line-height: 1.75;">
<strong>2026年に翻訳に携わった本</strong><br>
『アーキテクチャモダナイゼーション』<br>
『セキュアAPI』<br>
『実践 プラットフォームエンジニアリング』
</div>

<div style="margin-top: 18px; color: #555;">
最近では本を読むだけでは飽き足らず、書いたり、訳したりしています。『アーキテクチャモダナイゼーション』の翻訳で考えてきた「価値が届くまでの流れ」も、今回の発表につながっています。
</div>

</div>
</div>

---

## この発表で解決できること

<div style="font-size: 0.72em;">

<div style="display: flex; gap: 20px; margin-top: 12px; align-items: center;">
<div style="flex: 1; background-color: #f5f5f5; padding: 15px; border-radius: 8px;">

<strong>こんな状況ではありませんか</strong>

AIでPull Request（PR）は増え、手を動かす速さも上がったように感じる。けれど、価値が届くまでの時間や成果は、同じようには変わっていない。<strong>速くなった実感と、届いた価値が噛み合わない。</strong>

</div>
<div style="flex: 1; background-color: #f5f5f5; padding: 15px; border-radius: 8px;">

<strong>持ち帰れるもの</strong>

なぜ、実装が速くなってもプロダクト全体は速くならないのか。価値が届くまでの流れを測り、<strong>全体の速さを決める詰まり</strong>を見つけます。ユーザーが達成したいこと、失敗の見つけやすさ、利用状況とほかへの影響から、<strong>「作る・任せる・やめる」を決める基準</strong>も持ち帰れます。

</div>
</div>

<div style="margin-top: 12px; padding: 10px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>見る範囲を、実装からユーザーの結果まで広げる。すると、次に何を速くすべきかが見えてくる。</strong>
</div>

<div style="margin-top: 12px; padding: 11px 14px; background-color: #eef4f8; border-radius: 8px; line-height: 1.6;">
<strong>先に白状します。</strong>伝えたいことを絞り切れず、スライドが多くなりました。今日は何枚か飛ばします。すべてを読もうとせず、<strong>気になった言葉と、話がどうつながるか</strong>だけ追ってください。細部は公開版で、あとからじっくり読めます。
</div>

</div>

---

## 本日の流れ

<div style="font-size: 0.8em; margin-top: 20px;">

1. 増えた生産量はどこに消えたのか
2. 測りやすい数字は、価値が届いた証拠ではない
3. 役割ごとの前提を対話で確かめる
4. ユーザーが達成したいことから「作る・任せる・やめる」を判断する

<div style="margin-top: 26px; padding: 14px; background-color: #f5f5f5; border-radius: 8px;">

まず、ユーザーにとっての価値を確認し、実装を速めても全体が同じだけ縮まない理由を数字で見ます。作業と待ちを測ったうえで、利用後に何が変わったかを確かめます。次に、役割ごとの前提を対話と図で具体化します。最後に、ジョブから「作る」を決め、確かめられる範囲をAIへ「任せる」。既存の動作と依存を調べ、「やめる」条件や置き換え方まで考えます。

</div>

</div>

---

<!--
_backgroundColor: #0a1929
_color: white
_class: transition
-->

<div style="display: flex; justify-content: center; align-items: center; height: 100%; flex-direction: column; color: white; text-align: center;">

<h2 style="color: white !important;">1. 増えた生産量はどこに消えたのか</h2>

<strong>個人は速くなったと感じる。組織の流れは別に測る。</strong>

</div>

---

## AIで速くなった実感を、結果と分けて確かめる

<div style="font-size: 0.75em;">

AIでコードを書きやすくなったと感じても、確認や修正を含む作業時間まで短くなったかは、別に確かめる必要があります。さらに、<strong>個人の作業時間</strong>と、<strong>ユーザーや事業に起きた変化</strong>も分けて測ります。

<div style="display: flex; gap: 20px; align-items: center; margin-top: 16px;">
<div style="flex: 1; background-color: #f5f5f5; padding: 15px; border-radius: 8px;">

<strong>個人は速くなったと感じる</strong>

DORAは、ソフトウェア開発組織を継続的に調査しています。2025年の調査では、世界の技術職約5,000人のうち90%が仕事でAIを使い、80%以上が生産性の向上を感じている。

</div>
<div style="flex: 1; background-color: #f5f5f5; padding: 15px; border-radius: 8px;">

<strong>個人の体感だけでは組織の流れは決まらない</strong>

同じ調査では、AIをよく使う組織ほど、一定期間にユーザーへ届けた変更の件数が多く、ユーザーや事業の成果も高い傾向がありました。その一方で、変更による障害や手戻りは増えていました。DORAの2026年レポートも、コーディングが速くなるだけでは投資対効果（ROI）につながらないとしています。

</div>
</div>

<div style="margin-top: 14px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>AIを入れると、組織の強みは伸び、弱いところの問題も大きくなる。個人の体感と、ユーザーが結果を得るまでの流れは、別の指標で見る。</strong>
</div>

</div>

---

## 価値の基準を、ユーザーの目的に置く

<div style="font-size: 0.7em;">

<div style="display: flex; gap: 24px; align-items: center;">
<div style="width: 22%; text-align: center;">
<img src="../../assets/images/2026/job-theory-book-cover.png" alt="書籍『ジョブ理論』の表紙" style="width: 100%; max-height: 315px; object-fit: contain;">
<div style="font-size: 0.55em; color: #888; margin-top: 5px;">クレイトン・M・クリステンセンほか『ジョブ理論』</div>
</div>
<div style="flex: 1;">

実装の速さをユーザー側の結果へつなげるには、まず「何を達成したいのか」を考えます。ユーザーがなぜ製品やサービスを選ぶのかを、達成したいことから考える方法が<strong>Jobs to Be Done（ジョブ理論）</strong>です。ここでいう<strong>ジョブ</strong>は、ユーザーがある状況で片付けたいことです。

<div style="display: flex; flex-direction: column; gap: 8px; margin-top: 14px;">
<div style="display: grid; grid-template-columns: 110px 1fr; gap: 12px; padding: 10px 12px; background-color: #f5f5f5; border-radius: 8px;"><strong>状況</strong><span>候補が多く、比較に時間がかかっている</span></div>
<div style="display: grid; grid-template-columns: 110px 1fr; gap: 12px; padding: 10px 12px; background-color: #f5f5f5; border-radius: 8px;"><strong>ジョブ</strong><span>必要な情報へ早くたどり着き、購入を判断したい</span></div>
<div style="display: grid; grid-template-columns: 110px 1fr; gap: 12px; padding: 10px 12px; background-color: #f5f5f5; border-radius: 8px;"><strong>選べる手段</strong><span>検索条件、比較表、担当者への相談</span></div>
</div>

<div style="margin-top: 14px;">
ジョブ理論では、ユーザーはジョブを片付けるためにプロダクトを「雇う」と表現します。検索機能は手段の一つです。別の手段の方がうまく片付くなら、ユーザーはそちらを選びます。
</div>

</div>
</div>

<div style="margin-top: 14px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>ジョブは機能名ではない。ユーザーが置かれた状況と、達成したいことを表す。</strong>
</div>

</div>

<div style="font-size: 0.5em; color: #777; text-align: right; margin-top: 6px;">
出典：<a href="https://www.christenseninstitute.org/theory/jobs-to-be-done/">Christensen Institute, Jobs to Be Done Theory</a> ／ 書影：クレイトン・M・クリステンセンほか『ジョブ理論』
</div>

---

## 完全に余談なのですが

<div style="font-size: 0.7em;">

<div style="color: #666; margin-bottom: 8px;">ここは発表では飛ばします。公開版だけの余談です。</div>

クレイトン・M・クリステンセンの本では、『ジョブ理論』以外に、この二冊も好きです。

<div style="display: grid; grid-template-columns: 1fr 1.18fr 170px; gap: 14px; align-items: stretch; margin-top: 12px;">

<div style="padding: 14px; background-color: #f5f5f5; border-radius: 8px;">
<strong>『イノベーションのジレンマ』</strong>

<div style="margin-top: 10px;">
優良企業は、既存顧客の要望を聞き、収益の上がる改善へ投資します。その合理的な判断が、当初は主流顧客の求める性能に届かず、市場も小さい新技術への対応を遅らせます。
</div>

<div style="margin-top: 10px;">
新技術が別の顧客に受け入れられ、改良を重ねて既存製品を脅かす。この動きを<strong>破壊的イノベーション</strong>として説明した本です。
</div>
</div>

<div style="padding: 14px; background-color: #f5f5f5; border-radius: 8px;">
<strong>『イノベーションの経済学』</strong><br>
<span style="color: #666;">「繁栄のパラドクス」に学ぶ巨大市場の創り方</span>

<div style="margin-top: 10px;">
高価、複雑、手に入りにくいといった理由で、既存の製品を利用できない人々がいます。本書では、この状態を<strong>無消費</strong>と呼びます。
</div>

<div style="margin-top: 10px;">
手頃で使いやすい解決策が新しい市場をつくり、販売や流通、雇用も育てていく。これを<strong>市場創造型イノベーション</strong>として、各国の事例から説明します。
</div>
</div>

<div style="text-align: center; align-self: center;">
<img src="../../assets/images/2026/innovation-economics-book-cover.png" alt="書籍『イノベーションの経済学』の表紙" style="width: 100%; max-height: 270px; object-fit: contain;">
<div style="font-size: 0.55em; color: #888; margin-top: 5px;">クレイトン・M・クリステンセンほか『イノベーションの経済学』</div>
</div>

</div>

<div style="margin-top: 12px; padding: 10px 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>いま見えている顧客だけを前提にすると、次に生まれる市場を見落とす。この視点が好きです。</strong>
</div>

</div>

<div style="font-size: 0.5em; color: #777; text-align: right; margin-top: 4px;">
出典：<a href="https://www.seshop.com/product/detail/2241">翔泳社『イノベーションのジレンマ 増補改訂版』</a> ／ <a href="https://www.harpercollins.co.jp/hc/books/detail/15576">ハーパーコリンズ・ジャパン『イノベーションの経済学』</a>
</div>

---

## この発表では、商品を選ぶ場面を例に考える

<div style="font-size: 0.75em;">

ここから繰り返し使うのは、仕事で使う商品を購入する架空のサービスです。利用者は商品名だけでなく、必要な日までに届くか、条件に合うかを確認して、購入する商品を決めたいと考えています。

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 16px; margin-top: 18px;">
<div style="background-color: #f5f5f5; padding: 16px; border-radius: 8px;">
<strong>利用者が困っていること</strong><br><br>
候補が多く、商品ごとに納期や条件を調べ直している。検索結果が出ても、どれを買えばよいか決められない。
</div>
<div style="background-color: #f5f5f5; padding: 16px; border-radius: 8px;">
<strong>チームが考えている変更</strong><br><br>
納期で絞る機能、比較しやすい表示、検索の応答時間の改善。ただし、どれが困りごとに効くかは、まだ確かめる必要がある。
</div>
</div>

<div style="margin-top: 18px;">
以降の「検索」は、この利用場面を指します。検索画面の使いやすさ、裏側の処理速度、情報の正確さを、同じ「速くする」で片付けずに考えます。個別の経験談は、この架空例と分けて紹介します。
</div>

<div style="margin-top: 16px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>目指すのは検索機能の完成ではなく、利用者が条件に合う商品を選べること。</strong>
</div>

</div>

---

## 実装が終わっても、価値が届いたかはまだ分からない

<div style="font-size: 0.72em;">

実装完了は、予定した機能がコードとして動き、テストを通った状態です。リリースすれば、ユーザーが利用できるようになります。ここまでで確認できるのは、<strong>チームが予定したものを作り、利用できるようにしたこと</strong>です。

<div style="display: grid; grid-template-columns: 1fr 1fr 1fr; gap: 14px; margin-top: 20px;">
<div style="padding: 14px; background-color: #f5f5f5; border-radius: 8px;">
<strong>必要な人が利用できるか</strong><br><br>
対象のユーザーが機能を知り、必要なときに使えるとは限りません。
</div>
<div style="padding: 14px; background-color: #f5f5f5; border-radius: 8px;">
<strong>実際の状況で使われるか</strong><br><br>
使える機能でも、ユーザーが別の手段を選ぶことがあります。
</div>
<div style="padding: 14px; background-color: #f5f5f5; border-radius: 8px;">
<strong>望んだ結果が起きるか</strong><br><br>
使われても、探す時間や購入の判断が変わらないことがあります。
</div>
</div>

<div style="margin-top: 20px; padding: 14px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>価値が届くのは、実装が終わったときではなく、ユーザーのジョブが片付いたときです。</strong>
</div>

</div>

---

## 価値が届くのは、ユーザーのジョブが片付いたとき

<div style="font-size: 0.7em;">

ジョブが片付いたとは、機能を使った結果、ユーザーが望んでいた変化が実際に起きた状態です。検索機能を操作できても、必要な情報へ早くたどり着けなければ、ジョブはまだ片付いていません。

作って出したものを<strong>アウトプット</strong>、利用後に生じたユーザーや事業の変化を<strong>アウトカム</strong>と呼びます。

<div style="display: grid; grid-template-columns: 1fr auto 1fr auto 1fr; gap: 10px; align-items: center; margin-top: 16px; text-align: center;">
<div style="padding: 14px 10px; background-color: #f5f5f5; border-radius: 8px;"><strong>アウトプット</strong><br><span style="color: #666;">検索条件を実装し<br>本番で利用できる</span></div>
<div style="font-size: 1.4em;">→</div>
<div style="padding: 14px 10px; background-color: #f5f5f5; border-radius: 8px;"><strong>利用</strong><br><span style="color: #666;">対象のユーザーが<br>商品を探すときに使った</span></div>
<div style="font-size: 1.4em;">→</div>
<div style="padding: 14px 10px; background-color: #f5f5f5; border-radius: 8px;"><strong>アウトカム</strong><br><span style="color: #555;">必要な情報へ早くたどり着き<br>購入を判断できた</span></div>
</div>

<div style="margin-top: 18px;">

利用回数はアウトプットとアウトカムをつなぐ手がかりです。ただし、利用回数だけではジョブが片付いたか分かりません。利用後の変化まで確かめます。

</div>

<div style="margin-top: 14px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>プロダクトの速さは、機能を出すまでではなく、結果を確かめるまでで見る必要があります。</strong>
</div>

</div>

---

## たとえば、実作業が30%の流れなら

<div style="font-size: 0.75em;">

まず、アウトプットを本番で利用できる状態にするまで、つまりチケットに着手してから本番へ反映するまでを、実作業30%、待ち70%と置いた例で考えます。

<div style="display: flex; margin-top: 22px; height: 64px; border-radius: 8px; overflow: hidden; font-weight: bold;">
<div style="width: 30%; background-color: #e65100; color: white; display: flex; align-items: center; justify-content: center;">実作業 30%</div>
<div style="width: 70%; background-color: #e0e0e0; color: #333; display: flex; align-items: center; justify-content: center;">待ち 70%</div>
</div>
<div style="display: flex; margin-top: 6px; color: #666; font-size: 0.9em;">
<div style="width: 30%; text-align: center;">設計　・　実装　・　テスト</div>
<div style="width: 70%; text-align: center;">判断待ち　・　レビュー待ち　・　他チーム待ち</div>
</div>

<div style="margin-top: 22px;">

この例では、実作業以外の7割が、仕様や範囲が決まるのを待つ時間、レビューと承認を待つ時間、依存先のチームの変更やリリースを待つ時間です。

</div>

<div style="margin-top: 16px; padding: 12px; background-color: #f5f5f5; border-radius: 8px; text-align: center;">
比率は説明のための仮定です。自分たちの比率は、実際の記録から測ります。
</div>

</div>

---

## 実作業を半分にしても、全体は15%しか縮まない

<div style="font-size: 0.75em;">

<div style="margin-top: 14px; color: #666;">いま</div>
<div style="display: flex; height: 48px; border-radius: 8px; overflow: hidden; font-weight: bold;">
<div style="width: 30%; background-color: #e65100; color: white; display: flex; align-items: center; justify-content: center;">30</div>
<div style="width: 70%; background-color: #e0e0e0; color: #333; display: flex; align-items: center; justify-content: center;">70</div>
</div>

<div style="margin-top: 14px; color: #666;">AIで実作業を半分にした後</div>
<div style="display: flex; height: 48px; border-radius: 8px; overflow: hidden; font-weight: bold;">
<div style="width: 15%; background-color: #e65100; color: white; display: flex; align-items: center; justify-content: center;">15</div>
<div style="width: 70%; background-color: #e0e0e0; color: #333; display: flex; align-items: center; justify-content: center;">70</div>
<div style="width: 15%;"></div>
</div>

<div style="margin-top: 20px;">

全体を100と置くと、待ちの70は、実作業だけをAIで速めても残ります。実作業を半分にしても、全体の短縮は15%にとどまります。

</div>

<div style="margin-top: 14px; padding: 14px; background-color: #e0e0e0; border-radius: 8px; text-align: center; font-size: 1.15em;">
<span style="color: #e65100; font-weight: bold;">待ちが変わらないという仮定なら、残る時間の多くは待ちになる。<br>次に、どの仕事で時間がかかっているかを分けて見る。</span>
</div>

</div>

---

## 実作業を速めても、外側の待ちは残る

<div style="font-size: 0.75em;">

先ほどの30/70の例を、AIを使う場面に重ねます。AIが直接短くしやすいのは、一人が手元で作って確かめる繰り返しです。これを<strong>内側のループ</strong>と呼びます。その成果をチームが受け入れ、利用できる状態にする繰り返しが<strong>外側のループ</strong>です。

<div style="display: flex; gap: 20px; align-items: center; margin-top: 16px;">
<div style="flex: 1; background-color: #f5f5f5; padding: 15px; border-radius: 8px;">

<strong>内側のループ</strong>

設計し、コードを書き、動かし、手元でテストする。実作業30%と重なる部分が多く、AIで短くしやすい。

</div>
<div style="flex: 1; background-color: #f5f5f5; padding: 15px; border-radius: 8px;">

<strong>外側のループ</strong>

優先順位を決め、レビューし、統合し、リリースする。役割をまたぐ判断や調整があり、待ち70%が生まれやすい。

</div>
</div>

<div style="margin-top: 20px;">

AIで内側の成果が早く出ても、外側で一日に受け入れられる件数は自動では増えません。レビューの観点、判断する人、依存先との進め方を変えなければ、早くできたPRが外側の工程に並びます。

</div>

<div style="margin-top: 16px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>内側・外側は仕事の範囲、実作業・待ちは時間の使われ方。<br>レビューにも実作業はあり、AIで短くできる部分と、判断待ちが残る部分を分けて測る。</strong>
</div>

</div>

---

## バリューストリームは発見から結果の確認まで

<div style="display: flex; gap: 24px; align-items: center;">
<div style="width: 46%;">
<img src="../../assets/images/2026/figure-6-1-value-stream-activities.png" alt="ソフトウェア開発のバリューストリーム" style="width: 100%; height: fit-content;">
<div style="font-size: 0.55em; color: #999; text-align: center; margin-top: 5px;">Figure 6.1 The high-level activities in an independent value stream より引用</div>
</div>
<div style="flex: 1; font-size: 0.72em;">

内側と外側のループで整理したのは、主にチケットへ着手してからアウトプットを利用できる状態にするまでです。しかし、プロダクトの仕事は着手前から始まり、リリース後も続きます。ユーザーのジョブを見つけ、求めるアウトカムと確かめ方を決め、アウトプットを届け、ジョブが片付いたか確かめるまで。この全体を<strong>バリューストリーム</strong>と呼びます。

<div style="margin-top: 18px; padding: 12px; background-color: #f5f5f5; border-radius: 8px;">
<strong>見る範囲の始まり</strong>　ユーザーの困りごとを捉えたとき<br>
<strong>一回の検証の区切り</strong>　結果を確かめ、続けるか見直すか決めたとき
</div>

</div>
</div>

<div style="font-size: 0.5em; color: #777; text-align: right; margin-top: 6px;">
出典：Susanne Kaiser, <em>Architecture for Flow</em>, Addison-Wesley, 2025
</div>

---

## 実装は、バリューストリームの真ん中にある

<div style="font-size: 0.72em;">

範囲をバリューストリームまで広げると、実装の位置づけが見えてきます。実装は、その途中でアウトプットを作って届ける仕事です。前には、ジョブを見つけて何を作るかを決める仕事があり、後には、利用後のアウトカムを確かめる仕事があります。

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 14px; margin-top: 10px;">
<div style="background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>ジョブを見つける</strong><br>
ユーザーが困る状況、いま試している手段、達成したいことを、観察や対話から確かめる。
</div>
<div style="background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>アウトカムと確かめ方を決める</strong><br>
ユーザーの行動や事業の数字がどう変われば価値が届いたと言えるかを、実装前に決める。
</div>
<div style="background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>アウトプットを作って届ける</strong><br>
設計し、実装してテストする。リリースして、ユーザーが変更を利用できる状態にする。
</div>
<div style="background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>アウトカムを確かめる</strong><br>
実際に使われ、期待した変化が起きたかを見る。続ける、変える、やめるを判断する。
</div>
</div>

<div style="margin-top: 14px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>つまり、アウトプットを作る前には判断があり、届けた後にはアウトカムの確認があります。実装だけを速くしても、前後が遅ければ、バリューストリーム全体は速くなりません。</strong>
</div>

</div>

---

## バリューストリームマッピングは、作業と待ちを分ける

<div style="font-size: 0.75em;">

バリューストリームの工程を時系列に並べ、各区間を実際に手を動かしていた時間と、判断や作業を待っていた時間に分けて可視化する方法を、<strong>バリューストリームマッピング</strong>と呼びます。

<div style="display: grid; grid-template-columns: 1fr auto 1fr auto 1fr; gap: 10px; align-items: center; margin-top: 14px; text-align: center;">
<div style="padding: 14px 10px; background-color: #f5f5f5; border-radius: 8px;"><strong>直近の案件を並べる</strong><br><span style="color: #666;">まず10件程度。<br>未完了の案件も含める</span></div>
<div style="font-size: 1.4em;">→</div>
<div style="padding: 14px 10px; background-color: #f5f5f5; border-radius: 8px;"><strong>時刻を記録から拾う</strong><br><span style="color: #666;">ジョブの確認、着手、PR、承認、<br>本番反映、利用開始、結果確認</span></div>
<div style="font-size: 1.4em;">→</div>
<div style="padding: 14px 10px; background-color: #f5f5f5; border-radius: 8px;"><strong>区間を分ける</strong><br><span style="color: #555;">作業か、誰かを待ったか。<br>待った相手の役割を書く</span></div>
</div>

<div style="margin-top: 22px; padding: 14px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>実際の記録を使い、作業していた時間と待っていた時間を分ける。</strong>
</div>

</div>

---

## 一件の変更を、同じ時間の単位でたどる

<div style="font-size: 0.75em;">

測り方も、検索条件を追加する架空の例で考えます。着手から本番反映までを、夜間や休日を除くチームの共通の業務時間で測り、合計20時間だったとします。

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 16px; margin-top: 18px;">
<div style="background-color: #f5f5f5; padding: 16px; border-radius: 8px;">
<strong>実際に進めた時間：6時間</strong><br><br>
設計・実装・テストに5時間。レビューで内容を確認した時間が1時間。
</div>
<div style="background-color: #f5f5f5; padding: 16px; border-radius: 8px;">
<strong>止まっていた時間：14時間</strong><br><br>
レビュー開始を待って10時間。本番へ反映する判断を待って4時間。
</div>
</div>

<div style="margin-top: 18px;">
この例なら、実作業の割合は6 ÷ 20で30%です。二人で同時に1時間確認しても、案件が進んだ経過時間は1時間です。人数分の工数を足すと、全体に占める割合とは別の数字になります。
</div>

<div style="margin-top: 16px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>時刻の差だけでは、作業と待ちは分からない。<br>記録と担当者への確認を組み合わせ、不明な時間は不明として残す。</strong>
</div>

</div>

---

## 待ち時間は、相手と理由まで記録する

<div style="font-size: 0.75em;">

工程を並べたら、最初に二つを見ます。個人の働き方を評価するためではありません。役割の間で仕事をどう渡し、どこで止まっているかを知るためです。

<div style="display: flex; gap: 20px; align-items: stretch; margin-top: 20px;">
<div style="flex: 1; background-color: #f5f5f5; padding: 16px; border-radius: 8px;">
<strong>作業していた時間の割合</strong><br><br>
開始と終了を揃えた期間のうち、設計、実装、確認など、案件を実際に進めていた時間がどれだけあったか。
</div>
<div style="flex: 1; background-color: #f5f5f5; padding: 16px; border-radius: 8px;">
<strong>最も長く待った工程</strong><br><br>
どの工程で、誰の、どんな判断や作業を待ったか。件数だけでなく、待った理由も記録する。
</div>
</div>

<div style="margin-top: 20px;">
待ちのすべてが無駄ではありません。本番前の確認のように、安全のために設ける待ちもあります。担当と判断日が決まった保留は、期限のない放置と分けます。見直すのは、目的を説明できない確認、担当が曖昧な引き継ぎ、処理できる量を超えて積み上がる待ちです。
</div>

<div style="margin-top: 16px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>待ちが大きい工程を、全体の速さを決めている候補として詳しく見る。相手と理由が分かれば、減らす方法を選べる。</strong>
</div>

</div>

---

## 仕事を引き継ぐところで、待ちが生まれやすい

<div style="font-size: 0.72em;">

待ちの相手と理由が分かったら、仕事を渡す境目を見ます。ここでは、変更を利用できるようにするまでに、誰から誰へ仕事を渡し、何を待っているかを確かめます。

<div style="display: grid; grid-template-columns: 1fr auto 1fr auto 1fr; gap: 10px; align-items: center; margin-top: 18px; text-align: center;">
<div style="padding: 14px 10px; background-color: #f5f5f5; border-radius: 8px;"><strong>優先順位を決める人<br>→ 実装する人</strong><br><span style="color: #666;">何を作るかの判断を待つ</span></div>
<div style="font-size: 1.4em;">→</div>
<div style="padding: 14px 10px; background-color: #f5f5f5; border-radius: 8px;"><strong>実装する人<br>→ レビュアー</strong><br><span style="color: #666;">正しさの確認を待つ</span></div>
<div style="font-size: 1.4em;">→</div>
<div style="padding: 14px 10px; background-color: #f5f5f5; border-radius: 8px;"><strong>実装する人<br>→ 運用担当・他チーム</strong><br><span style="color: #666;">出してよいかの合意を待つ</span></div>
</div>

<div style="margin-top: 22px;">

ここでは、判断や作業を一つの役割から別の役割へ引き継ぐところを<strong>責任の境界</strong>と呼びます。この例では、別の役割の判断が必要になるたびに待ちが発生していました。引き継ぐたびに説明と調整が加わり、次の作業へすぐには進めなくなります。

</div>

<div style="margin-top: 18px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>AIで作業を速くしても、引き継ぐ回数と待つ順番は変わらない。</strong>
</div>

</div>

---

## 依存は、待つ理由で三つに分ける

<div style="font-size: 0.72em;">

<strong>依存</strong>とは、自分たちだけでは次へ進めない状態です。何を待っているかで、対処が変わります。

<div style="display: flex; gap: 16px; align-items: stretch; margin-top: 16px;">
<div style="flex: 1; background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>仕組みへの依存</strong><br><br>
別のシステムや接続先の変更を待つ<br><span style="color: #555;">→ 接点を安定させ、別々に変更できるようにする</span>
</div>
<div style="flex: 1; background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>人の知識への依存</strong><br><br>
特定の人に聞くまで判断できない<br><span style="color: #555;">→ 判断の根拠と手順を共有する</span>
</div>
<div style="flex: 1; background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>順番への依存</strong><br><br>
先の確認や承認が終わるまで進めない<br><span style="color: #555;">→ 同時に進めるか、確認条件を明示する</span>
</div>
</div>

<div style="margin-top: 18px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>依存をゼロにはしない。待ちが長い依存から、本当に必要かを確かめ、待ちを減らす方法を決める。</strong>
</div>

</div>

---

## 全体の速さを決める工程から直す

<div style="font-size: 0.75em;">

各工程には、一日に処理できる仕事の量があります。実装から渡される量が次の工程で処理できる量を超えると、終わっていない仕事がその手前に積み上がります。全体の速さを決めている工程を<strong>制約</strong>と呼び、そこから改善する考え方が<strong>制約理論</strong>です。

<div style="display: grid; grid-template-columns: 1fr auto 1fr auto 1fr; gap: 10px; align-items: center; margin-top: 18px; text-align: center;">
<div style="padding: 15px 10px; background-color: #f5f5f5; border-radius: 8px;">

<strong>AI支援で実装</strong><br><br>
1日に10件のPRを作る

</div>
<div style="font-size: 1.4em;">→</div>
<div style="padding: 15px 10px; background-color: #f5f5f5; border-radius: 8px;">

<strong>レビュー待ち</strong><br><br>
10件届き、5件進むため<br>一日ごとに5件増える


</div>
<div style="font-size: 1.4em;">→</div>
<div style="padding: 15px 10px; background-color: #f5f5f5; border-radius: 8px;">

<strong>レビュー</strong><br><br>
意図・影響・テストを<br>1日に5件確認できる

</div>
</div>

<div style="margin-top: 20px;">

この例では、レビューできる件数が変わらない限り、利用できる状態になるのは一日5件までです。実装済みのPRが増えるほど、着手から利用可能になるまでの時間は長くなります。数字は仕組みを説明するための例です。実際の制約は、工程ごとの件数と待ち時間から確かめます。

</div>

<div style="margin-top: 16px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>次の工程が受け入れられる量を超えて仕事を渡すと、待つ案件が増える。<br>実装を速めた効果を届けるには、レビューへ渡す量と、確認できる量も揃える。</strong>
</div>

</div>

---

## レビュー待ちは、詰まる理由に合わせて減らす

<div style="font-size: 0.75em;">

一日10件を作っても5件しか確認できない例では、まず、なぜ5件で止まっているかを調べます。レビューを急がせるだけでは、必要な確認を削ってしまうかもしれません。

<div style="display: flex; gap: 16px; align-items: center; margin-top: 18px;">
<div style="flex: 1; background-color: #f5f5f5; padding: 15px; border-radius: 8px;">
<strong>確認する時間がない</strong><br><br>
新しい実装への着手を絞り、レビューする時間を確保する。担当者へ依頼が集中していないかも見る。
</div>
<div style="flex: 1; background-color: #f5f5f5; padding: 15px; border-radius: 8px;">
<strong>差分の意図が読めない</strong><br><br>
変更を目的ごとに分け、判断理由とテスト結果を添える。確認のたびに説明を聞き直す時間を減らす。
</div>
<div style="flex: 1; background-color: #f5f5f5; padding: 15px; border-radius: 8px;">
<strong>何を正解とするか未決定</strong><br><br>
コードを読む前に、期待する動作と決める人を確かめる。判断待ちをレビュー担当者の遅さにしない。
</div>
</div>

<div style="margin-top: 18px;">
変えた後は、待ち時間だけでなく、本番へ届いた件数と手戻りも見ます。レビューが速くなっても、次に本番反映で待っていれば、そこを改めて調べます。
</div>

<div style="margin-top: 16px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>忙しい人を探すのではなく、仕事が進まない理由を取り除く。</strong>
</div>

</div>

---

## 制約が実装にある現場もある

<div style="font-size: 0.75em;">

前の例ではレビューが制約でした。しかし、どの工程が制約かは、人数や役割の数だけでは決まりません。直近の仕事がどこで列になり、次の工程が何を待っていたかを見ます。

<div style="display: flex; gap: 20px; align-items: center; margin-top: 16px;">
<div style="flex: 1; background-color: #f5f5f5; padding: 15px; border-radius: 8px;">

<strong>実装が制約になっている状態</strong>

作る内容は決まり、レビューする人も待っている。それでも、実装を待つ案件が増えている。ここなら、AIで実装時間を短くすると全体も速くなりやすい。

</div>
<div style="flex: 1; background-color: #f5f5f5; padding: 15px; border-radius: 8px;">

<strong>判断やレビューが制約になっている状態</strong>

実装は終わっているのに、優先順位、仕様、レビュー、リリースの判断を待つ案件が増えている。ここでは、実装だけを速めても全体は速くならない。

</div>
</div>

<div style="margin-top: 18px;">

バリューストリームマッピングで直近10件を作業と待ちに分け、待ちが集中する工程と、その手前に積み上がる件数を見ます。制約が分かったら、そこへ入れる仕事を絞る、不要な確認を減らす、必要な人や時間を増やす、という順で対処します。

</div>

<div style="margin-top: 14px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>AIをどこに使うかは、いまの制約を動かせるかで決める。</strong>
</div>

</div>

---

## 独立したバリューストリームの四つの条件

<div style="display: flex; gap: 24px; align-items: center;">
<div style="width: 43%;">
<img src="../../assets/images/2026/am-1-4-independent-value-stream.png" alt="独立したバリューストリームの四つの条件" style="width: 100%; height: fit-content;">
<div style="font-size: 0.55em; color: #999; text-align: center; margin-top: 5px;">Figure 1.4 Independent value stream より引用</div>
</div>
<div style="flex: 1; font-size: 0.72em; line-height: 1.45;">

制約が判断や引き継ぎにあるなら、チームが流れをどこまで自分たちで進められるかを見直します。ここでいう独立とは、関係するチームがあっても、日常的な変更を発見から結果の確認まで大きな待ちなしに進められることです。そのために、チームの担当範囲、判断できる範囲、目標の置き方、ソフトウェアの分け方という四つの条件を揃えます。

<div style="margin-top: 14px;">

<strong>事業の仕事に合わせて担当範囲を決める</strong>　どのジョブを扱うかが明確<br>
<strong>チームが判断できる</strong>　製品・技術・リリースを決められる<br>
<strong>利用後の変化から作るものを決める</strong>　届けた結果まで確かめる<br>
<strong>ソフトウェアを分ける</strong>　単独で変更して届けられる

</div>

<div style="margin-top: 14px;">

この四つは別々ではありません。担当範囲と目指すアウトカムが決まっていても、判断のたびにほかのチームを待ち、ソフトウェアも一緒に変更しなければならないなら、流れは独立していません。

</div>

</div>
</div>

<div style="font-size: 0.5em; color: #777; text-align: right; margin-top: 5px; padding-right: 36px;">
出典：Nick Tune, Jean-Georges Perrin, <em>Architecture Modernization</em>, Manning, 2024
</div>

---

## 四つの条件は、「何を担うか」と「どう進めるか」

<div style="font-size: 0.72em;">

先ほどの四つは、「何を担うか」と「どう進めるか」の二つに分けて考えます。事業の仕事と目指すアウトカムは、チームが引き受ける範囲を決めます。判断できる範囲とソフトウェアの分け方は、その仕事を大きな待ちなしに進められるかを決めます。

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 14px; margin-top: 10px;">
<div style="text-align: center; color: #555;"><strong>何を担うか</strong></div>
<div style="text-align: center; color: #555;"><strong>どう進めるか</strong></div>
<div style="background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>事業の仕事に合わせて担当範囲を決める</strong><br>
「注文」「決済」のように、事業の中で一つの役割を担う範囲へ集中する。関係の薄いジョブを同じチームへ集めない。
</div>
<div style="background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>チームが判断できる</strong><br>
合意した予算・品質・権限の範囲で、何を作り、いつ届けるかを決める。範囲を超える変更は、相談先を先に決める。
</div>
<div style="background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>利用後の変化から作るものを決める</strong><br>
機能の完成ではなく、利用後に起きてほしい変化を目標にする。届けた後の結果まで同じチームが確かめる。
</div>
<div style="background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>ソフトウェアを分ける</strong><br>
ほかのシステムを同時に変えなくても、開発・テスト・リリースできる。依存があっても、接続方法やデータ形式を安定させる。
</div>
</div>

<div style="margin-top: 14px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>四つの条件を揃えるのは、チームを閉じるためではありません。ジョブの発見からアウトカムの確認までを、大きな待ちなしに進めるためです。</strong>
</div>

</div>

---

## 分ける単位は、一緒に変更しなくて済む範囲で考える

<div style="font-size: 0.75em;">

ソフトウェアを小さく分けても、変更のたびに他チームの修正が必要なら、待ちは残ります。境界を決めるときは、ファイルやサービスの数より、どこまで自分たちで変更を完結できるかを見ます。

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 16px; margin-top: 18px;">
<div style="background-color: #f5f5f5; padding: 16px; border-radius: 8px;">
<strong>検索側で変えられること</strong><br><br>
商品データを受け取る形式が安定していれば、検索の内部処理を変えても、商品管理側の同時改修を避けやすい。
</div>
<div style="background-color: #f5f5f5; padding: 16px; border-radius: 8px;">
<strong>一緒に決める必要があること</strong><br><br>
納期や在庫の意味、データの持ち主、更新の反映条件を変えるなら、使う側と提供する側で確認が必要になる。
</div>
</div>

<div style="margin-top: 18px;">
細かく分けるほど接続や運用の仕事も増えます。頻繁に変える部分から、データの責任と接続の取り決めを明確にします。分割や全面刷新そのものを目的にはしません。
</div>

<div style="margin-top: 16px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>境界の良し悪しは、箱の小ささより、変更に必要な調整で確かめる。</strong>
</div>

</div>

---

## サービスを分けても、共有データの変更待ちは残る

<div style="font-size: 0.75em;">

検索と商品管理を別のサービスにしても、同じテーブルの内部構造に依存していれば、自由には変更できません。<strong>データアーキテクチャ</strong>では、データの形、保存場所、渡し方、更新する責任を考えます。これは、チームがどこまで独立して変更できるかにも関わります。

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 16px; margin-top: 18px;">
<div style="background-color: #f5f5f5; padding: 16px; border-radius: 8px;">
<strong>同じテーブルを直接読む</strong><br><br>
検索、商品管理、帳票が同じ列を使う。列の名前や意味を変えるたびに、どの処理が壊れるかを調べ、関係者の確認を待つ。
</div>
<div style="background-color: #f5f5f5; padding: 16px; border-radius: 8px;">
<strong>提供する情報と変更の責任を決める</strong><br><br>
商品管理が更新を担い、検索や帳票へ必要な情報を渡す。提供する形式と意味を保てる変更なら、内部の同時改修を避けやすい。
</div>
</div>

<div style="margin-top: 18px;">
ただし、分ければ同期や障害対応の仕事も増えます。一緒に更新しないと矛盾するデータは、同じ場所で管理する方が簡単な場合もあります。まず共有している項目と利用者を調べ、調整が多い箇所から見直します。
</div>

<div style="margin-top: 16px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>DBを分けることが目的ではない。誰が何を変え、誰へ知らせるかを明確にする。</strong>
</div>

</div>

---

<!--
_backgroundColor: #0a1929
_color: white
_class: transition
-->

<div style="display: flex; justify-content: center; align-items: center; height: 100%; flex-direction: column; color: white; text-align: center;">

<h2 style="color: white !important;">2. 測りやすい数字は、価値が届いた証拠ではない</h2>

<strong>変化を確かめるには、作った量と、利用後に起きた変化を分けて測る。</strong>

</div>

---

## 測りやすい数字はAIで伸びる

<div style="font-size: 0.75em;">

PR数、コード変更の記録（コミット）の数、変更行数。どれもダッシュボードに出しやすく、AIを入れると増やしやすい数字です。ただ、これらが表すのは<strong>アウトプットの量</strong>です。たとえば、データベース内で動く処理（ストアドプロシージャ）の作成数を個人目標にすると、必要性より作成数が優先されます。PR数を個人目標にしても、アウトプットそのものが目的になる同じ問題が起きます。

<div style="margin-top: 14px; padding: 12px; background-color: #f5f5f5; border-radius: 8px; text-align: center;">
<strong>AIで増えやすいのはアウトプット。価値を判断するにはアウトカムを確かめる。</strong>
</div>

<div style="margin-top: 18px;">

頼まれた機能を作り続け、アウトカムよりアウトプットの量と出す速さだけを見るチームを<strong>フィーチャーファクトリー</strong>と呼びます。機能を作ること自体が目的になり、使われた結果を確かめない状態です。

</div>

<div style="margin-top: 18px; padding: 14px; background-color: #e0e0e0; border-radius: 8px; text-align: center; font-size: 1.1em;">
<span style="color: #e65100; font-weight: bold;">アウトプットで仕事の流れを、アウトカムで利用後の変化を確かめる。</span>
</div>

</div>

---

## 価値は「速く」だけでは測れない

<div style="display: flex; gap: 24px; align-items: center;">
<div style="width: 48%;">
<img src="../../assets/images/2026/architecture-modernization-bvssh.png" alt="Better Value Sooner Safer Happier" style="width: 100%; height: fit-content;">
<div style="font-size: 0.55em; color: #999; text-align: center; margin-top: 5px;">Figure 1.3 Better Value Sooner Safer Happier (Source: Smart et al., Sooner Safer Happier [IT Revolution, 2020]) より引用</div>
</div>
<div style="flex: 1; font-size: 0.75em; line-height: 1.5;">

変更を良くしたかは、速さだけでは決まりません。品質、アウトカム、速さ、安全性、関わる人の満足を一緒に見ます。

<div style="margin-top: 20px; padding: 16px; background-color: #f5f5f5; border-radius: 8px;">
AIで作る時間が短くなっても、手戻りや障害が増え、レビューする人の負担が重くなれば、改善したとは言い切れません。
</div>

</div>
</div>

<div style="margin-top: 18px; padding: 14px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>「早くなったか」だけでなく、「何が良くなり、どこに負担が移ったか」を見る。</strong>
</div>

<div style="font-size: 0.5em; color: #777; text-align: right; margin-top: 6px; padding-right: 44px;">
出典：Nick Tune, Jean-Georges Perrin, <em>Architecture Modernization</em>, Manning, 2024 ／ Jonathan Smartほか, <em>Sooner Safer Happier</em>, 2020
</div>

---

## 同じ変更を、五つの面から確かめる

<div style="font-size: 0.75em;">

五つは、同じ変更を別の面から見るための観点です。速さを上げた結果、品質や安全性、関わる人の満足を悪化させていないかを確かめます。

<div style="display: flex; flex-direction: column; gap: 8px; margin-top: 16px;">
<div style="display: grid; grid-template-columns: 130px 1fr; gap: 14px; padding: 10px 14px; background-color: #f5f5f5; border-radius: 8px;"><strong>Better</strong><span>期待した動作を安定して行えるか。品質は上がったか</span></div>
<div style="display: grid; grid-template-columns: 130px 1fr; gap: 14px; padding: 10px 14px; background-color: #f5f5f5; border-radius: 8px;"><strong>Value</strong><span>ユーザーのジョブが片付き、事業のアウトカムが変わったか</span></div>
<div style="display: grid; grid-template-columns: 130px 1fr; gap: 14px; padding: 10px 14px; background-color: #f5f5f5; border-radius: 8px;"><strong>Sooner</strong><span>小さな変更を、早く、繰り返し届けられたか</span></div>
<div style="display: grid; grid-template-columns: 130px 1fr; gap: 14px; padding: 10px 14px; background-color: #f5f5f5; border-radius: 8px;"><strong>Safer</strong><span>変更による失敗と、起きたときの影響を減らせたか</span></div>
<div style="display: grid; grid-template-columns: 130px 1fr; gap: 14px; padding: 10px 14px; background-color: #f5f5f5; border-radius: 8px;"><strong>Happier</strong><span>ユーザーと、開発・運用に関わる人の負担を減らせたか</span></div>
</div>

<div style="margin-top: 16px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>五つを一つの点数にまとめず、どこが良くなり、どこが悪くなったかを並べて判断する。</strong>
</div>

</div>

---

## アウトプットを届ける速さを三つに分ける

<div style="font-size: 0.72em;">

五つのうち、まず<strong>Sooner</strong>を測ります。アウトプットを届ける流れは、一つの数字だけでは分かりません。かかった時間、届けた件数、その時間のうち実際に作業していた割合を分けて見ます。

<div style="display: flex; gap: 16px; align-items: stretch; margin-top: 18px;">
<div style="flex: 1; background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>リードタイム</strong><br><br>
作業に着手してから、変更を利用可能にするまでの<strong>経過時間</strong>
</div>
<div style="flex: 1; background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>スループット</strong><br><br>
1週間などの一定期間に、利用できる状態まで進んだ変更の<strong>件数</strong>
</div>
<div style="flex: 1; background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>流れの効率</strong><br><br>
リードタイムのうち、実際に手を動かした<strong>時間の割合</strong>
</div>
</div>

<div style="margin-top: 20px; padding: 14px; background-color: #e0e0e0; border-radius: 8px; text-align: center; font-size: 1.1em;">
<span style="color: #e65100; font-weight: bold;">30/70の例なら、流れの効率は30%。残り70%は待ち時間。</span>
</div>

<div style="margin-top: 12px; text-align: center; color: #555;">
この三つで分かるのは「アウトプットを届ける速さ」です。使われた結果であるアウトカムは、別に確かめます。
</div>

</div>

---

## アウトプットの速さとアウトカムを並べて見る

<div style="font-size: 0.75em;">

リードタイムやスループットで分かるのは、アウトプットを届ける速さです。価値まで見るには、<strong>同じ期間と対象ユーザー</strong>について、利用とアウトカムを並べます。検索条件を追加した例なら、次の三つです。

<div style="display: flex; gap: 16px; align-items: stretch; margin-top: 18px;">
<div style="flex: 1; background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>アウトプットを届ける流れ</strong><br><br>
着手から利用可能になるまでの時間と、そのうち誰かを待っていた時間
</div>
<div style="flex: 1; background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>利用の手がかり</strong><br><br>
対象ユーザーが新しい検索条件を使った割合と、検索を途中でやめた割合
</div>
<div style="flex: 1; background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>アウトカム</strong><br><br>
必要な情報へたどり着くまでの時間と、その後に購入へ進んだ割合
</div>
</div>

<div style="margin-top: 18px; padding: 14px; background-color: #e0e0e0; border-radius: 8px; text-align: center; font-size: 1.05em;">
<strong>アウトプットを早く届けたことと、期待したアウトカムが起きたことを、別々に確かめる。</strong>
</div>

</div>

---

## 「選べたか」は、操作の記録だけでは分からない

<div style="font-size: 0.75em;">

検索条件を使った記録は残せます。しかし、利用者が必要な情報を見つけ、納得して商品を選べたかまでは分かりません。先ほどのアウトカムを確かめるには、操作の記録と利用者への確認を組み合わせます。

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 16px; margin-top: 18px;">
<div style="background-color: #f5f5f5; padding: 16px; border-radius: 8px;">
<strong>記録で確かめること</strong><br><br>
検索を始めた時刻、条件の使用、候補を選ぶまでの操作、途中でやめた割合。購入へ進んだかも、対象と期間をそろえて見る。
</div>
<div style="background-color: #f5f5f5; padding: 16px; border-radius: 8px;">
<strong>本人に確かめること</strong><br><br>
どの情報で決められたか。まだ何が足りなかったか。購入しなかったのは、比較できなかったからか、条件に合う商品がなかったからか。
</div>
</div>

<div style="margin-top: 18px;">
短時間で離れた人を「早く選べた人」と数えないようにします。選べた人だけの時間を比べると、選べずに離れた人を見落とします。件数が少ない場合は、確かな傾向とは言い切らず、分かったことと未確認のことを分けます。
</div>

<div style="margin-top: 16px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>操作が終わったことと、目的を果たせたことを区別する。</strong>
</div>

</div>

---

## 購入が増えた理由を、変更と結びつけて確かめる

<div style="font-size: 0.75em;">

検索条件を追加した後に購入が増えても、その機能が理由とは限りません。同じ時期の値引きや、訪れたユーザーの違いでも数字は変わります。まず「どう効くはずだったか」を分けて考えます。

<div style="display: grid; grid-template-columns: 1fr auto 1fr auto 1fr; gap: 10px; align-items: center; margin-top: 18px; text-align: center;">
<div style="background-color: #f5f5f5; padding: 16px 10px; border-radius: 8px;"><strong>検索条件が使われる</strong><br><br>対象のユーザーに届いたか</div>
<div>→</div>
<div style="background-color: #f5f5f5; padding: 16px 10px; border-radius: 8px;"><strong>比較の迷いが減る</strong><br><br>必要な情報にたどり着き<br>購入を判断できたか</div>
<div>→</div>
<div style="background-color: #f5f5f5; padding: 16px 10px; border-radius: 8px;"><strong>購入へ進む</strong><br><br>売上につながったか</div>
</div>

<div style="margin-top: 18px;">
条件を使っても迷いが減らなければ、画面や情報を見直します。迷いが減っても購入されなければ、価格や在庫など、次の理由を調べます。可能なら同時期の新旧画面を比較し、難しければ利用者への確認とほかの変化の記録を併せて判断します。
</div>

<div style="margin-top: 16px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>売上だけで成功・失敗を決めず、期待した変化がどこまで起きたかを見る。</strong>
</div>

</div>

---

## 作る速さだけを上げると、使われない機能も積み上がる

<div style="font-size: 0.75em;">

顧客のジョブよりスケジュールを優先して機能を量産する状態を、Melissa Perriは<strong>ビルドトラップ</strong>と呼びました。アウトプットの量だけをAIで増やすと、この罠に入りやすくなります。多くのチームは、新しいものを足すのは得意でも、古いものを消すのは苦手だからです。かつて入ったプロジェクトでは、データベース内で動く処理を調べたところ、約30%がすでに使われていませんでした。

<div style="display: flex; gap: 20px; align-items: center; margin-top: 16px;">
<div style="flex: 1; background-color: #f5f5f5; padding: 15px; border-radius: 8px;">

<strong>機能というアウトプットが1つ増えるたびに</strong>

レビューで読む範囲、テストの対象、運用で守る対象、ユーザーが比べる選択肢が増える。

</div>
<div style="flex: 1; background-color: #f5f5f5; padding: 15px; border-radius: 8px;">

<strong>増えた複雑さが、次の変更を遅くする</strong>

複雑さは、コードの行数よりも、安全に変更するために把握すべきことの多さとして表れます。古い設定や依存、テストが残っているほど、判断とレビューに時間がかかります。

</div>
</div>

<div style="margin-top: 16px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>古いものを減らさず生成だけを増やせば、次の変更は遅くなる。</strong>
</div>

</div>

---

## 速くなった体感も、測定の代わりにならない

<div style="font-size: 0.75em;">

AIの影響を調べる研究組織METRは、経験豊富なオープンソースソフトウェア（OSS）開発者16人に、普段扱うコード群の246課題をAIツールあり・なしで解いてもらい、所要時間と本人の体感を比べました。

<div style="display: flex; gap: 20px; align-items: center; margin-top: 10px;">
<div style="flex: 1; background-color: #f5f5f5; padding: 15px; border-radius: 8px;">

<strong>実測</strong>

各課題は、AIツールを使える条件と使えない条件へ無作為に割り当てられました。2025年前半のツールを使える条件では、完了までの所要時間が<strong>推定19%長く</strong>なりました。測ったのは生成にかかる時間だけでなく、確認や修正を含む課題の完了までです。

</div>
<div style="flex: 1; background-color: #f5f5f5; padding: 15px; border-radius: 8px;">

<strong>体感</strong>

事前には「24%速くなる」と予想し、終わった後も「20%速くなった」と感じていた。測定と体感が、逆向きだった。

</div>
</div>

<div style="margin-top: 16px;">

大規模で成熟したコード群に詳しい開発者と、2025年前半のツールを対象にした結果です。現在のすべての開発に当てはめる数字ではありません。ここで分かるのは、<strong>本人の体感と実測が逆向きになる場合がある</strong>ことです。自分たちの流れを測って判断待ちが見えたら、次の問いは「なぜ、その判断が止まるのか」です。
</div>

<div style="margin-top: 14px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>PR数や体感だけで決めない。バリューストリームマッピングで流れを測り、アウトカムと並べて見る。</strong>
</div>

</div>

---

<!--
_backgroundColor: #0a1929
_color: white
_class: transition
-->

<div style="display: flex; justify-content: center; align-items: center; height: 100%; flex-direction: column; color: white; text-align: center;">

<h2 style="color: white !important;">3. 役割ごとの前提を対話で確かめる</h2>

<strong>待ちの場所が分かっても、役割ごとに問題の見え方が違えば、直し方は決まらない。</strong>

</div>

---

## 役割が違えば、同じ機能でも見え方が変わる

<div style="font-size: 0.75em;">

購入前の相談から開発までに関わる役割を例にします。営業、PM（プロダクトマネージャー）、デザイナー、エンジニアは、同じ機能について別の情報を持っています。

<div style="display: flex; gap: 16px; align-items: center; margin-top: 14px;">
<div style="flex: 1; background-color: #f5f5f5; padding: 15px; border-radius: 8px; text-align: center;">
<strong>営業</strong><br><br>顧客との会話<br>購入の条件
</div>
<div style="flex: 1; background-color: #f5f5f5; padding: 15px; border-radius: 8px; text-align: center;">
<strong>PM</strong><br><br>目指す結果<br>優先順位
</div>
<div style="flex: 1; background-color: #f5f5f5; padding: 15px; border-radius: 8px; text-align: center;">
<strong>デザイナー</strong><br><br>利用する場面<br>操作のつまずき
</div>
<div style="flex: 1; background-color: #f5f5f5; padding: 15px; border-radius: 8px; text-align: center;">
<strong>エンジニア</strong><br><br>コードと依存<br>レビューとテスト
</div>
</div>

<div style="margin-top: 20px;">

情報が別々の資料や会話に散らばっているだけなら、一か所へ集めれば解決します。難しいのは、同じ情報を見ても、役割が背負う責任によって<strong>何を問題と考えるか</strong>が変わることです。

</div>

<div style="margin-top: 14px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>情報を揃えるだけで、判断の前提まで揃うとは限らない。</strong>
</div>

</div>

---

## 「違う情報」の奥に、違う解釈がある

<div style="font-size: 0.7em;">

<div style="display: flex; gap: 24px; align-items: center;">
<div style="width: 22%; text-align: center;">
<img src="../../assets/images/2026/working-with-others-book-cover.png" alt="書籍『他者と働く』の表紙" style="width: 100%; max-height: 310px; object-fit: contain;">
<div style="font-size: 0.55em; color: #888; margin-top: 5px;">宇田川元一『他者と働く』</div>
</div>
<div style="flex: 1;">

宇田川元一さんは、物事をどう理解し、何を正しいと考えるか、その<strong>解釈の枠組み</strong>をナラティヴと呼びます。立場、経験、背負っている責任が違えば、「今月リリースするか」という同じ判断でも、心配することが変わります。

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 8px; margin-top: 14px;">
<div style="background-color: #f5f5f5; padding: 10px 12px; border-radius: 8px;"><strong>営業</strong>　延期すると、商談の機会を逃す</div>
<div style="background-color: #f5f5f5; padding: 10px 12px; border-radius: 8px;"><strong>デザイナー</strong>　今の画面で出すと、利用者が途中で迷う</div>
<div style="background-color: #f5f5f5; padding: 10px 12px; border-radius: 8px;"><strong>エンジニア</strong>　応急処置で出すと、次の変更が難しくなる</div>
<div style="background-color: #f5f5f5; padding: 10px 12px; border-radius: 8px;"><strong>SRE（信頼性と運用を担う役割）</strong>　復旧手順がないまま出すと、障害対応が長引く</div>
</div>

<div style="margin-top: 14px;">
どれか一つだけが正しいとは限りません。相手の判断が不合理に見えるときほど、その役割から何が問題に見え、何を守ろうとしているかを確かめます。
</div>

</div>
</div>

<div style="margin-top: 14px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>「相手が分かっていない」と決める前に、相手からは何が問題に見えているかを確かめる。</strong>
</div>

</div>

<div style="font-size: 0.5em; color: #777; text-align: right; margin-top: 5px;">
出典：宇田川元一『他者と働く――「わかりあえなさ」から始める組織論』2019 ／ <a href="https://publishing.newspicks.com/books/9784910063010">NewsPicks Publishing</a>
</div>

---

## 仕組みで解ける問題と、対話が要る問題を分ける

<div style="font-size: 0.72em;">

『他者と働く』では、既存の知識を当てはめられる<strong>技術的問題</strong>と、関係者が問題の捉え方から見直す<strong>適応課題</strong>を分けます。ソフトウェア開発の待ちには、両方が混ざっています。

<div style="display: flex; gap: 18px; align-items: stretch; margin-top: 16px;">
<div style="flex: 1; background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>技術的問題</strong><br><br>
原因と目標の認識が揃っており、既存の手順や専門知識を使える。たとえば、ビルド時間をキャッシュで短くする。
</div>
<div style="flex: 1; background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>適応課題</strong><br><br>
何を問題とみなすか、何を優先するかが役割ごとに違う。一つの役割だけで解決策を決めても、仕事の進め方は変わりにくい。
</div>
</div>

<div style="margin-top: 18px;">
承認待ちのすべてが適応課題ではありません。重複した確認は仕組みで減らせます。一方、期日、使いやすさ、変更の難しさ、障害リスクのどれを優先するかで止まっているなら、先に互いの前提を確かめます。
</div>

<div style="margin-top: 14px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>手順の問題は仕組みで減らす。前提の違いから生じる待ちは、対話から始める。</strong>
</div>

</div>

---

## 対話は、同意を急ぐことではない

<div style="font-size: 0.7em;">

ここでいう対話は、説得や情報共有の言い換えではありません。互いを、指示に従わせる相手ではなく、問題を一緒に扱う相手として関係を作り直すことです。『他者と働く』では、次の四つを行き来しながら進めます。

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 10px; margin-top: 14px;">
<div style="background-color: #f5f5f5; padding: 12px; border-radius: 8px;"><strong>準備</strong><br><span style="color: #555;">分かり合えていないと認め、自分の前提をいったん保留する</span></div>
<div style="background-color: #f5f5f5; padding: 12px; border-radius: 8px;"><strong>観察</strong><br><span style="color: #555;">相手の言葉、行動、置かれた状況から、何を守ろうとしているかを見る</span></div>
<div style="background-color: #f5f5f5; padding: 12px; border-radius: 8px;"><strong>解釈</strong><br><span style="color: #555;">相手の立場なら、なぜその判断が合理的なのかを考える</span></div>
<div style="background-color: #f5f5f5; padding: 12px; border-radius: 8px;"><strong>介入</strong><br><span style="color: #555;">双方が動ける小さな働きかけを試し、反応を見てまた観察する</span></div>
</div>

<div style="margin-top: 16px;">
一度で分かり合うための順番ではありません。相手の反応から見立てを直し、次の働きかけを変える反復です。まず会話の例で確かめ、その後で対話の材料を図に並べます。
</div>

<div style="margin-top: 12px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>図は結論を出すためではなく、違う前提を出し、次に確かめることを決めるために使う。</strong>
</div>

</div>

---

## 「今月出したい」の理由を、役割ごとに聞く

<div style="font-size: 0.75em;">

たとえば、営業は「今月出したい」、エンジニアは「まだ出せない」と言っているとします。期日の賛否を繰り返す前に、それぞれが守りたいことを確かめます。

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 16px; margin-top: 18px;">
<div style="background-color: #f5f5f5; padding: 16px; border-radius: 8px;">
<strong>営業に確かめる</strong><br><br>
「今月必要なのは、誰のどんな判断ですか」<br>
→ 顧客が導入を決めるために、商品を比較できることを確かめたい。
</div>
<div style="background-color: #f5f5f5; padding: 16px; border-radius: 8px;">
<strong>エンジニアに確かめる</strong><br><br>
「どんな失敗を心配していますか」<br>
→ 全顧客へ公開すると、現在の検索へ戻せない変更が含まれる。
</div>
</div>

<div style="margin-top: 18px;">
この場合、対象の顧客とデザイナーを交えた試用で、購入判断に必要な情報を確かめる案が考えられます。それで営業の目的を満たせるかを聞き、本番公開の範囲と戻す方法は別に決めます。
</div>

<div style="margin-top: 16px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>前提を確かめると、話し合う対象が「出す・出さない」から、<br>「誰に、何を、どこまで確かめてもらうか」へ具体化する。</strong>
</div>

</div>

---

## 対話の材料を、ウォードリーマップに置く

<div style="font-size: 0.72em;">

ユーザーが得たい結果、その結果に必要な要素、各要素の成熟度を一枚に並べると、どこへ投資し、どう運用するかを比べられます。この図を<strong>ウォードリーマップ</strong>と呼びます。

<div style="display: flex; gap: 16px; align-items: stretch; margin-top: 16px;">
<div style="flex: 1; background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>ジョブ</strong><br><br>誰が、どんな状況で、何を達成したいか
</div>
<div style="flex: 1; background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>要素同士の依存</strong><br><br>待ち時間ではなく、ジョブを満たすために何が何を必要とするか
</div>
<div style="flex: 1; background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>成熟度</strong><br><br>作り方や市場の選択肢が、どれだけ確立しているか
</div>
</div>

<div style="margin-top: 18px;">

ウォードリーマップでは、<strong>ユーザーのジョブを何が支え、各要素にどんな選択肢があるか</strong>を見ます。どこで試し、どこへ投資し、何を置き換えるかを話すための図です。後で扱うC4モデルは、ソフトウェアの構造を詳しく見るために使います。見る目的が違うので、一方をもう一方の詳しい版とは扱いません。

</div>

<div style="margin-top: 14px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>要素だけでなく、「誰のため」と「どの段階」を同時に見る。</strong>
</div>

</div>

---

## 縦は見えやすさ、横は成熟度

<div style="font-size: 0.7em;">

<div style="display: flex; gap: 24px; align-items: center;">
<div style="width: 42%;">
<img src="../../assets/images/2026/figure-5-7-wardley-map.png" alt="ウォードリーマップの例" style="width: 100%; max-height: 300px; object-fit: contain;">
<div style="font-size: 0.55em; color: #999; text-align: center; margin-top: 5px;">Figure 5.7 Step 6 of the Wardley Mapping Canvas, a Wardley Map より引用</div>
</div>
<div style="flex: 1;">

<strong>縦</strong>はユーザーからの見えやすさ（可視性）です。一番上にユーザーとジョブを置き、そこから下へ、ジョブを満たすために必要な要素を線でつなぎます。線は、上の要素が下の要素を必要とする関係です。上にあるほどユーザーから見えやすく、下にあるほどユーザーからは見えにくい内部の要素です。

<strong>横</strong>は成熟度です。左から、まだ答えを探している段階、独自に作り込む段階、製品として選べる段階、電気のように誰もが使える共通基盤へ進みます。

横軸は優劣を表しません。置く位置によって、試行錯誤する、独自に作る、製品を選ぶ、共通基盤として扱うなど、適した進め方が変わります。

</div>
</div>

<div style="margin-top: 10px; padding: 10px; background-color: #f5f5f5; border-radius: 8px; text-align: center;">
<strong>縦で「なぜ必要か」を確認し、横で「どう扱うか」を考える。</strong>
</div>

</div>

<div style="font-size: 0.5em; color: #777; text-align: right; margin-top: 4px;">
出典：Nick Tune, Jean-Georges Perrin, <em>Architecture Modernization</em>, Manning, 2024
</div>

---

## 成熟度は、自社の実装年数では決めない

<div style="font-size: 0.75em;">

ウォードリーマップの横軸は、古い技術か新しい技術か、自社で何年使ったかを表すものではありません。その要素の作り方や利用方法が、市場でどれだけ知られ、選べるようになっているかを見ます。

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 16px; margin-top: 18px;">
<div style="background-color: #f5f5f5; padding: 16px; border-radius: 8px;">
<strong>まだ答えを探している要素</strong><br><br>
どの検索条件が顧客の判断に役立つか、まだ確かめられていない。要望だけで決めず、試用や観察を重ねる。
</div>
<div style="background-color: #f5f5f5; padding: 16px; border-radius: 8px;">
<strong>既製の選択肢がある要素</strong><br><br>
検索エンジンや保存領域について、機能・性能・運用条件を比較できる。ただし、既製品が自分たちの必要条件を満たすかは別に確認する。
</div>
</div>

<div style="margin-top: 18px;">
位置に意見が割れたら、候補となる製品、実際の利用例、満たせない条件を持ち寄ります。根拠がない位置は仮置きとします。成熟した要素でも、自前運用が適する場合はあります。
</div>

<div style="margin-top: 16px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>横軸は結論ではない。何を調べ、どの選択肢を比較するかを決める材料です。</strong>
</div>

</div>

---

## 検索の例で、図の読み方を確かめる

<div style="font-size: 0.72em;">

検索機能の例を置くと、縦方向にはジョブを支える依存が見え、横方向には要素ごとに適した進め方が見えてきます。

<div style="display: flex; gap: 18px; align-items: stretch; margin-top: 10px;">
<div style="flex: 1; background-color: #f5f5f5; padding: 12px 14px; border-radius: 8px; text-align: center;">
<strong>ジョブから依存をたどる</strong><br><br>
必要な情報へ早くたどり着きたい<br><span style="line-height: 0.7; display: inline-block;">↓</span><br>検索画面<br><span style="line-height: 0.7; display: inline-block;">↓</span><br>商品データ・検索エンジン<br><span style="line-height: 0.7; display: inline-block;">↓</span><br>計算資源・保存領域
</div>
<div style="flex: 1; background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>成熟度で進め方を変える</strong><br><br>
どの検索条件が役立つかは、ユーザーと小さく試す。検索エンジンは、既製サービスと自前運用を比べる。計算資源や保存領域は、共通基盤として扱えるかを確かめる。
</div>
</div>

<div style="margin-top: 12px;">
一つの機能でも、すべてを同じ方法で作る必要はありません。ジョブに近く、まだ答えがない部分には試行錯誤の時間を使います。選択肢が確立した部分は、必要な制御、運用の負荷、総費用で選びます。
</div>

<div style="margin-top: 12px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>どこで試し、どこで既製の選択肢を使うかを、要素ごとに決める。</strong>
</div>

</div>

---

## 同じ図に、役割ごとに見ている情報を置く

<div style="font-size: 0.72em;">

検索機能を例に、PM、デザイナー、エンジニア、SREが持つ情報を、同じウォードリーマップに並べます。役割が違えば、確かめたいことも変わります。

<div style="display: flex; gap: 16px; align-items: stretch; margin-top: 16px;">
<div style="flex: 1; background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>PM</strong><br><br>誰のどのジョブか<br>何が変われば価値か
</div>
<div style="flex: 1; background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>デザイナー</strong><br><br>どこで利用者が迷うか<br>どんな使われ方をするか
</div>
<div style="flex: 1; background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>エンジニア</strong><br><br>どの要素が必要か<br>変更がどこへ影響するか
</div>
<div style="flex: 1; background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>SRE</strong><br><br>自前で運用すると何が増えるか<br>障害がどこまで影響するか
</div>
</div>

<div style="margin-top: 18px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>誰のジョブを、何が、どの成熟度で支えるかを一枚で確かめる。</strong>
</div>

</div>

---

## 差別化だと思っていたものが、右端へ動いていた

<div style="font-size: 0.7em;">

<div style="display: flex; gap: 24px; align-items: center;">
<div style="flex: 1;">

私たちが差別化の中心（コア）だと信じて作り込んでいた領域が、あるとき<strong>クラウド事業者が運用するマネージドサービスを呼ぶ数十行のコード</strong>に置き換わりました。

「自分たちで作っている」と「まだ独自に作る必要がある」は別のことです。自分たちが独自だと思っていても、市場には既製の選択肢が増え、ユーザーも特別な機能とは見なくなることがあります。ウォードリーマップでは、こうした変化を右への移動として表します。

横軸の右端では、まず既製サービスと比べ、自前運用を続ける理由を問い直します。ただし、必要な制御、性能、障害の切り分け、法令対応、総費用が合わなければ、自前運用へ戻すこともあります。

<div style="margin-top: 12px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>右端は「買え」ではなく、既製サービスと自前運用を比較し直す合図。</strong>
</div>

</div>
<div style="width: 42%;">
<img src="../../assets/images/2026/aff-1-10-wardley-map-build-vs-buy.jpg" alt="効率的に投資しているか" style="width: 100%; height: fit-content;">
<div style="font-size: 0.55em; color: #999; text-align: center; margin-top: 5px;">Figure 1.10 Are we investing efficiently?（Architecture for Flow）より引用</div>
</div>
</div>

</div>

<div style="font-size: 0.5em; color: #777; text-align: right; margin-top: 6px;">
出典：Susanne Kaiser, <em>Architecture for Flow</em> ／ Nick Tune, Jean-Georges Perrin, <em>Architecture Modernization</em>
</div>

---

## 半年計画の刷新は、ジョブを確かめずに始めた

<div style="font-size: 0.75em;">

半年かける予定だった大規模刷新を、4ヶ月目にロールバックしました。つまり、変更を取り消して元に戻しました。振り返ると、「誰のどのジョブを片付けるのか」を問わないまま、<strong>作れるものを作っていた</strong>。

<div style="display: flex; gap: 20px; align-items: center; margin-top: 16px;">
<div style="flex: 1; background-color: #f5f5f5; padding: 15px; border-radius: 8px;">

<strong>ウォードリーマップで見ると</strong>

この半年計画では、刷新の対象をシステム内部の変更に置き、ユーザーが何に困っているかを確かめていませんでした。そのため、変更がどのジョブに結びつくかを説明できませんでした。

</div>
<div style="flex: 1; background-color: #f5f5f5; padding: 15px; border-radius: 8px;">

<strong>バリューストリームで見ると</strong>

ロールバックで、4ヶ月分の変更は誰のジョブも片付けずに消えた。作れることは分かりました。しかし、作るべきだったかは最後まで確かめられませんでした。

</div>
</div>

<div style="margin-top: 16px;">

4ヶ月分を取り消すとなると、やめる判断そのものが重くなります。最初の判断が間違いだったように見えることも、決断を遅らせます。判断が疑われるまでの時間が長いほど、直す費用は高くなる。やめる判断を早くする方法は、このあと扱います。

</div>

<div style="margin-top: 12px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>ユーザーのジョブとの関係を説明できない計画は、始める前に問い直せたはず。</strong>
</div>

</div>

---

## 刷新では、古いコードが守っていた動作も引き継ぐ

<div style="font-size: 0.75em;">

刷新の目的を決めても、書き直すだけでは元のシステムを引き継げません。長く使われたコードには、利用者の例外的な使い方や、過去の障害への対処が残っています。理由が分からない処理を、不要だと判断するのは早すぎます。

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 16px; margin-top: 18px;">
<div style="background-color: #f5f5f5; padding: 16px; border-radius: 8px;">
<strong>たとえば、検索結果が同じでも</strong><br><br>
更新の反映が遅くなれば、販売終了の商品を案内するかもしれない。エラーの返し方が変われば、呼び出し元が再試行できなくなるかもしれない。
</div>
<div style="background-color: #f5f5f5; padding: 16px; border-radius: 8px;">
<strong>置き換える前に残す</strong><br><br>
守る動作はテストへ。そう決めた理由は設計の記録へ。実際の利用や障害の記録と照らし、必要な動作と古い都合を分ける。
</div>
</div>

<div style="margin-top: 18px;">
すべての古い動作を永久に残す必要はありません。変えるなら、誰が依存しているかを確かめ、移行方法を決めます。後半では、C4モデルという構造の表し方を使って、その影響を調べます。
</div>

<div style="margin-top: 16px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>残すべきなのは、利用者が頼っている動作と、その理由。<br>それを確かめられて初めて、実装を変える選択肢が増える。</strong>
</div>

</div>

---

## 図に並べると、何を話し合うかが揃う

<div style="font-size: 0.72em;">

PM・デザイナー・エンジニアに、ユーザーと直接話す営業やCS（カスタマーサクセス）も加わって30分だけ集まり、ユーザーのジョブ、必要な要素、依存をざっくり並べます。最初から正確でなくても、見ている情報の違いが分かれば話し合いを始められます。

<div style="display: flex; gap: 16px; align-items: stretch; margin-top: 14px;">
<div style="flex: 1; background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>ジョブとの関係を説明できない要素</strong><br><span style="color: #555;">今回の範囲外。捨てずに、別のジョブとの関係を確かめ直す</span>
</div>
<div style="flex: 1; background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>横軸の右端にある要素</strong><br><span style="color: #555;">既製サービスと自前運用を比較。必要な制御と総費用で決める</span>
</div>
<div style="flex: 1; background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>依存の線が集まる要素</strong><br><span style="color: #555;">複数の機能や仕組みが共通して必要とする要素。バリューストリームマッピングで測った待ち時間と見比べ、担当するチームを決める</span>
</div>
</div>

<div style="margin-top: 14px;">

図の目的は、関係者全員が見ている情報を揃え、投資を決める理由をはっきりさせることです。最初から現状の細部まで正確に描く必要はありません。まず、合意にかかる時間を短くします。次に、<strong>ジョブの発見から結果の確認までを、どのチームが担当するか</strong>を見直し、チーム間の引き継ぎそのものを減らします。

</div>

<div style="margin-top: 12px; padding: 14px; background-color: #e0e0e0; border-radius: 8px; text-align: center; font-size: 1.1em;">
<span style="color: #e65100; font-weight: bold;">図で意見の違いを具体化する。計測で、次に確かめることを選ぶ。</span>
</div>

</div>

---

## 判断待ちを短くする三つの取り決め

<div style="font-size: 0.72em;">

前提を確かめる対話と並行して、判断の依頼そのものにも形を与えます。判断が止まりやすいのは、誰が決めるのか、何をいつまでに返すのか、返事がないときにどう進めるのかが曖昧なときです。

<div style="display: flex; gap: 16px; align-items: stretch; margin-top: 14px;">
<div style="flex: 1; background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>決める人を一人にする</strong><br><br>
その判断を引き受ける権限と責任のある人を決める。詳しい人や影響を受ける人から、判断材料を集める。
</div>
<div style="flex: 1; background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>全員一致を待たない</strong><br><br>
反対意見は記録に残す。決まった後は、その方針で動く。
</div>
<div style="flex: 1; background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>依頼に四つを書く</strong><br><br>
誰に、何を、いつまでに、返事がないときはどうするか。「なるべく早く」は期限ではない。
</div>
</div>

<div style="margin-top: 16px;">

判断を目的に集まるなら、決められる人を呼び、必要な情報を先に渡します。進捗共有は文書で済ませ、前提の食い違いが大きいときは対話に時間を使います。10人で1時間話すなら、その10人時で何を確かめるかを明確にします。

</div>

<div style="margin-top: 12px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>判断の依頼は、内容だけでなく「誰が・いつまでに・返事がないとき」を決める。</strong>
</div>

</div>

---

## 返事がないことを、承認とは扱わない

<div style="font-size: 0.75em;">

判断を待ち続けないためには、期限だけでなく、その後の動き方が必要です。ただし「返事がなければ進める」を、あらゆる変更に適用すると、必要な確認まで省いてしまいます。

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 16px; margin-top: 18px;">
<div style="background-color: #f5f5f5; padding: 16px; border-radius: 8px;">
<strong>確認できるまで止める変更</strong><br><br>
本番データの削除、閲覧権限の変更、元に戻せない移行など。期限を過ぎたら代わりに判断できる人へ相談し、承認済みとはみなさない。
</div>
<div style="background-color: #f5f5f5; padding: 16px; border-radius: 8px;">
<strong>合意した範囲で進められる作業</strong><br><br>
検証環境での比較や、利用者へ影響しない調査など。あらかじめ決めた範囲なら進め、結果を報告する。範囲を超えたら再度相談する。
</div>
</div>

<div style="margin-top: 18px;">
「金曜までに判断できなければ、本番公開は保留し、試用の準備だけ進める」のように書きます。全員一致を待たないことも、必要な専門確認や安全上の条件を省くことではありません。
</div>

<div style="margin-top: 16px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>待ちを減らすとは、確認を飛ばすことではなく、止める範囲と進める範囲を決めること。</strong>
</div>

</div>

---

## 計測と図を、日々の判断へつなぐ

<div style="font-size: 0.72em;">

長い待ちや前提の違いを見つけても、眺めているだけでは流れは変わりません。何が一番の問題かを絞り、どこへ力を集めるかを決め、日々の仕事へ反映します。

<div style="display: grid; grid-template-columns: 1fr 1fr 1fr; gap: 14px; margin-top: 18px;">
<div style="padding: 14px; background-color: #f5f5f5; border-radius: 8px;">
<strong>診断<br><span style="color: #555;">いま何が起きているか</span></strong><br><br>
実際の記録と各役割の見方から、全体の流れを最も止めているものを一文で説明する。
</div>
<div style="padding: 14px; background-color: #f5f5f5; border-radius: 8px;">
<strong>方針<br><span style="color: #555;">何を選ぶか</span></strong><br><br>
どのジョブとアウトカムを優先し、いまは何をやらないかまで決める。
</div>
<div style="padding: 14px; background-color: #f5f5f5; border-radius: 8px;">
<strong>進め方<br><span style="color: #555;">どう続けるか</span></strong><br><br>
決める人、判断日、確認する数字、例外の扱いを、日々の流れに組み込む。
</div>
</div>

<div style="margin-top: 20px; padding: 14px; background-color: #e0e0e0; border-radius: 8px; text-align: center; font-size: 1.08em;">
<strong>「改善する」だけでは進めない。何に力を集め、いまは何をしないか、どう確かめるかまで決める。</strong>
</div>

</div>

---

<!--
_backgroundColor: #0a1929
_color: white
_class: transition
-->

<div style="display: flex; justify-content: center; align-items: center; height: 100%; flex-direction: column; color: white; text-align: center;">

<h2 style="color: white !important;">4. ジョブから「作る・任せる・やめる」を判断する</h2>

<strong>作る理由を決め、確かめられる範囲をAIへ任せ、やめる条件と判断日を残す。</strong>

</div>

---

## ジョブは、解決策が変わっても残る

<div style="font-size: 0.72em;">

<div style="display: flex; gap: 24px; align-items: center;">
<div style="flex: 1;">

ジョブ理論では、ユーザーは目的を果たすためにプロダクトを「雇う」と考えます。機能が揃っていてもジョブが片付かなければ、別の手段へ乗り換えます。

状況とジョブが同じなら、<strong>解決策を変えてもジョブそのものは変わりません</strong>。AIで作れるものは増え続けますが、ユーザーのジョブは、私たちの実装能力に合わせて増えません。

<div style="margin-top: 14px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>作れるものがいくら増えても、ユーザーのジョブは増えない。</strong>
</div>

</div>
<div style="width: 40%;">
<img src="../../assets/images/2026/aff-1-1-building-right-thing.jpg" alt="ユーザー視点から正しいものを作る" style="width: 100%; height: fit-content;">
<div style="font-size: 0.55em; color: #999; text-align: center; margin-top: 5px;">Figure 1.1 Starting from the user perspective to build the right thing（Architecture for Flow）より引用</div>
</div>
</div>

</div>

<div style="font-size: 0.5em; color: #777; text-align: right; margin-top: 6px;">
出典：<a href="https://www.christenseninstitute.org/theory/jobs-to-be-done/">Christensen Institute, Jobs to Be Done Theory</a>／ Susanne Kaiser, <em>Architecture for Flow</em>
</div>

---

## 作るべきかは、四つの問いで決める

<div style="font-size: 0.7em;">

四つの問いで、作る理由、実際の困りごと、期待するアウトカムと確かめ方、代わりの手段を確認します。実装案を比べる前に、そもそも作る必要があるかを判断します。

<div style="display: flex; flex-direction: column; gap: 8px; margin-top: 6px;">
<div style="padding: 12px 14px; background-color: #f5f5f5; border-radius: 8px;">
<strong>作るものとジョブの関係を説明できるか</strong><br>
<span style="color: #555;">手段を消し、「どんな状況で、何を達成したいのか。なぜそれが大切か」を一文で書く</span>
</div>
<div style="padding: 12px 14px; background-color: #f5f5f5; border-radius: 8px;">
<strong>最近、実際に困った場面があったか</strong><br>
<span style="color: #555;">抽象的な賛否より、直近の行動を見る。そのとき何を試し、何が決め手だったか</span>
</div>
<div style="padding: 12px 14px; background-color: #f5f5f5; border-radius: 8px;">
<strong>期待するアウトカムと、確かめ方を決められるか</strong><br>
<span style="color: #555;">利用後に何が変われば価値が届いたと言えるか、いつ、誰が確かめるかを先に決める</span>
</div>
<div style="padding: 12px 14px; background-color: #f5f5f5; border-radius: 8px;">
<strong>既存の手段や小さな実験で、先に確かめられないか</strong><br>
<span style="color: #555;">まず既製サービスと比べる。必要な制御や総費用が合わなければ自前で持つ。不確かなら小さく試す</span>
</div>
</div>

<div style="margin-top: 12px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>答えられない問いがあれば、実装を始める前に、ユーザーの行動や実際の待ち時間を確かめる。</strong>
</div>

</div>

---

## 書かなかった判断は、実装の中で補われる

<div style="font-size: 0.72em;">

作る理由を決めても、依頼に書かなければ伝わりません。AIは依頼文や既存コードから不足を補って進めることがあります。途中で確認しないまま複数の作業を進めると、異なる前提で実装されても、レビューまで気づけません。

<div style="display: grid; grid-template-columns: 0.85fr auto 1.5fr; gap: 14px; align-items: center; margin-top: 16px;">
<div style="background-color: #e0e0e0; padding: 18px; border-radius: 8px; text-align: center; font-size: 1.08em;">
<strong>架空の依頼</strong><br><br>
「検索APIを速くする」
</div>
<div style="font-size: 1.6em;">→</div>
<div style="display: flex; flex-direction: column; gap: 8px;">
<div style="background-color: #f5f5f5; padding: 10px 14px; border-radius: 8px;"><strong>案A</strong>　問い合わせを改善し、今の結果を保つ</div>
<div style="background-color: #f5f5f5; padding: 10px 14px; border-radius: 8px;"><strong>案B</strong>　結果を再利用し、更新の反映が遅れる</div>
<div style="background-color: #f5f5f5; padding: 10px 14px; border-radius: 8px;"><strong>案C</strong>　返す件数を減らし、取得時間を縮める</div>
</div>
</div>

<div style="margin-top: 16px;">
同じ依頼から考えられる案ですが、利用者への影響は違います。情報の古さや結果の件数を変えてよいかが未決定なら、速くなっただけでは受け入れられません。問題は実装が違うことではなく、許容する変更をチームが決めていないことです。
</div>

<div style="margin-top: 14px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>実装方法の違いと、守る条件の食い違いは別です。<br>決めていないことを、相談なしに決まったことにしない。</strong>
</div>

</div>

---

## 曖昧さを残すと、レビューが仕様を決める場になる

<div style="font-size: 0.75em;">

先ほどの案Bが完成してから「納期が古くなるのは困る」と分かったら、コードの確認だけでは済みません。許せる遅れを関係者へ聞き、方式を選び直し、実装とテストを直すことになります。

<div style="display: grid; grid-template-columns: 1fr auto 1fr auto 1fr; gap: 12px; align-items: center; text-align: center; margin-top: 20px;">
<div style="background-color: #f5f5f5; padding: 16px; border-radius: 8px;"><strong>差分から前提を探す</strong><br>何を変えてよいと<br>判断したのか</div>
<div>→</div>
<div style="background-color: #f5f5f5; padding: 16px; border-radius: 8px;"><strong>関係者へ確認する</strong><br>その動作で<br>ユーザーが困らないか</div>
<div>→</div>
<div style="background-color: #f5f5f5; padding: 16px; border-radius: 8px;"><strong>実装し直す</strong><br>変更範囲とテストを<br>組み直す</div>
</div>

<div style="margin-top: 18px;">
複数のPRが同じ未決定事項に依存していれば、その判断が終わるまで全部が待ちます。AIがコードを書く時間を短くしても、ここで増えた調査・相談・手戻りは、そのままでは短くなりません。
</div>

<div style="margin-top: 16px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>文書を書くのは、説明を増やすためではない。<br>実装後に発覚すると高くつく判断を、先に済ませるためです。</strong>
</div>

</div>

---

## 実装前の判断を、設計文書やPRに書く

<div style="font-size: 0.75em;">

設計の背景と方針を書くDesign Docや、PRの説明に、AIが作業前に読む判断材料を置きます。この発表では、期待する動作と守る条件をまとめたものを<strong>仕様</strong>と呼びます。七つの観点を使って、決め忘れを探します。

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 10px; margin-top: 12px;">
<div style="background-color: #f5f5f5; padding: 11px 14px; border-radius: 8px;">
<strong>目標</strong>　誰のどのジョブを、なぜ解くか<br>
<strong>受け入れ基準</strong>　結果を見て判定できる条件
</div>
<div style="background-color: #f5f5f5; padding: 11px 14px; border-radius: 8px;">
<strong>不変条件</strong>　変えてはいけない動作や品質<br>
<strong>境界</strong>　対象と対象外。越えるなら止める
</div>
<div style="background-color: #f5f5f5; padding: 11px 14px; border-radius: 8px;">
<strong>完了の定義</strong>　テスト、文書、確認結果など、PRを受け入れられる状態
</div>
<div style="background-color: #f5f5f5; padding: 11px 14px; border-radius: 8px;">
<strong>先行事例</strong>　似た実装と、過去に試して失敗した案<br>
<strong>未解決の問い</strong>　決める人と、最初の調べ方
</div>
</div>

<div style="margin-top: 14px;">
七つを毎回すべて埋める必要はありません。小さな変更はPRの説明へ、複数のPRにまたがる変更はDesign Docへ書きます。文量は、一回の作業で判断する範囲に合わせ、背景は必要な箇所へリンクします。
</div>

<div style="margin-top: 12px; padding: 11px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>長く詳しく書けばよいわけではない。曖昧な言葉、隠れた前提、古い情報を減らし、一度で読み切れる量に絞る。</strong>
</div>

</div>

---

## 「検索を速くする」を、確かめられる依頼へ変える

<div style="font-size: 0.75em;">

先ほどは検索APIの速さを例にしましたが、本当に短くしたいのは、商品を選ぶまでの時間かもしれません。ここでは、候補を絞れず困っていると分かった架空例を考えます。利用者の困りごとと変更の条件をまとめ、効果は仮説として書きます。

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 14px; margin-top: 16px;">
<div style="background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>目標と仮説</strong><br>
候補が多く比較できない人を助けたい。納期で絞れれば、購入候補を選びやすくなると考える。
</div>
<div style="background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>受け入れ基準</strong><br>
指定した納期に合う商品を表示し、条件を外すと元の結果に戻る。該当なしの場合も表示する。
</div>
<div style="background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>守る条件と変更範囲</strong><br>
閲覧権限は変えない。今回の対象は絞り込み。検索基盤の交換が必要なら、着手前に相談する。
</div>
<div style="background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>未決定の点と完了の確認</strong><br>
納期未定の商品を含めるかはPMが確認する。PRにはテスト結果と実際の操作の記録を添える。
</div>
</div>

<div style="margin-top: 16px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>実装の受け入れ条件と、利用後に確かめる効果を分ける。<br>テストが通ったことだけで、「購入候補を選びやすくなった」とは決めない。</strong>
</div>

</div>

---

## 決めきれないことは、実装ではなく調査として任せる

<div style="font-size: 0.75em;">

最初からすべてを決める必要はありません。納期で絞れると本当に選びやすいのか、今の基盤で実現できるのかが分からないなら、まず確かめる作業を依頼します。採用する実装を作る仕事とは、完了の条件を分けます。

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 16px; margin-top: 18px;">
<div style="background-color: #f5f5f5; padding: 16px; border-radius: 8px;">
<strong>調査・比較を任せる</strong><br><br>
遅い処理の計測、既存コードの確認、案ごとの効果と費用の比較を求める。仮定と未確認の点も報告してもらう。本番へ反映しない。
</div>
<div style="background-color: #f5f5f5; padding: 16px; border-radius: 8px;">
<strong>実装を任せる</strong><br><br>
採用する案と守る条件を決める。権限や結果の意味を変える必要が出たら、推測で進めず相談する。実装方法の細部は提案してもらう。
</div>
</div>

<div style="margin-top: 18px;">
複数のAIに異なる案を比較させること自体は役立ちます。その場合も、比較する条件と試す範囲をそろえます。調査で前提が変わったら依頼を更新し、着手済みの作業へ変更点を伝えます。
</div>

<div style="margin-top: 16px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>未決定をなくしてから頼むのではなく、未決定を勝手に確定させない頼み方をする。</strong>
</div>

</div>

---

## AIには、実装より先に計画を出してもらう

<div style="font-size: 0.72em;">

仕様で「何を満たすか」を決めたら、「どう進めるか」はAIに提案してもらいます。人は、その計画が目標、受け入れ基準、不変条件、境界を外していないかを確認します。実装を始めるのは、その後です。

<div style="display: grid; grid-template-columns: 1fr auto 1fr auto 1fr; gap: 10px; align-items: center; margin-top: 18px; text-align: center;">
<div style="padding: 14px 10px; background-color: #f5f5f5; border-radius: 8px;"><strong>チーム</strong><br><span style="color: #555;">仕様で判断をそろえる</span></div>
<div style="font-size: 1.4em;">→</div>
<div style="padding: 14px 10px; background-color: #f5f5f5; border-radius: 8px;"><strong>AI</strong><br><span style="color: #555;">調査結果と計画を出す</span></div>
<div style="font-size: 1.4em;">→</div>
<div style="padding: 14px 10px; background-color: #f5f5f5; border-radius: 8px;"><strong>チーム</strong><br><span style="color: #555;">計画が仕様を満たすか確認する</span></div>
</div>

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 14px; margin-top: 18px;">
<div style="background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>計画が仕様から外れている</strong><br><br>
読み違い、情報不足、実現上の制約を確かめます。必要な情報を補うか、変更が必要な条件を相談します。
</div>
<div style="background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>計画は仕様どおりだが、望ましくない</strong><br><br>
仕様に必要な条件が抜けているか、選んだ方法に問題がないかを確かめます。ジョブやアウトカムへ戻り、依頼と計画のどちらを直すかを決めます。
</div>
</div>

<div style="margin-top: 14px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>数百行の差分から意図を推測する前に、計画の段階で方向のずれを止める。</strong>
</div>

</div>

---

## 計画を読んだだけでは、検証したことにならない

<div style="font-size: 0.72em;">

計画の確認で分かるのは、目的へ向かう道筋が妥当かどうかです。実際に正しく動くか、安全か、アウトカムにつながるかは、成果物を動かして初めて分かります。流暢で詳しい計画も、その証拠にはなりません。

<div style="display: grid; grid-template-columns: 1fr auto 1fr auto 1fr; gap: 10px; align-items: center; margin-top: 18px; text-align: center;">
<div style="padding: 14px 10px; background-color: #f5f5f5; border-radius: 8px;"><strong>計画</strong><br><span style="color: #555;">方向と前提を確認する</span></div>
<div style="font-size: 1.4em;">→</div>
<div style="padding: 14px 10px; background-color: #f5f5f5; border-radius: 8px;"><strong>小さな実装</strong><br><span style="color: #555;">確認できる単位まで進める</span></div>
<div style="font-size: 1.4em;">→</div>
<div style="padding: 14px 10px; background-color: #f5f5f5; border-radius: 8px;"><strong>検証</strong><br><span style="color: #555;">テスト・計測・利用結果を見る</span></div>
</div>

<div style="margin-top: 20px;">
大きな作業を一度に実装すると、最初の読み違いが後続の変更へ広がります。調査、構造を決める変更、動く最小単位の実装へ分け、区切りごとに結果を確かめてから次へ進みます。
</div>

<div style="margin-top: 16px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>計画は方向をそろえる。検証は、実際に起きたことを確かめる。両方を混ぜない。</strong>
</div>

</div>

---

## テストが通っても、期待する動作が違えば困る

<div style="font-size: 0.75em;">

AIが実装とテストを両方作る場合、同じ読み違いが両方に入ることがあります。たとえば、納期未定の商品を検索結果へ含めるか決まっていないのに、実装でもテストでも「含める」としていれば、テストは通ってしまいます。

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 16px; margin-top: 18px;">
<div style="background-color: #f5f5f5; padding: 16px; border-radius: 8px;">
<strong>期待する結果の根拠を確かめる</strong><br><br>
チームが合意した動作、既存の外部仕様、過去の不具合を根拠にする。新しい実装が返した値を、そのまま正解にしない。
</div>
<div style="background-color: #f5f5f5; padding: 16px; border-radius: 8px;">
<strong>困る場面でも確かめる</strong><br><br>
納期未定、該当商品なし、閲覧権限なし、接続先が応答しない場合を試す。必要な動作を崩したら、検査が失敗するかも確認する。
</div>
</div>

<div style="margin-top: 18px;">
別のAIを確認役にしても、同じ曖昧な依頼だけを渡せば十分とは限りません。何を根拠に正しいと判断したかを見ます。そのうえで、商品を選びやすくなったかは、テストとは別に利用者と確かめます。
</div>

<div style="margin-top: 16px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>検査の成功だけでなく、その検査が何を正しいと見なしているかを確認する。</strong>
</div>

</div>

---

## AIに任せるのは、確かめて戻せる範囲まで

<div style="font-size: 0.72em;">

作るべきかをチームで決めた後も、AIへどこまで任せるかは一律ではありません。失敗をすぐに見つけられ、元に戻せる作業ほど広く任せられます。影響が大きく、誤りを見つけにくい作業ほど、小さく区切って人が途中で確認します。

仕様が伝えられるのは、チームが言葉にした意図と条件です。その変更がプロダクト全体にふさわしいか、ユーザーの負担に見合うかは、成果物を見て人が判断します。

<div style="display: flex; gap: 14px; align-items: stretch; margin-top: 14px;">
<div style="flex: 1; background-color: #f5f5f5; padding: 13px; border-radius: 8px;">
<strong>広く任せやすい作業</strong><br><br>ビルド、型検査、既存の動作を固定したテストで、成否を低い負担で確かめられる。失敗しても元に戻せる。
</div>
<div style="flex: 1; background-color: #f5f5f5; padding: 13px; border-radius: 8px;">
<strong>小さく区切る作業</strong><br><br>権限、決済、本番データのように、誤りの影響が大きい。変更範囲を絞り、途中で人が確認する。
</div>
<div style="flex: 1; background-color: #f5f5f5; padding: 13px; border-radius: 8px;">
<strong>要約ではなく証拠を確認する</strong><br><br>AI自身の説明をレビューの代わりにしない。可能なら作業を担当したAIとは確認役を分け、差分、テスト結果、計測、画面、分かっている不足を確かめる。
</div>
</div>

<div style="margin-top: 12px;">
本番へ出す変更は、数か月後にも、何が変わり、なぜ安全だと判断したかを説明できる状態にします。
</div>

<div style="margin-top: 12px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center; font-size: 1.02em;">
<span style="color: #e65100; font-weight: bold;">AIへ任せる範囲は、誤りを見つけて元に戻せるところまで。<br>作業は任せても、作るべきかと受け入れるかは人が決める。</span>
</div>

</div>

---

## 任せる範囲と、同時に動かす数は別に決める

<div style="font-size: 0.75em;">

一つの作業をAIに任せられることと、複数の作業を同時に受け入れられることは別です。実装が並行して進んでも、判断とレビューが一人へ集まれば、そこで待ちが増えます。

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 16px; margin-top: 18px;">
<div style="background-color: #f5f5f5; padding: 16px; border-radius: 8px;">
<strong>一件を、どこまで任せるか</strong><br><br>
変更範囲、失敗の見つけ方、途中で相談する条件を決める。難しい作業でも、検証環境で結果を確かめられるなら任せやすい。
</div>
<div style="background-color: #f5f5f5; padding: 16px; border-radius: 8px;">
<strong>何件を、同時に進めるか</strong><br><br>
作業同士が同じ判断やファイルを奪い合わないか、戻ってきた結果を確認できるかで決める。独立していなければ、先に順番を決める。
</div>
</div>

<div style="margin-top: 18px;">
未確認の差分や未回答の質問が増え続けるなら、同時進行を減らします。ここでも見るのは、動かしているAIの数より、確認を終えて利用できる状態になった仕事です。
</div>

<div style="margin-top: 16px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>任せる量は、生成できる量と、チームが確認して引き受けられる量を見て決める。</strong>
</div>

</div>

---

## 同じ見落としは、コード・Lint・テストで防ぐ

<div style="font-size: 0.72em;">

AIが作る量が増えるほど、人が同じ見落としを毎回指摘するやり方は詰まります。レビューで見つけた失敗は、次回もっと早く見つけられる形へ戻します。

<div style="display: grid; grid-template-columns: 1fr 1fr 1fr; gap: 14px; margin-top: 18px;">
<div style="background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>原因をコードで直す</strong><br><br>
使い方を間違えやすいAPIや、読まないと分からない境界は、説明を増やす前に構造を直す。
</div>
<div style="background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>構造規約をLintで止める</strong><br><br>
Lintはコードの規約違反を機械的に見つける仕組みです。既存の検査を使い、固有の規約は必要に応じて自作し、変更時に自動実行します。
</div>
<div style="background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>振る舞いをテストで固定する</strong><br><br>
値の条件や業務の動作など、実行結果で確かめるものはテストへ移す。
</div>
</div>

<div style="margin-top: 20px;">
同じ注意を文章で読ませ続ける前に、コードの構造で防ぐか、Lint・テストで判定できないかを考えます。
</div>

<div style="margin-top: 16px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>機械で判定できることは、レビューより前に止める。</strong>
</div>

</div>

---

## コンテキストには、判断の理由と作業の前提を残す

<div style="font-size: 0.75em;">

ここでいう<strong>コンテキスト</strong>は、依頼文、参照するコードや文書、実行結果など、AIが判断に使う情報です。文章の注意だけに頼らず、規則はLint・テストへ移し、操作できる範囲は権限で制限します。文書には、実装だけでは分からない理由や作業手順を残します。

<div style="display: flex; gap: 20px; align-items: stretch; margin-top: 20px;">
<div style="flex: 1; background-color: #f5f5f5; padding: 16px; border-radius: 8px;">
<strong>リポジトリ全体で繰り返す前提</strong><br><br>
作業前に読むAGENTS.mdには、対象の範囲、ビルド手順、役割分担を短く残す。既存のコードから読み取れる説明を重ねすぎない。
</div>
<div style="flex: 1; background-color: #f5f5f5; padding: 16px; border-radius: 8px;">
<strong>作業固有の判断</strong><br><br>
目標、受け入れ基準、境界など、先ほど仕様として決めた作業固有の判断はDesign DocやPRの説明へ残す。
</div>
</div>

<div style="margin-top: 22px;">
ソフトウェアの変更と一緒に文書も更新します。長い作業の引き継ぎでは、目的、確認済みの結果、未解決の点、次の確認を残します。古い指示を現行の方針と混ぜず、必要な情報へたどり着けるようにします。
</div>

<div style="margin-top: 18px; padding: 14px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>理由と未決定の点を文書で渡し、守れる規則は実行環境でも守る。</strong>
</div>

</div>

---

## 機能を消す方が、作るより難しい

<div style="font-size: 0.75em;">

AIへ任せて作れる量が増えても、機能を消してよいかはコードだけでは決められません。追加では新しい動作と既存への影響を確かめます。削除ではさらに、<strong>誰が今の動作を頼りにしているか</strong>を調べます。その判断材料は、コードだけには残っていません。

<div style="display: flex; gap: 18px; align-items: stretch; margin-top: 16px;">
<div style="flex: 1; background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>利用実態と重要性を判断しにくい</strong><br><br>
短期間の利用記録だけでは、誰が、どんな状況で使っているかを捉えにくい。利用回数が少なくても、特定の顧客の業務や障害時の復旧に欠かせないことがあります。
</div>
<div style="flex: 1; background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>依存が見えにくい</strong><br><br>
設定、データ、バッチ、帳票、運用手順、他チームの仕組みが、明示されないまま機能に依存していることがあります。
</div>
</div>

<div style="margin-top: 20px; padding: 14px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>利用回数だけでも、コードだけでも、消してよいとは判断できない。</strong>
</div>

</div>

---

## 止める前に、利用者と依存先を確かめる

<div style="font-size: 0.72em;">

同じ機能について、利用者にとっての重要性と、仕組みが受ける影響を別々に確かめます。どちらか一方だけでは、安全に止められません。

<div style="display: flex; gap: 20px; align-items: stretch; margin-top: 16px;">
<div style="flex: 1; background-color: #f5f5f5; padding: 15px; border-radius: 8px;">
<strong>利用者にとっての重要性</strong><br><br>
営業やCSには顧客の業務への影響を、デザイナーには利用する場面を確かめます。利用回数が少なくても、特定の業務や復旧時に欠かせない場合があります。
</div>
<div style="flex: 1; background-color: #f5f5f5; padding: 15px; border-radius: 8px;">
<strong>仕組みが受ける影響</strong><br><br>
エンジニアにはコードとデータの依存を、SREや運用担当には障害時の使われ方を確かめます。設定や帳票など、コードの外に依存が残ることもあります。
</div>
</div>

<div style="display: grid; grid-template-columns: 1fr auto 1fr auto 1fr; gap: 10px; align-items: center; margin-top: 18px; text-align: center;">
<div style="padding: 12px 10px; background-color: #f5f5f5; border-radius: 8px;"><strong>影響範囲を確かめる</strong></div>
<div style="font-size: 1.3em;">→</div>
<div style="padding: 12px 10px; background-color: #f5f5f5; border-radius: 8px;"><strong>関係者へ知らせ、新規利用を止める</strong></div>
<div style="font-size: 1.3em;">→</div>
<div style="padding: 12px 10px; background-color: #f5f5f5; border-radius: 8px;"><strong>元に戻せる状態で停止する</strong></div>
</div>

<div style="margin-top: 16px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>利用者への重要性と構造上の影響を確かめ、関係者へ知らせてから段階的に止める。</strong>
</div>

</div>

---

## C4モデルは、構造の詳しさを四段階にそろえる

<div style="font-size: 0.72em;">

機能を消した影響を確かめるとき、まず全体を見て、必要な箇所だけ詳しくします。<strong>C4モデル</strong>は、システムと周囲の関係、内部のアプリとデータ、アプリ内の役割のまとまり、具体的なコードという四段階で構造を表します。それぞれをシステムコンテキスト、コンテナ、コンポーネント、コードと呼びます。

<div style="text-align: center; margin-top: 8px;">
<img src="../../assets/images/2026/value-flow-across-roles/c4-static-structure.png" alt="システムコンテキスト、コンテナ、コンポーネント、コードへ段階的に詳しくするC4モデルの概観" style="height: 264px; max-width: 100%; object-fit: contain;">
</div>

<div style="margin-top: 8px; padding: 10px 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>四段階すべてを描く必要はありません。この発表では、上の二つを中心に、<br>「誰に影響するか」「どのアプリやデータに影響するか」を確かめます。</strong>
</div>

</div>

<div style="font-size: 0.5em; color: #777; text-align: right; margin-top: 4px;">
画像：<a href="https://c4model.com/diagrams">Simon Brown, C4 model</a>, CC BY 4.0
</div>

---

## システムコンテキスト図で、利用者と外部連携を見る

<div style="display: flex; gap: 22px; align-items: center; font-size: 0.7em;">

<div style="flex: 1.15; text-align: center;">
<img src="../../assets/images/2026/value-flow-across-roles/c4-system-context.png" alt="架空のインターネットバンキングを例に、利用者、対象システム、外部システムを示したシステムコンテキスト図" style="height: 342px; max-width: 100%; object-fit: contain;">
</div>

<div style="flex: 0.85;">

対象システムと周囲の関係を見るのが、<strong>システムコンテキスト図</strong>です。対象システムを一つの箱として扱い、その周りに利用者と外部システムを置きます。

<div style="margin-top: 16px; padding: 14px; background-color: #f5f5f5; border-radius: 8px;">
<strong>最初に確かめること</strong><br>
誰がその機能を使い、どのジョブを片付けているのか。どの外部システムから呼ばれるのか。止めたとき、誰の仕事や外部連携に影響するのか。
</div>

<div style="margin-top: 14px;">
営業やCSが知る利用場面と、エンジニアが知る外部連携を、同じシステムの周りへ置けます。ここで、ジョブの理解と仕組みの範囲がつながります。
</div>

</div>
</div>

<div style="font-size: 0.5em; color: #777; text-align: right; margin-top: 4px;">
画像：<a href="https://c4model.com/diagrams/system-context">Simon Brown, System Context diagram</a>, CC BY 4.0
</div>

---

## コンテナ図で、アプリ・データ・通信を見る

<div style="display: flex; gap: 22px; align-items: center; font-size: 0.7em;">

<div style="flex: 1.08; text-align: center;">
<img src="../../assets/images/2026/value-flow-across-roles/c4-containers.png" alt="架空のインターネットバンキングを例に、アプリケーション、データストア、外部システムとの通信を示したコンテナ図" style="height: 350px; max-width: 100%; object-fit: contain;">
</div>

<div style="flex: 0.92;">

対象システムの中へ一段詳しく入るのが、<strong>コンテナ図</strong>です。アプリケーション、データストア、それらの通信に分けて表します。

<div style="margin-top: 14px; padding: 13px; background-color: #f5f5f5; border-radius: 8px;">
<strong>C4モデルでいう「コンテナ」</strong><br>
Dockerコンテナに限りません。Webアプリ、API、バッチ、データベースなど、実行するアプリケーションかデータストアを指します。
</div>

<div style="margin-top: 14px; padding: 13px; background-color: #f5f5f5; border-radius: 8px;">
<strong>次に確かめること</strong><br>
どのアプリ、データ、通信が依存しているか。止めたときに使える代替経路があるか。
</div>

<div style="margin-top: 14px;">
システムコンテキスト図で影響を受ける相手を絞り、コンテナ図で変更や停止が波及する経路を絞ります。コンポーネントやコードを見るのは、経路をまだ特定できない箇所だけです。
</div>

</div>
</div>

<div style="font-size: 0.5em; color: #777; text-align: right; margin-top: 4px;">
画像：<a href="https://c4model.com/diagrams/container">Simon Brown, Container diagram</a>, CC BY 4.0
</div>

---

## 検索の構造を、変更と相談の範囲へつなげる

<div style="font-size: 0.75em;">

銀行システムの図で見た読み方を、検索の架空例へ戻して使います。対象は商品検索システムです。検索APIの内部を変えたいとき、接続先と、影響を受ける利用者を確かめます。

<div style="border: 2px solid #999; border-radius: 8px; padding: 14px; margin-top: 16px;">
<div style="text-align: center; margin-bottom: 12px;"><strong>商品検索システム：コンテナ図の抜粋</strong></div>
<div style="display: grid; grid-template-columns: 1fr 0.7fr 1fr 0.7fr 1fr; gap: 8px; align-items: center; text-align: center;">
<div style="background-color: #f5f5f5; padding: 14px; border-radius: 8px;"><strong>検索画面</strong><br>Webアプリ<br>条件を入力する</div>
<div>検索を依頼<br>→<br>HTTPS</div>
<div style="background-color: #f5f5f5; padding: 14px; border-radius: 8px;"><strong>検索API</strong><br>アプリ<br>条件に合う商品を返す</div>
<div>商品を照会<br>→<br>HTTPS</div>
<div style="background-color: #f5f5f5; padding: 14px; border-radius: 8px;"><strong>検索用データ</strong><br>データストア<br>検索対象を保持する</div>
</div>
</div>

<div style="margin-top: 16px;">
矢印は依頼する向きで、応答は省略しています。画面が使う結果の形式やエラーを保てるか、検索用データを誰が更新するかを確認します。この抜粋では利用者・商品管理・運用の経路を省いているため、削除前にはそれらも調べます。
</div>

<div style="margin-top: 14px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>図から「変える範囲」「保つ接点」「確かめる相手」を取り出す。<br>描かれていない関係を、存在しない関係とは扱わない。</strong>
</div>

</div>

---

## 同じ箱と矢印を、同じ意味で読めるようにする

<div style="font-size: 0.75em;">

検索の図を共有しても、「検索API」を独立して動くアプリと読む人と、アプリ内の関数と読む人では、変更の見積もりが変わります。見た目をそろえる前に、何を表しているかをそろえます。

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 16px; margin-top: 18px;">
<div style="background-color: #f5f5f5; padding: 16px; border-radius: 8px;">
<strong>箱には、種類と役割を書く</strong><br><br>
アプリなのか、データストアなのか、アプリ内の処理のまとまりなのか。「検索条件を受け付ける」のように役割も添える。
</div>
<div style="background-color: #f5f5f5; padding: 16px; border-radius: 8px;">
<strong>矢印には、関係の内容を書く</strong><br><br>
単に「連携」ではなく、「検索条件を送る」「商品更新を通知する」と書く。依頼の向きなのか、データが流れる向きなのかも示す。
</div>
</div>

<div style="margin-top: 18px;">
システムの境界と、チームの担当範囲は必ずしも一致しません。複数チームが変更するなら、データの意味や外部への応答を誰が判断するかも確認します。図の枠だけで担当者を推測しません。
</div>

<div style="margin-top: 16px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>図の目的は、同じ絵を見せることではなく、違う解釈に気づけるようにすること。</strong>
</div>

</div>

---

## 構造だけで足りないときは、一回の動作を追う

<div style="font-size: 0.75em;">

コンテナ図は何がつながるかを表します。順番や失敗時の扱いを確かめたいときは、<strong>動的図</strong>を使います。一つの操作について、どの要素がどの順番でやり取りするかを表す図です。

<div style="display: flex; flex-direction: column; gap: 10px; margin-top: 16px;">
<div style="background-color: #f5f5f5; padding: 12px 16px; border-radius: 8px;"><strong>1. 検索画面 → 検索API</strong>　指定した納期で検索を依頼する。</div>
<div style="background-color: #f5f5f5; padding: 12px 16px; border-radius: 8px;"><strong>2. 検索API → 検索用データ</strong>　条件に合う商品を問い合わせる。</div>
<div style="background-color: #f5f5f5; padding: 12px 16px; border-radius: 8px;"><strong>3. 検索用データ → 検索API → 検索画面</strong>　結果を返し、画面へ表示する。</div>
</div>

<div style="margin-top: 16px;">
この順序を動的図にすると、2で応答がない場合に、どこで待つのをやめるか、画面へ何を返すかを話せます。実際の時間はログや計測で確認します。サーバーの配置や切り替え方を知りたいなら、稼働環境を表す<strong>配置図</strong>を別に使います。
</div>

<div style="margin-top: 14px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>構造のつながり、処理の順番、実際の待ち時間を分ける。<br>図を増やすのは、いまの図では判断に必要なことが分からないとき。</strong>
</div>

</div>

---

## 応答を待たない連携にも、依存は残る

<div style="font-size: 0.75em;">

先ほどの検索例では、呼び出した相手の応答を待ちました。一方、商品情報の更新は、通知を蓄えておき、検索側が後から取り込む方法もあります。こうした<strong>非同期の連携</strong>でも、変更の相談が不要になるわけではありません。

<div style="display: grid; grid-template-columns: 1fr auto 1fr auto 1fr; gap: 12px; align-items: center; text-align: center; margin-top: 20px;">
<div style="background-color: #f5f5f5; padding: 16px; border-radius: 8px;"><strong>商品管理アプリ</strong><br>商品更新を通知する</div>
<div>→</div>
<div style="background-color: #f5f5f5; padding: 16px; border-radius: 8px;"><strong>商品更新キュー</strong><br>通知を蓄える</div>
<div>→</div>
<div style="background-color: #f5f5f5; padding: 16px; border-radius: 8px;"><strong>検索更新アプリ</strong><br>通知を取り込む</div>
</div>

<div style="margin-top: 18px;">
架空例の矢印は、通知が流れる向きです。通知の項目や意味を変えると、受け取る側も変更が必要になる場合があります。止める前には、受信者、処理待ちの通知、失敗時の再処理、データ形式を変更する担当を確かめます。
</div>

<div style="margin-top: 16px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>応答を待たないことと、相手に影響せず変えられることは違う。<br>「連携基盤」の一箱で済ませず、何を誰へ渡すかを見る。</strong>
</div>

</div>

---

## 検索の速さと、データ更新の反映は別に見る

<div style="font-size: 0.75em;">

商品更新を後から取り込む検索では、結果がすぐ返っても、変更前の納期が表示されることがあります。<strong>応答時間</strong>と、更新が検索へ届くまでの<strong>反映時間</strong>は別です。どちらも、ユーザーが判断に使える情報かどうかに関わります。

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 16px; margin-top: 18px;">
<div style="background-color: #f5f5f5; padding: 16px; border-radius: 8px;">
<strong>読むためのデータを用意する</strong><br><br>
商品管理のデータから、検索に必要な項目をまとめたデータを作る。検索は速くしやすくなるが、更新を取り込み続ける必要がある。
</div>
<div style="background-color: #f5f5f5; padding: 16px; border-radius: 8px;">
<strong>どこで何を確かめるかを決める</strong><br><br>
検索時に許せる情報の古さと、注文確定時に確認する在庫・納期を分ける。反映が遅れた場合の表示と対応も決める。
</div>
</div>

<div style="margin-top: 18px;">
許せる遅れは、エンジニアだけでは決められません。営業・CSが知る顧客の業務、デザイナーが考える表示、PMが判断する優先順位と合わせます。実際の反映時間と、古い情報で困った利用を確認します。
</div>

<div style="margin-top: 16px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>速く返すだけでなく、その情報でユーザーが判断してよいかを確かめる。</strong>
</div>

</div>

---

## キャッシュには、更新と復旧の設計も要る

<div style="font-size: 0.75em;">

<strong>キャッシュ</strong>は、取得や計算の結果を保存して再利用する仕組みです。毎回同じ処理をせずに済みますが、元のデータが変わると、保存した結果が古くなることがあります。検索結果を保存するなら、その扱いまで設計します。

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 16px; margin-top: 18px;">
<div style="background-color: #f5f5f5; padding: 16px; border-radius: 8px;">
<strong>いつ使わなくするか</strong><br><br>
保存した結果の有効期限、商品更新時に消す範囲、更新に失敗した場合の対応を決める。閲覧権限や顧客ごとの条件が違う結果を混ぜない。
</div>
<div style="background-color: #f5f5f5; padding: 16px; border-radius: 8px;">
<strong>使えないときにどうするか</strong><br><br>
保存した結果がないときや、キャッシュが停止したときの動作を決める。すべての要求を元のDBへ流しても、処理しきれるとは限らない。
</div>
</div>

<div style="margin-top: 18px;">
利用できた割合だけでなく、応答時間、情報の古さ、DB負荷、運用の手間を見ます。今の問い合わせや索引の改善で足りるなら、保存先を増やさない選択もあります。
</div>

<div style="margin-top: 16px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>減らせる処理と、増える更新・復旧の仕事を一緒に比べる。</strong>
</div>

</div>

---

## 図で決めた境界を、コードと確認手順につなげる

<div style="font-size: 0.75em;">

読み取り用データやキャッシュを加えたら、取得と更新の経路も図へ反映します。図では検索APIを経由するはずなのに、画面からデータへ直接アクセスしていたら、図だけでは影響を判断できません。人にもAIにも、図と実装が食い違う状態を前提として渡さないようにします。

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 16px; margin-top: 18px;">
<div style="background-color: #f5f5f5; padding: 16px; border-radius: 8px;">
<strong>図から実装を確かめられるようにする</strong><br><br>
アプリや処理の名前と、対応するリポジトリ・ディレクトリをつなぐ。接続先はコードや設定でも確認する。現状と変更案は分けて示す。
</div>
<div style="background-color: #f5f5f5; padding: 16px; border-radius: 8px;">
<strong>守る境界は、検査や権限にも反映する</strong><br><br>
禁止する依存はLintや構造のテストで検出する。データへの直接アクセスは権限でも制限する。必要な例外は、理由と見直す条件を残す。
</div>
</div>

<div style="margin-top: 18px;">
図は変更と一緒に更新します。細部まで手書きで複製せず、コードから得られる情報は必要なときに生成します。AIには画像だけでなく、対応するコードや構成情報も渡し、推測と確認済みの事実を分けさせます。
</div>

<div style="margin-top: 16px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>図は判断を助ける。境界を守るのは、実装・権限・検査と、それを見直す人。</strong>
</div>

</div>

---

## C4図だけでは、「残す・消す」は決められない

<div style="font-size: 0.75em;">

C4の構造図で、仕組みと依存関係を確かめます。必要なら動的図や配置図を補います。それでも、ジョブの重要性、実際の待ち時間、設計を選んだ理由は、別の記録や対話から確かめる必要があります。

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 12px; margin-top: 18px;">
<div style="background-color: #f5f5f5; padding: 14px; border-radius: 8px;"><strong>バリューストリームマッピング</strong><br><span style="color: #555;">ジョブの発見からアウトカムの確認まで、どこで作業し、どこで待つかを見る</span></div>
<div style="background-color: #f5f5f5; padding: 14px; border-radius: 8px;"><strong>ウォードリーマップ</strong><br><span style="color: #555;">ジョブに必要な要素と成熟度を並べ、どこへ投資し、どう運用するかを考える</span></div>
<div style="background-color: #f5f5f5; padding: 14px; border-radius: 8px;"><strong>C4図</strong><br><span style="color: #555;">誰が使い、どの外部システム、アプリ、データが依存しているかを確かめる</span></div>
<div style="background-color: #f5f5f5; padding: 14px; border-radius: 8px;"><strong>利用記録・Design Doc・必要ならADR</strong><br><span style="color: #555;">実際の利用と設計した理由を残す。ADRは、大きな設計判断を後から単独で参照したいときに使う</span></div>
</div>

<div style="margin-top: 18px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>一つの図へ詰め込まず、知りたいことに合う図や記録を使い分ける。</strong>
</div>

</div>

---

## 調べた結果から、残す・縮小・置き換える・消すを選ぶ

<div style="font-size: 0.72em;">

C4図で構造上の影響を確かめたら、利用者にとっての重要性と組み合わせます。この二つを分けて見ると、すぐに消せるものと、先に代替手段や依存の整理が必要なものを区別できます。

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 12px; margin-top: 14px;">
<div style="background-color: #f5f5f5; padding: 13px 15px; border-radius: 8px;">
<strong>重要性が高い × 影響が大きい</strong><br>
<span style="color: #555;">残すか、代替手段へ段階的に移す。停止は最後にする。</span>
</div>
<div style="background-color: #f5f5f5; padding: 13px 15px; border-radius: 8px;">
<strong>重要性が高い × 影響が小さい</strong><br>
<span style="color: #555;">機能は残す。複雑さを減らせるなら、実装だけを簡素にする。</span>
</div>
<div style="background-color: #f5f5f5; padding: 13px 15px; border-radius: 8px;">
<strong>重要性が低い × 影響が大きい</strong><br>
<span style="color: #555;">先に依存を外すか、代替手段へ置き換える。その後で消す。</span>
</div>
<div style="background-color: #f5f5f5; padding: 13px 15px; border-radius: 8px;">
<strong>重要性が低い × 影響が小さい</strong><br>
<span style="color: #555;">関係者へ知らせ、元に戻せる状態を保ちながら消す。</span>
</div>
</div>

<div style="margin-top: 14px;">
Design DocやADRには、選んだ理由と見直す条件を残します。図や文書は、ソフトウェアの修正と一緒に更新できる詳しさへ絞ります。過去の判断は履歴として残し、現在の方針と区別します。
</div>

<div style="margin-top: 14px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>利用が少ないだけでは消さない。重要性と構造上の影響をそろえて、止め方を選ぶ。</strong>
</div>

</div>

---

## 機能を残して、実装だけを置き換えることもできる

<div style="font-size: 0.75em;">

ユーザーのジョブに必要でも、今の実装を維持し続ける必要があるとは限りません。検索基盤を置き換えるなら、利用者と呼び出し元が頼る動作を、新旧のどちらでも確かめられるようにします。

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 16px; margin-top: 18px;">
<div style="background-color: #f5f5f5; padding: 16px; border-radius: 8px;">
<strong>保つ動作を先に決める</strong><br><br>
納期条件と閲覧権限が守られるか。更新が必要な時間内に反映されるか。応答がないとき、利用者へ説明できるか。
</div>
<div style="background-color: #f5f5f5; padding: 16px; border-radius: 8px;">
<strong>新旧を同じ条件で比べる</strong><br><br>
同じ入力で結果と応答時間を比べる。過去の不具合も再現する。差が出たら、改善なのか、必要な動作の欠落なのかを判断する。
</div>
</div>

<div style="margin-top: 18px;">
内部の関数名が変わるだけで壊れるテストと、利用者が頼る動作を確かめるテストは役割が違います。後者を新旧へ共通に使い、実装を変えても必要な条件が守られるかを確認します。
</div>

<div style="margin-top: 16px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>生成し直せることと、安全に置き換えられることは別。<br>守る動作を、置き換えるコードの外でも確かめられるようにする。</strong>
</div>

</div>

---

## データ移行は、コピーが終わっても終わらない

<div style="font-size: 0.75em;">

検索用データを新しい保存先へ移す間も、商品の更新は続きます。コピーした件数が一致しただけでは、その間の更新や削除まで反映されたとは分かりません。移行中にどちらへ書き、どちらから読むかを決めます。

<div style="display: flex; gap: 16px; align-items: stretch; margin-top: 18px;">
<div style="flex: 1; background-color: #f5f5f5; padding: 15px; border-radius: 8px;">
<strong>更新を取りこぼさない</strong><br><br>
既存データを移し、その間の更新・削除も追いつかせる。処理が重複したり順番が変わったりしても、結果が壊れないかを試す。
</div>
<div style="flex: 1; background-color: #f5f5f5; padding: 15px; border-radius: 8px;">
<strong>読んだ結果を比べる</strong><br><br>
件数だけでなく、納期、閲覧権限、削除済みの商品、更新の反映を比べる。違いを説明できるまで、切り替える範囲を広げない。
</div>
<div style="flex: 1; background-color: #f5f5f5; padding: 15px; border-radius: 8px;">
<strong>戻した後も更新を失わない</strong><br><br>
旧環境へ戻すなら、切り替え後の更新も扱えるかを確認する。古いコピーへ戻すだけでは、新しい変更を失う場合がある。
</div>
</div>

<div style="margin-top: 18px;">
新旧の両方へ書けば安全、とは限りません。片方だけ失敗した場合の検出と修復が必要です。書き込みを止められるなら、停止時間を合意して移す方が単純なこともあります。
</div>

<div style="margin-top: 16px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>データを移すだけでなく、移している間と、戻すときの動作を確かめる。</strong>
</div>

</div>

---

## 切り替えは、影響と戻せる範囲に合わせて進める

<div style="font-size: 0.75em;">

新しい実装がテストを通っても、本番のすべての使われ方を確かめたわけではありません。画面の一部を試す変更と、全利用者が使う保存形式の変更では、必要な確認と観察期間が変わります。

<div style="display: flex; gap: 16px; align-items: center; margin-top: 18px;">
<div style="flex: 1; background-color: #f5f5f5; padding: 15px; border-radius: 8px;">
<strong>限った範囲で試す</strong><br><br>
まず検証環境で確認し、本番は対象を絞る。検索結果の差、エラー、利用者のつまずきを見る。
</div>
<div style="flex: 1; background-color: #f5f5f5; padding: 15px; border-radius: 8px;">
<strong>戻す条件を決める</strong><br><br>
どんな異常で止め、誰が判断するかを決める。旧実装へ戻す手順を、切り替え前に確かめる。
</div>
<div style="flex: 1; background-color: #f5f5f5; padding: 15px; border-radius: 8px;">
<strong>データも戻せるかを見る</strong><br><br>
新実装が書いたデータを旧実装が読めるか確認する。コードを戻すだけで済まない変更は、移行方法を別に検証する。
</div>
</div>

<div style="margin-top: 18px;">
本番で分かった例外は、その場の修正だけで終わらせず、テストと設計の理由へ戻します。次の人やAIが同じ箇所を変えても、必要な動作を失わないためです。
</div>

<div style="margin-top: 16px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>変更の小ささは、差分の行数では決まらない。<br>影響を受ける範囲と、失敗を見つけて戻す方法で決める。</strong>
</div>

</div>

---

## 置き換えた後は、古い経路を片付ける

<div style="font-size: 0.75em;">

新旧を切り替えられる状態は、移行中には役立ちます。ただし、古いAPI、設定、データ形式を残し続けると、次の変更でも両方を理解し、確認する必要があります。

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 16px; margin-top: 18px;">
<div style="background-color: #f5f5f5; padding: 16px; border-radius: 8px;">
<strong>廃止できる条件を確かめる</strong><br><br>
呼び出し元の移行、定期処理の利用、古いデータの扱いを確認する。戻すために残す期間と、その後の復旧方法も決める。
</div>
<div style="background-color: #f5f5f5; padding: 16px; border-radius: 8px;">
<strong>役目を終えたものを減らす</strong><br><br>
古い経路と設定を削除し、現行の図と手順を更新する。必要な動作のテストと、移行を決めた理由は残す。
</div>
</div>

<div style="margin-top: 18px;">
過去の判断記録は、現在も従う指示とは分けて保存します。古い方針には変更先を示し、なぜ切り替えたかを後から追えるようにします。履歴まで消すと、次の変更で同じ理由を調べ直すことになります。
</div>

<div style="margin-top: 16px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>新しく動くだけで終わらせず、次の変更で読むもの・守るものを減らす。</strong>
</div>

</div>

---

## いつやめるかは、作る前に決める

<div style="font-size: 0.72em;">

機能を消すのが難しいからこそ、削除の判断を後回しにしません。作る前に置いた前提も、利用や市場の変化で古くなります。半年計画の例では、4ヶ月目まで中止を判断できませんでした。やめる条件と判断日を、機能を作る前に書いておけば、継続か中止かをもっと早く決められます。「2ヶ月の調査が終わる7月16日に、続けるかを決める」のように。

<div style="display: flex; gap: 16px; align-items: stretch; margin-top: 14px;">
<div style="flex: 1; background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>ジョブが別の手段で片付いている</strong><br><span style="color: #555;">マネージドサービスや既存機能で足りる。置き換える</span>
</div>
<div style="flex: 1; background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>想定したジョブには使われていない</strong><br><span style="color: #555;">別のジョブを確かめるか、機能を消す</span>
</div>
<div style="flex: 1; background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>維持費や変更リスクが、得られる価値を上回る</strong><br><span style="color: #555;">代替手段と元に戻す方法を確かめ、縮小・置き換え・削除を選ぶ</span>
</div>
</div>

<div style="margin-top: 14px;">

判断日には、利用記録、問い合わせ、依存先、障害時の代替手段を見直します。やめる条件に当てはまれば、縮小・停止・置き換えを選びます。材料が足りなければ、追加で確かめることと次の判断日を決めます。使った費用の大きさだけを、続ける理由にはしません。

</div>

<div style="margin-top: 12px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>「この条件になったらやめる」と「いつ判断するか」を、作る前のDesign Docに書く。<br>小さな変更ならPRの説明に、大きな設計判断を後から単独で参照したいときだけADRにも残す。</strong>
</div>

</div>

---

## まとめ　実装を速めても待ちは残る

<div style="font-size: 0.72em;">

AI支援で実装時間が短くなっても、ジョブの発見から結果の確認までには、実装以外の時間があります。増えたアウトプットを受け入れる仕事と、利用後の結果を確かめる仕事も一緒に見ます。

<div style="display: flex; gap: 14px; align-items: stretch; margin-top: 16px;">
<div style="flex: 1; background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>アウトプットを作る</strong><br><br>
設計・実装・テスト。AI支援で短くしやすく、PR数や生成量にも表れやすい。
</div>
<div style="flex: 1; background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>待ち</strong><br><br>
優先順位の判断、レビュー、他の役割との合意。仕事の進め方を変えなければ残る。
</div>
<div style="flex: 1; background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>アウトカムを確かめる</strong><br><br>
本番で使われ、狙った変化が起きたかを確かめる。リリースしただけでは分からない。
</div>
</div>

<div style="margin-top: 16px; padding: 14px; background-color: #e0e0e0; border-radius: 8px; text-align: center; font-size: 1.1em;">
<span style="color: #e65100; font-weight: bold;">30/70の例では、実作業を半分にしても全体は15%しか縮まらない。<br>実装の外に待ちが残り、アウトプットの増加だけではアウトカムの変化が分からない。</span>
</div>

</div>

---

## まとめ　作る・任せる・やめるを決める

<div style="font-size: 0.72em;">

「作る・任せる・やめる」は、次の順序で考えます。

<div style="display: flex; gap: 14px; align-items: stretch; margin-top: 16px;">
<div style="flex: 1; background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>作る</strong><br><br>
最近困った場面と、片付けたいジョブ、確かめたいアウトカムを見る。既存の手段で足りるなら作らない。
</div>
<div style="flex: 1; background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>任せる</strong><br><br>
前提を仕様へ書き、AIの計画を確認する。テストと計測で確かめられ、元に戻せる範囲まで任せる。
</div>
<div style="flex: 1; background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>やめる</strong><br><br>
利用者への重要性と構造上の影響を調べる。必要な動作を保ち、置き換えや削除を選ぶ。条件と判断日は作る前に決める。
</div>
</div>

<div style="margin-top: 16px; padding: 14px; background-color: #e0e0e0; border-radius: 8px; text-align: center; font-size: 1.1em;">
<span style="color: #e65100; font-weight: bold;">AIは「どう作るか」の候補を増やす。<br>役割ごとの前提を図と対話で確かめ、チームが「作る・任せる・やめる」を決める。</span>
</div>

</div>

---

<!--
_backgroundColor: #0a1929
_color: white
_class: title dark
-->

![bg](../../brands/3shake/assets/images/3shake-background-full.png)

<img src="../../brands/3shake/assets/images/3shake-logo.png" alt="3-SHAKE logo" style="position: absolute !important; top: 100px !important; left: 100px !important; width: 240px !important; height: auto !important; z-index: 9999 !important;">

<div class="title" style="text-align: left; margin-top: 100px; margin-left: 80px; padding-left: 0; max-width: 78%;">

# <span style="font-size: 0.9em;">AIは作れる。</br>作るべきかを決めるのが私たちの仕事。</span>

### 職能の壁を越えて、価値が届くまでの流れを設計する

</div>

<div class="author-info" style="text-align: left; padding-left: 0; text-indent: 0;">
ありがとうございました</br>
@nwiizo
</div>
