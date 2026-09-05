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

### <span style="font-size: 0.78em;">職能の壁を越えて価値のフローを設計する</span>

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

## この発表で解決できること

<div style="font-size: 0.75em;">

<div style="display: flex; gap: 20px; margin-top: 10px; align-items: center;">
<div style="flex: 1; background-color: #f5f5f5; padding: 15px; border-radius: 8px;">

<strong>こんな状況ではありませんか</strong>

AIでPull Request（PR）は増え、手を動かす速さも上がったように感じる。けれど、価値が届くまでの時間や成果は、同じようには変わっていない。<strong>速くなった実感と、届いた価値が噛み合わない。</strong>

</div>
<div style="flex: 1; background-color: #f5f5f5; padding: 15px; border-radius: 8px;">

<strong>持ち帰れるもの</strong>

なぜ、実装が速くなってもプロダクト全体は速くならないのか。価値が届くまでの流れを測り、<strong>全体の速さを決める詰まりを見つける手順</strong>と、ユーザーが達成したいことから「作るべきか」「いつやめるか」を決める<strong>判断の基準</strong>を持ち帰れます。

</div>
</div>

<div style="margin-top: 15px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>見る範囲を、実装からユーザーの結果まで広げる。すると、次に何を速くすべきかが見えてくる。</strong>
</div>

</div>

---

## 本日の流れ

<div style="font-size: 0.8em; margin-top: 20px;">

1. 増えた生産量はどこに消えたのか
2. 測りやすい数字は、価値が届いた証拠ではない
3. 役割ごとの前提を対話で確かめる
4. ユーザーが達成したいことから「作る・やめる」を判断する

<div style="margin-top: 26px; padding: 14px; background-color: #f5f5f5; border-radius: 8px;">

前半は「なぜ速くならないのか」を数字で見ます。後半は、役割ごとの前提を確かめる<strong>対話と一つの図</strong>、チームの判断をAIの実装へ反映する<strong>判断の前提・実装前の仕様</strong>を扱います。

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

## AIで実装は確かに速くなった

<div style="font-size: 0.75em;">

AIを使うと、動くコードを書くまでの時間は短くなります。ただし、<strong>個人が感じる作業の速さ</strong>と、<strong>ユーザーや事業に起きた変化</strong>は、同じ指標では測れません。

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

<div style="font-size: 0.5em; color: #777; text-align: right; margin-top: 6px;">
出典：<a href="https://dora.dev/research/2025/dora-report/">DORA, State of AI-assisted Software Development 2025（v. 2025.2）</a> ／ <a href="https://cloud.google.com/resources/content/dora-roi-of-ai-assisted-software-development">DORA, ROI of AI-assisted Software Development 2026（v. 2026.1）</a>
</div>

---

## ジョブ理論では、ユーザーの目的から考える

<div style="font-size: 0.7em;">

<div style="display: flex; gap: 24px; align-items: center;">
<div style="width: 22%; text-align: center;">
<img src="../../assets/images/2026/job-theory-book-cover.png" alt="書籍『ジョブ理論』の表紙" style="width: 100%; max-height: 315px; object-fit: contain;">
<div style="font-size: 0.55em; color: #888; margin-top: 5px;">クレイトン・M・クリステンセンほか『ジョブ理論』</div>
</div>
<div style="flex: 1;">

<strong>Jobs to Be Done（ジョブ理論）</strong>は、ユーザーがなぜ製品やサービスを選ぶのかを、達成したいことから考える方法です。ここでいう<strong>ジョブ</strong>は、ユーザーがある状況で片付けたいことです。

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

## 価値が届くのは、ユーザーのジョブが片付いたとき

<div style="font-size: 0.72em;">

機能を出した時点と、ユーザーがその機能を使ってジョブを片付けた時点を分けて考えます。検索機能を改善する例で見ると、次のようになります。

<div style="display: grid; grid-template-columns: 1fr auto 1fr auto 1fr; gap: 10px; align-items: center; margin-top: 18px; text-align: center;">
<div style="padding: 14px 10px; background-color: #f5f5f5; border-radius: 8px;"><strong>出したもの</strong><br><span style="color: #666;">検索条件を追加して<br>利用可能にした</span></div>
<div style="font-size: 1.4em;">→</div>
<div style="padding: 14px 10px; background-color: #f5f5f5; border-radius: 8px;"><strong>使われ方</strong><br><span style="color: #666;">対象のユーザーが<br>実際の検索で使った</span></div>
<div style="font-size: 1.4em;">→</div>
<div style="padding: 14px 10px; background-color: #f5f5f5; border-radius: 8px;"><strong>生じた変化</strong><br><span style="color: #555;">必要な情報へ早くたどり着けた<br>その結果、購入につながった</span></div>
</div>

<div style="margin-top: 20px;">

<strong>アウトプット</strong>は作って出したもの。<strong>アウトカム</strong>は、ユーザーが使ったあとに起きた、ユーザーや事業の変化です。リリースしただけでは、価値が届いたとは判断できません。利用後の変化を確かめて判断します。

</div>

<div style="margin-top: 16px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>プロダクトの速さは、機能を出すまでではなく、結果を確かめるまでで見る必要があります。</strong>
</div>

</div>

<div style="font-size: 0.5em; color: #777; text-align: right; margin-top: 6px;">
参考：Nick Tune, Jean-Georges Perrin, <em>Architecture Modernization</em>, 第1章、第11章 ／ Susanne Kaiser, <em>Architecture for Flow</em>, 第1章
</div>

---

## たとえば、実作業が30%の流れなら

<div style="font-size: 0.75em;">

まず、チケットに着手してから変更を利用できるようになるまでを、実作業30%、待ち70%と置いた例で考えます。

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
<span style="color: #e65100; font-weight: bold;">この例では、合意と判断の待ち時間が、全体の速さを決める詰まりになる。</span>
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

30/70の例は、実装に着手してからリリースするまでだけを切り出しました。<strong>バリューストリーム</strong>は、さらに広い範囲を扱います。まだ片付いていないユーザーのジョブを見つけ、届けたい結果と確かめ方を決め、実装して届け、ジョブが片付いたか確かめるまでを、ひと続きの仕事として捉えます。

<div style="margin-top: 18px; padding: 12px; background-color: #f5f5f5; border-radius: 8px;">
<strong>開始条件</strong>　ユーザーのジョブが、まだ片付いていない<br>
<strong>完了条件</strong>　ジョブが片付き、期待した結果を確認できた
</div>

</div>
</div>

<div style="font-size: 0.5em; color: #777; text-align: right; margin-top: 6px;">
出典：Susanne Kaiser, <em>Architecture for Flow</em>, Addison-Wesley, 2025, 第6章
</div>

---

## 実装は、バリューストリームの真ん中にある

<div style="font-size: 0.72em;">

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 14px; margin-top: 10px;">
<div style="background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>ジョブを見つける</strong><br>
ユーザーが困る状況、いま試している手段、達成したいことを、観察や対話から確かめる。
</div>
<div style="background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>結果と確かめ方を決める</strong><br>
ユーザーの行動や事業の数字がどう変われば価値が届いたと言えるかを、実装前に決める。
</div>
<div style="background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>作って届ける</strong><br>
設計し、実装してテストする。リリースして、ユーザーが変更を利用できる状態にする。
</div>
<div style="background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>結果を確かめる</strong><br>
実際に使われ、期待した変化が起きたかを見る。続ける、変える、やめるを判断する。
</div>
</div>

<div style="margin-top: 14px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>コードを書く前には判断があり、届けた後には結果の確認がある。</strong>
</div>

</div>

<div style="font-size: 0.5em; color: #777; text-align: right; margin-top: 5px;">
参考：Susanne Kaiser, <em>Architecture for Flow</em>, Addison-Wesley, 2025, 第6章
</div>

---

## 独立したバリューストリームの四つの条件

<div style="display: flex; gap: 24px; align-items: center;">
<div style="width: 43%;">
<img src="../../assets/images/2026/am-1-4-independent-value-stream.png" alt="独立したバリューストリームの四つの条件" style="width: 100%; height: fit-content;">
<div style="font-size: 0.55em; color: #999; text-align: center; margin-top: 5px;">Figure 1.4 Independent value stream より引用</div>
</div>
<div style="flex: 1; font-size: 0.72em; line-height: 1.45;">

<strong>事業の仕事に合わせて担当範囲を決める</strong>　どのジョブを扱うかが明確<br>
<strong>チームが判断できる</strong>　製品・技術・リリースを決められる<br>
<strong>利用後の変化から作るものを決める</strong>　届けた結果まで確かめる<br>
<strong>ソフトウェアを分ける</strong>　単独で変更して届けられる

<div style="margin-top: 16px;">

ほかのチームと協力していても、日常的な変更を発見から結果の確認まで同じチームで進められるなら、ここでいう<strong>独立</strong>に当たります。

</div>

</div>
</div>

<div style="font-size: 0.5em; color: #777; text-align: right; margin-top: 5px;">
出典：Nick Tune, Jean-Georges Perrin, <em>Architecture Modernization</em>, Manning, 2024, 第1章
</div>

---

## 四つの条件は、「何を担うか」と「どう進めるか」

<div style="font-size: 0.72em;">

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 14px; margin-top: 10px;">
<div style="background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>事業の仕事に合わせて担当範囲を決める</strong><br>
「注文」「決済」のように、事業の中で一つの役割を担う範囲へ集中する。関係の薄いジョブを同じチームへ集めない。
</div>
<div style="background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>チームが判断できる</strong><br>
何を作るか、どう実装するか、いつ届けるかをチームで決める。変更のたびに外部の承認を待たない。
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
<strong>事業の仕事と利用後の変化から「何を引き受けるか」を決める。判断の権限とソフトウェアの分け方で「待たずに終えられるか」を決める。</strong>
</div>

</div>

<div style="font-size: 0.5em; color: #777; text-align: right; margin-top: 5px;">
出典：Nick Tune, Jean-Georges Perrin, <em>Architecture Modernization</em>, Manning, 2024, 第1章
</div>

---

## 仕事を引き継ぐところで、待ちが生まれやすい

<div style="font-size: 0.72em;">

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

<div style="font-size: 0.5em; color: #777; text-align: right; margin-top: 8px;">
出典：Nick Tune, Jean-Georges Perrin, <em>Architecture Modernization</em>, Manning, 2024, 第1章 ／ Susanne Kaiser, <em>Architecture for Flow</em>, Addison-Wesley, 2025, 第5章、第6章「依存関係の分析」
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

<div style="font-size: 0.5em; color: #777; text-align: right; margin-top: 6px;">
参考：Susanne Kaiser, <em>Architecture for Flow</em>, 第6章「依存関係の分析」／ Nick Tune, Jean-Georges Perrin, <em>Architecture Modernization</em>, 第1章
</div>

---

## AIが速くするのは、まず一人の手元

<div style="font-size: 0.75em;">

<div style="display: flex; gap: 20px; align-items: center; margin-top: 16px;">
<div style="flex: 1; background-color: #f5f5f5; padding: 15px; border-radius: 8px;">

<strong>内側のループ</strong>

一人が手元でコードを書き、動かし、直す繰り返し。この繰り返しはAIで短くしやすい。

</div>
<div style="flex: 1; background-color: #f5f5f5; padding: 15px; border-radius: 8px;">

<strong>外側のループ</strong>

チームがレビュー、統合、検証、説明を重ね、変更を利用できる状態にするまでの繰り返し。

</div>
</div>

<div style="margin-top: 20px;">

内側のループで作ったPRは、外側のループへ入ります。AIでPRを作る時間が短くなっても、レビューする人数、確認する項目、他チームと合意する順番は、そのままでは変わりません。作業が数日ではなく数時間で終わるようになると、チームが調整するより速く仕事の列が空になり、同じファイルで互いにぶつかり始めます。

</div>

<div style="margin-top: 16px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>内側から外側へ渡す仕事だけが増えると、外側の工程で待ちが増える。</strong>
</div>

</div>

<div style="font-size: 0.5em; color: #777; text-align: right; margin-top: 8px;">
参考：Alfonso Graziano, <em>AI-Native Software Engineering</em>, O'Reilly Early Release, 2026年時点の草稿, 「SDDフレームワーク」の章
</div>

---

## 速くする工程を誤ると、待ちは長くなる

<div style="font-size: 0.75em;">

一番遅い工程が、全体の速さを決めます。この工程を<strong>制約</strong>と呼び、まずその工程を改善する考え方が<strong>制約理論</strong>です。内側のループを速めた結果、外側が制約になったとします。外側で一定時間に処理できる仕事の量（処理能力）が変わらなければ、終わっていない仕事（仕掛かり）が積み上がります。

<div style="display: flex; gap: 20px; align-items: center; margin-top: 16px;">
<div style="flex: 1; background-color: #f5f5f5; padding: 15px; border-radius: 8px;">

<strong>実装が速くなると</strong>

たとえば月曜の朝、5つのAIエージェントが、それぞれ500行のPRを作ってきたとします。レビューは、意図と影響範囲を一緒に確かめる作業から、AIが生成した変更を一から読み解く作業へ変わります。レビュアーの時間は増えていません。

</div>
<div style="flex: 1; background-color: #f5f5f5; padding: 15px; border-radius: 8px;">

<strong>レビューが追いつかないと</strong>

レビューに使える時間が変わらなければ、1本あたりの待ち時間はむしろ延びます。同僚のPRには追いつけていたレビュアーも、同僚に加えて機械の速さで出荷するエージェントには追いつけません。判断する人の手元には、判断待ちの案件が積み上がります。

</div>
</div>

<div style="margin-top: 16px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>実装を速めると、次に遅い工程が全体の速さを決める。この例では、合意と判断。</strong>
</div>

</div>

<div style="font-size: 0.5em; color: #777; text-align: right; margin-top: 8px;">
出典：Eliyahu M. Goldratt（Susanne Kaiser, <em>Architecture for Flow</em>, 第6章「制約の管理」での引用）／ Addy Osmani, <em>Beyond Vibe Coding</em>, 第10章 ／ Alfonso Graziano, <em>AI-Native Software Engineering</em>, 「SDDワークフロー」の章
</div>

---

## 制約が実装にある現場もある

<div style="font-size: 0.75em;">

ただし、待ちが全体の速さを決めるとは限りません。

<div style="display: flex; gap: 20px; align-items: center; margin-top: 16px;">
<div style="flex: 1; background-color: #f5f5f5; padding: 15px; border-radius: 8px;">

<strong>実装が制約になりやすい段階</strong>

1人か2人で、決める人と作る人が同じ。ほかの人への引き継ぎもほとんどありません。ここでは実装が制約になりやすく、AIで実装時間を短くすると、全体も速くなりやすい。

</div>
<div style="flex: 1; background-color: #f5f5f5; padding: 15px; border-radius: 8px;">

<strong>待ちが制約になりやすい段階</strong>

役割が分かれ、判断、レビュー、運用のたびに仕事を引き継ぐ現場。待ち時間が全体の大半を占めると、待ちが制約になりやすい。

</div>
</div>

<div style="margin-top: 18px;">

役割が分かれていても、実装が制約になっている組織はあります。飲食店予約サービスのOpenTableでは、実際に測ると、全体の速さを決めていたのはエンジニアリング工程でした。自分たちの現場で、実装と待ちのどちらが詰まりになっているかも、測って確かめます。次の章では、その測り方を扱います。

</div>

</div>

<div style="font-size: 0.5em; color: #777; text-align: right; margin-top: 8px;">
出典：Nick Tune, Jean-Georges Perrin, <em>Architecture Modernization</em>, 第3章
</div>

---

<!--
_backgroundColor: #0a1929
_color: white
_class: transition
-->

<div style="display: flex; justify-content: center; align-items: center; height: 100%; flex-direction: column; color: white; text-align: center;">

<h2 style="color: white !important;">2. 測りやすい数字は、価値が届いた証拠ではない</h2>

<strong>PR数も、速くなった体感も、AIで伸びやすい。</strong>

</div>

---

## 測りやすい数字はAIで伸びる

<div style="font-size: 0.75em;">

PR数、コード変更の記録（コミット）の数、変更行数。どれもダッシュボードに出しやすく、AIを入れると増やしやすい数字です。ただ、これらが表すのは<strong>作った量</strong>です。ある企業では、データベース内で動く処理（ストアドプロシージャ）の作成数が開発者の個人目標になっていました。PR数を個人目標にしても、作った量そのものが目的になる同じ問題が起きます。

<div style="margin-top: 14px; padding: 12px; background-color: #f5f5f5; border-radius: 8px; text-align: center;">
<strong>アウトプット＝作ったもの。アウトカム＝使った結果に生じた変化。</strong>
</div>

<div style="margin-top: 18px;">

頼まれた機能を作り続け、利用後の変化より機能の量と出す速さだけを見るチームを<strong>フィーチャーファクトリー</strong>と呼びます。機能を作ること自体が目的になり、使われた結果を確かめない状態です。

</div>

<div style="margin-top: 18px; padding: 14px; background-color: #e0e0e0; border-radius: 8px; text-align: center; font-size: 1.1em;">
<span style="color: #e65100; font-weight: bold;">作った量ではなく、使われた結果を測る。</span>
</div>

</div>

<div style="font-size: 0.5em; color: #777; text-align: right; margin-top: 6px;">
出典：Nick Tune, Jean-Georges Perrin, <em>Architecture Modernization</em>, Manning, 2024, 第1章、第11章
</div>

---

## 価値は「速く」だけでは測れない

<div style="display: flex; gap: 24px; align-items: center;">
<div style="width: 43%;">
<img src="../../assets/images/2026/architecture-modernization-bvssh.png" alt="Better Value Sooner Safer Happier" style="width: 100%; height: fit-content;">
<div style="font-size: 0.55em; color: #999; text-align: center; margin-top: 5px;">Figure 1.3 Better Value Sooner Safer Happier (Source: Smart et al., Sooner Safer Happier [IT Revolution, 2020]) より引用</div>
</div>
<div style="flex: 1; font-size: 0.68em; line-height: 1.45;">

<strong>Better</strong>　品質を上げる<br>
<strong>Value</strong>　ユーザーと事業の成果を増やす<br>
<strong>Sooner</strong>　価値を早く、頻繁に届ける<br>
<strong>Safer</strong>　変更による失敗と影響を減らす<br>
<strong>Happier</strong>　ユーザーと働く人の満足を高める

</div>
</div>

<div style="margin-top: 14px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>AIで早く届けられるようになっても、安全性が下がれば、全体として良くなったとは言えない。</strong>
</div>

<div style="font-size: 0.5em; color: #777; text-align: right; margin-top: 6px;">
出典：Nick Tune, Jean-Georges Perrin, <em>Architecture Modernization</em>, Manning, 2024, 第1章 ／ Jonathan Smartほか, <em>Sooner Safer Happier</em>, 2020
</div>

---

## 届ける速さを三つに分ける

<div style="font-size: 0.72em;">

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
この三つで分かるのは「届ける速さ」です。使われた結果であるアウトカムは、別に確かめます。
</div>

</div>

<div style="font-size: 0.5em; color: #777; text-align: right; margin-top: 8px;">
参考：Susanne Kaiser, <em>Architecture for Flow</em>, 第6章 ／ Nick Tune, Jean-Georges Perrin, <em>Architecture Modernization</em>, 第11章
</div>

---

## 速さと結果は、同じ対象で確かめる

<div style="font-size: 0.75em;">

リードタイムやスループットで分かるのは、変更を届ける速さです。価値まで見るには、<strong>同じ期間と対象ユーザー</strong>について、使われ方と結果を並べます。検索条件を追加した例なら、次の三つです。

<div style="display: flex; gap: 16px; align-items: stretch; margin-top: 18px;">
<div style="flex: 1; background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>流れ</strong><br><br>
着手から利用可能になるまでの時間と、そのうち誰かを待っていた時間
</div>
<div style="flex: 1; background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>使われ方</strong><br><br>
対象ユーザーが新しい検索条件を使った割合と、検索を途中でやめた割合
</div>
<div style="flex: 1; background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>結果</strong><br><br>
必要な情報へたどり着くまでの時間と、その後に購入へ進んだ割合
</div>
</div>

<div style="margin-top: 18px; padding: 14px; background-color: #e0e0e0; border-radius: 8px; text-align: center; font-size: 1.05em;">
<strong>届ける時間が短くなっても、使われ方と結果が変わらなければ、価値が届く速さは変わっていない。</strong>
</div>

</div>

---

## 作る速さだけを上げると、使われない機能も積み上がる

<div style="font-size: 0.75em;">

顧客のジョブよりスケジュールを優先して機能を量産する状態を、Melissa Perriは<strong>ビルドトラップ</strong>と呼びました。作る量だけをAIで増やすと、この罠に入りやすくなります。多くのチームは、新しいものを足すのは得意でも、古いものを消すのは苦手だからです。ある自動車メーカーでは、データベース内で動く処理の約30%がもう使われていませんでした。

<div style="display: flex; gap: 20px; align-items: center; margin-top: 16px;">
<div style="flex: 1; background-color: #f5f5f5; padding: 15px; border-radius: 8px;">

<strong>機能が1つ増えるたびに</strong>

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

<div style="font-size: 0.5em; color: #777; text-align: right; margin-top: 8px;">
参考：Melissa Perri, <em>Escaping the Build Trap</em> ／ Nick Tuneほか, <em>Architecture Modernization</em>, 第8章
</div>

---

## 速くなった体感も、測定の代わりにならない

<div style="font-size: 0.75em;">

<div style="display: flex; gap: 20px; align-items: center; margin-top: 10px;">
<div style="flex: 1; background-color: #f5f5f5; padding: 15px; border-radius: 8px;">

<strong>実験</strong>

経験豊富なオープンソースソフトウェア（OSS）開発者16人が、日頃から扱っているコード群の246課題に取り組んだ。AIツールを使ったグループは、使わなかったグループより<strong>19%遅かった</strong>。

</div>
<div style="flex: 1; background-color: #f5f5f5; padding: 15px; border-radius: 8px;">

<strong>体感</strong>

事前には「24%速くなる」と予想し、終わった後も「20%速くなった」と感じていた。測定と体感が、逆向きだった。

</div>
</div>

<div style="margin-top: 16px;">

大規模で成熟したコード群に詳しい開発者という条件つきで、ほかの現場へそのまま当てはめることはできません。ただ、少なくともこの条件では、<strong>「速くなった気がする」だけでは判断できません</strong>。体感と、実際に時間を使っているところがずれた例もあります。あるネット銀行では、開発者が「コードを実行可能な形にするビルドが遅い」と訴えました。ところが測ってみると、時間の大半はPRのレビュー待ちでした。

</div>

<div style="margin-top: 14px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>PR数でも体感でもなく、価値が届くまでの流れそのものを測る。</strong>
</div>

</div>

<div style="font-size: 0.5em; color: #777; text-align: right; margin-top: 6px;">
出典：<a href="https://metr.org/blog/2025-07-10-early-2025-ai-experienced-os-dev-study/">METR, Measuring the Impact of Early-2025 AI on Experienced Open-Source Developer Productivity, 2025</a> ／ Nick Tune, Jean-Georges Perrin, <em>Architecture Modernization</em>, 第13章
</div>

---

## 価値が届くまでの流れを測る

<div style="font-size: 0.72em;">

価値が届くまでの工程を時系列に並べ、作業と待ちを分ける方法を<strong>バリューストリームマッピング</strong>と呼びます。

<div style="display: grid; grid-template-columns: 1fr auto 1fr auto 1fr; gap: 10px; align-items: center; margin-top: 14px; text-align: center;">
<div style="padding: 14px 10px; background-color: #f5f5f5; border-radius: 8px;"><strong>直近10件を選ぶ</strong><br><span style="color: #666;">大きさで選別せず、<br>実際に進めた案件を使う</span></div>
<div style="font-size: 1.4em;">→</div>
<div style="padding: 14px 10px; background-color: #f5f5f5; border-radius: 8px;"><strong>時刻を記録から拾う</strong><br><span style="color: #666;">ジョブの確認、着手、PR、承認、<br>本番反映、利用開始、結果確認</span></div>
<div style="font-size: 1.4em;">→</div>
<div style="padding: 14px 10px; background-color: #f5f5f5; border-radius: 8px;"><strong>区間を分ける</strong><br><span style="color: #555;">作業か、誰かを待ったか。<br>待った相手の役割を書く</span></div>
</div>

<div style="margin-top: 18px;">

最初に見る数字は二つです。全体のうち作業していた時間の割合と、<strong>どの工程で、誰を待った時間が最も長かったか</strong>。ここで見るのは、個人の働き方ではありません。役割の間で仕事をどう渡しているかです。

待ちのすべてが無駄ではありません。本番前の確認のように、安全のため意図して設ける待ちもあります。判断も、担当と判断日を決めて先送りするなら待ちではなく設計です。見直すのは、何のためか説明できない確認、担当が曖昧な引き継ぎ、処理能力を超えて積み上がる待ちです。測れば、必要な待ちと見直す待ちを分けられます。

</div>

<div style="margin-top: 12px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>待ちの合計が大きい工程を、最初の制約候補にする。どの判断や作業を待っていたか確かめる。</strong>
</div>

</div>

<div style="font-size: 0.5em; color: #777; text-align: right; margin-top: 4px;">
参考：Susanne Kaiser, <em>Architecture for Flow</em>, 第6章「バリューストリームマッピング」／ Jacqui Read, <em>Communication Patterns</em>, O'Reilly, 2023, 第11章
</div>

---

<!--
_backgroundColor: #0a1929
_color: white
_class: transition
-->

<div style="display: flex; justify-content: center; align-items: center; height: 100%; flex-direction: column; color: white; text-align: center;">

<h2 style="color: white !important;">3. 役割ごとの前提を対話で確かめる</h2>

<strong>長い待ちの一部は、情報不足ではなく、役割ごとの前提の違いから生まれる。</strong>

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

<div style="font-size: 0.5em; color: #777; text-align: right; margin-top: 8px;">
参考：Nick Tune, Jean-Georges Perrin, <em>Architecture Modernization</em>, 第5章
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

宇田川元一さんは、物事をどう理解し、何を正しいと考えるか、その<strong>解釈の枠組み</strong>をナラティヴと呼びます。立場、経験、背負っている責任が違えば、同じリリース延期にも別の意味が生まれます。

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 8px; margin-top: 14px;">
<div style="background-color: #f5f5f5; padding: 10px 12px; border-radius: 8px;"><strong>営業</strong>　商談の機会を逃す</div>
<div style="background-color: #f5f5f5; padding: 10px 12px; border-radius: 8px;"><strong>デザイナー</strong>　利用者が途中で迷う</div>
<div style="background-color: #f5f5f5; padding: 10px 12px; border-radius: 8px;"><strong>エンジニア</strong>　次の変更が難しくなる</div>
<div style="background-color: #f5f5f5; padding: 10px 12px; border-radius: 8px;"><strong>SRE</strong>　障害対応の負担が増える</div>
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

<div style="font-size: 0.5em; color: #777; text-align: right; margin-top: 5px;">
参考：宇田川元一『他者と働く』第1章、第2章 ／ <a href="https://jinjibu.jp/article/detl/keyperson/2173/2/3/1/">「日本の人事部」宇田川元一さんインタビュー</a>
</div>

---

## 対話は、同意を急ぐことではない

<div style="font-size: 0.7em;">

ここでいう対話は、説得や情報共有の言い換えではありません。互いを、指示に従わせる相手ではなく、問題を一緒に扱う相手として関係を作り直すことです。本書では、次の四つを行き来しながら進めます。

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 10px; margin-top: 14px;">
<div style="background-color: #f5f5f5; padding: 12px; border-radius: 8px;"><strong>準備</strong><br><span style="color: #555;">分かり合えていないと認め、自分の前提をいったん保留する</span></div>
<div style="background-color: #f5f5f5; padding: 12px; border-radius: 8px;"><strong>観察</strong><br><span style="color: #555;">相手の言葉、行動、置かれた状況から、何を守ろうとしているかを見る</span></div>
<div style="background-color: #f5f5f5; padding: 12px; border-radius: 8px;"><strong>解釈</strong><br><span style="color: #555;">相手の立場なら、なぜその判断が合理的なのかを考える</span></div>
<div style="background-color: #f5f5f5; padding: 12px; border-radius: 8px;"><strong>介入</strong><br><span style="color: #555;">双方が動ける小さな働きかけを試し、反応を見てまた観察する</span></div>
</div>

<div style="margin-top: 16px;">
一度で分かり合うための順番ではありません。相手の反応から見立てを直し、次の働きかけを変える反復です。この発表では、その対話の材料として一枚の図を使います。
</div>

<div style="margin-top: 12px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>図は結論を出すためではなく、違う前提を出し、次に確かめることを決めるために使う。</strong>
</div>

</div>

<div style="font-size: 0.5em; color: #777; text-align: right; margin-top: 5px;">
出典：<a href="https://jinjibu.jp/article/detl/keyperson/2173/2/3/1/">「日本の人事部」宇田川元一さんインタビュー</a>（準備・観察・解釈・介入）
</div>

---

## 判断待ちを短くする三つの取り決め

<div style="font-size: 0.72em;">

前提を確かめる対話と並行して、判断の依頼そのものにも形を与えます。Jacqui Readは、判断が止まる原因の多くを、誰が決めるのか、何をいつまでに返すのかが曖昧なことに見ています。

<div style="display: flex; gap: 16px; align-items: stretch; margin-top: 14px;">
<div style="flex: 1; background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>決める人を一人にする</strong><br><br>
最も詳しい人か、最も影響を受ける人が決定オーナー。役職の高い人ではない。
</div>
<div style="flex: 1; background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>同意ではなくコミットを求める</strong><br><br>
全員の賛成を待たない。結果に従うことを約束してもらい、意見は記録に残す。
</div>
<div style="flex: 1; background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>依頼に四つを書く</strong><br><br>
誰に、何を、いつまでに、返事がないときはどうするか。「なるべく早く」は期限ではない。
</div>
</div>

<div style="margin-top: 16px;">

会議は、決める権限のある人がいるときだけ同期で開きます。進捗の共有や下書きへの意見は非同期で足ります。10人が1時間集まれば、10時間分の作業が止まります。

</div>

<div style="margin-top: 12px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>判断待ちの多くは、内容ではなく「誰が・いつまでに」が決まっていないことで生まれる。</strong>
</div>

</div>

<div style="font-size: 0.5em; color: #777; text-align: right; margin-top: 4px;">
出典：Jacqui Read, <em>Communication Patterns</em>, O'Reilly, 2023, 第12章「意思決定にまつわる神話」、第14章（4つのWはGreene &amp; Sanderson, <em>Remote Works</em> より）
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

システム構成図は、要素同士の接続を表します。ウォードリーマップでは、そこへ<strong>ユーザーのジョブと成熟度</strong>を加えます。答えを自動で出すための図ではありません。どこへ投資するか、既製サービスと自前運用をどう比べるか、何をやめるかを話すために使います。一枚に全部は描きません。知りたいことが違う図を一枚に混ぜると、誰にも読めなくなります。この図は最も抽象度の高い一枚で、詳細は別の図へつなぎます。

</div>

<div style="margin-top: 14px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>要素だけでなく、「誰のため」と「どの段階」を同時に見る。</strong>
</div>

</div>

<div style="font-size: 0.5em; color: #777; text-align: right; margin-top: 6px;">
参考：Susanne Kaiser, <em>Architecture for Flow</em>, 第1章 ／ Nick Tune, Jean-Georges Perrin, <em>Architecture Modernization</em>, 第5章 ／ Jacqui Read, <em>Communication Patterns</em>, 第1章「抽象度の混在」
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
出典：Nick Tune, Jean-Georges Perrin, <em>Architecture Modernization</em>, Manning, 2024, 第5章
</div>

---

## 検索の例で、図の読み方を確かめる

<div style="font-size: 0.72em;">

先ほどの検索機能を置くと、縦方向にはジョブを支える依存が見え、横方向には要素ごとに適した進め方が見えてきます。

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

同じ機能でも、役割によって見ている情報は違います。ここでは、PM、デザイナー、エンジニア、SRE（信頼性と運用を担う役割）が持つ情報を、ウォードリーマップに並べます。

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

<div style="font-size: 0.5em; color: #777; text-align: right; margin-top: 8px;">
参考：Susanne Kaiser, <em>Architecture for Flow</em>, 第1章 ／ Nick Tune, Jean-Georges Perrin, <em>Architecture Modernization</em>, 第5章
</div>

---

## 差別化の中心は、横軸の右端にあった

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
出典：Susanne Kaiser, <em>Architecture for Flow</em>, 第1章「効率性ギャップ」、第2章 ／ Nick Tune, Jean-Georges Perrin, <em>Architecture Modernization</em>, 第5章、第10章
</div>

---

## 半年計画の刷新は、ジョブにつながっていなかった

<div style="font-size: 0.75em;">

半年かける予定だった大規模刷新を、4ヶ月目にロールバックしました。つまり、変更を取り消して元に戻しました。振り返ると、「誰のどのジョブを片付けるのか」を問わないまま、<strong>作れるものを作っていた</strong>。

<div style="display: flex; gap: 20px; align-items: center; margin-top: 16px;">
<div style="flex: 1; background-color: #f5f5f5; padding: 15px; border-radius: 8px;">

<strong>ウォードリーマップで見ると</strong>

ユーザーのジョブとの関係を説明できない要素は、どれだけ大きくても価値につながっていない。刷新の対象はシステムの内部で、ジョブとの関係は確かめていなかった。

</div>
<div style="flex: 1; background-color: #f5f5f5; padding: 15px; border-radius: 8px;">

<strong>バリューストリームで見ると</strong>

ロールバックで、4ヶ月分の変更は誰のジョブも片付けずに消えた。作れることは分かりました。しかし、作るべきだったかは最後まで確かめられませんでした。

</div>
</div>

<div style="margin-top: 16px;">

4ヶ月分を取り消すとなると、やめる判断そのものが重くなります。最初の判断が間違いだったように見えることも、決断を遅らせます。判断が疑われるまでの時間が長いほど、直す費用は高くなる。やめる判断を早くする方法は、4章で扱います。

</div>

<div style="margin-top: 12px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>ユーザーのジョブとの関係を説明できない計画は、始める前に問い直せたはず。</strong>
</div>

</div>

<div style="font-size: 0.5em; color: #777; text-align: right; margin-top: 8px;">
参考：Nick Tune ほか, <em>Architecture Modernization</em>, 第16章「難しい決断をする覚悟」／ Jacqui Read, <em>Communication Patterns</em>, 第11章
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
<strong>依存の線が集まる要素</strong><br><span style="color: #555;">複数の機能や仕組みが共通して必要とする要素。2章で測った待ち時間と見比べ、担当するチームを決める</span>
</div>
</div>

<div style="margin-top: 14px;">

図の目的は、関係者全員が見ている情報を揃え、投資を決める理由をはっきりさせることです。最初から現状の細部まで正確に描く必要はありません。まず、合意にかかる時間を短くします。次に、<strong>ジョブの発見から結果の確認までを、どのチームが担当するか</strong>を見直し、チーム間の引き継ぎそのものを減らします。

</div>

<div style="margin-top: 12px; padding: 14px; background-color: #e0e0e0; border-radius: 8px; text-align: center; font-size: 1.1em;">
<span style="color: #e65100; font-weight: bold;">図で見ている情報を揃える。計測で、減らす待ちを選ぶ。</span>
</div>

</div>

<div style="font-size: 0.5em; color: #777; text-align: right; margin-top: 4px;">
参考：Susanne Kaiser, <em>Architecture for Flow</em>, 第5章「フロー最適化の要件」、第8章 ／ Nick Tune, Jean-Georges Perrin, <em>Architecture Modernization</em>, 第10章
</div>

---

<!--
_backgroundColor: #0a1929
_color: white
_class: transition
-->

<div style="display: flex; justify-content: center; align-items: center; height: 100%; flex-direction: column; color: white; text-align: center;">

<h2 style="color: white !important;">4. ジョブから「作る・やめる」を判断する</h2>

<strong>作れるものが増えても、ユーザーのジョブは増えない。</strong>

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
出典：<a href="https://www.christenseninstitute.org/theory/jobs-to-be-done/">Christensen Institute, Jobs to Be Done Theory</a>／ Susanne Kaiser, <em>Architecture for Flow</em>, 第1章
</div>

---

## 作るべきかは、四つの問いで決める

<div style="font-size: 0.7em;">

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
<strong>待ち時間の合計が最も大きい工程を改善するか</strong><br>
<span style="color: #555;">2章で見つけた待ち時間を減らさない機能は、作っても待ちの列に並ぶだけ</span>
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

<div style="font-size: 0.5em; color: #777; text-align: right; margin-top: 4px;">
参考：Rob Fitzpatrick, <em>The Mom Test</em>, 2013
</div>

---

## 機能を消す方が、作るより難しい

<div style="font-size: 0.72em;">

機能を加えるときは、期待する新しい動作を満たすことに確認の範囲を絞りやすい。一方、消すときは、<strong>今ある大切な動作を失わないこと</strong>を確かめなければなりません。その判断材料は、コードだけには残っていません。

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

<div style="margin-top: 18px;">

利用記録だけで決めず、営業やCSには顧客への影響を、エンジニアには仕組みの依存を、SREや運用担当には障害時の使われ方を確かめます。新しい利用を止め、関係者へ知らせ、元に戻せる状態で一度止めてから削除します。

</div>

<div style="margin-top: 14px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>「使われていないように見える」だけでは消せない。影響を確かめ、段階を踏んで止める。</strong>
</div>

</div>

<div style="font-size: 0.5em; color: #777; text-align: right; margin-top: 5px;">
参考：Susanne Kaiser, <em>Architecture for Flow</em>, 第5章 ／ Nick Tune, Jean-Georges Perrin, <em>Architecture Modernization</em>, 第16章
</div>

---

## C4モデルで削除の影響を確かめる

<div style="font-size: 0.72em;">

<strong>C4モデル</strong>は、ソフトウェアの構造を、システム全体からコードまで段階を分けて表す方法です。削除の判断では、四段階すべてを描くのではなく、まず上の二つで影響範囲を確かめます。

<div style="display: grid; grid-template-columns: 285px 1fr; gap: 10px 16px; align-items: center; margin-top: 16px;">
<div style="background-color: #f5f5f5; padding: 14px; border-radius: 8px;"><strong>システムコンテキスト図</strong></div>
<div>対象システムを一つの箱として、その周りに利用者と外部システムを置きます。機能を消したとき、誰の仕事と、どの外部連携に影響するかを確かめます。</div>
<div style="background-color: #f5f5f5; padding: 14px; border-radius: 8px;"><strong>コンテナ図</strong></div>
<div>システム内のアプリケーションとデータストア、その通信を表します。ここでいうコンテナはDockerコンテナではなく、実行するアプリケーションかデータストアを指します。</div>
</div>

<div style="margin-top: 16px; padding: 12px 14px; background-color: #f5f5f5; border-radius: 8px;">
<strong>複雑なところだけ補う</strong>　機能が動く順序は動的図、本番で動く場所や冗長化・代替経路は配置図で確かめます。コンポーネント図やコード図まで必要かは、削除による失敗の大きさで決めます。
</div>

<div style="margin-top: 14px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>必要な粒度まで詳しくする。すべての図を作ることを目的にしない。</strong>
</div>

</div>

<div style="font-size: 0.5em; color: #777; text-align: right; margin-top: 5px;">
出典：<a href="https://c4model.com/diagrams">C4 model, Diagrams</a> ／ Simon Brown, <em>The C4 Model</em>, 2026, 第2〜4・7〜8章
</div>

---

## 一つの記録だけでは、削除を判断できない

<div style="font-size: 0.7em;">

C4図が示すのは、設計判断の<strong>結果としての構造や動作</strong>です。なぜその設計を選んだのか、いま誰が必要としているのかは、別の情報とつないで確かめます。

<div style="display: grid; grid-template-columns: 230px 1fr; gap: 8px 16px; align-items: center; margin-top: 14px;">
<div style="background-color: #f5f5f5; padding: 12px 14px; border-radius: 8px;"><strong>利用実態と重要性</strong></div>
<div>利用記録に加え、営業・CS・ユーザーへの確認から、誰がどんな状況で使い、その機能を止めると何に困るかを見る。</div>
<div style="background-color: #f5f5f5; padding: 12px 14px; border-radius: 8px;"><strong>現在の構造と動作</strong></div>
<div>C4図をコード、設定、データ、稼働環境と照合し、削除対象から影響するシステムと代替経路を確認する。</div>
<div style="background-color: #f5f5f5; padding: 12px 14px; border-radius: 8px;"><strong>判断した背景</strong></div>
<div>検討中はDesign Doc（設計案と検討内容をまとめる文書）に選択肢と影響を書く。決めた後はADR（設計判断の記録）に、選んだ理由、受け入れた不利益、見直す条件を残す。</div>
</div>

<div style="margin-top: 16px;">
図が古ければ影響を見落とし、ADRだけでは現在の利用を見誤ります。すべてを一つに詰め込まず、C4図、Design Doc、ADR、利用記録を相互にリンクし、判断日には同じ機能について見直します。
</div>

<div style="margin-top: 13px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>ログだけでは重要性が分からない。図だけでは理由が分からない。ADRだけでは現状が分からない。</strong>
</div>

</div>

<div style="font-size: 0.5em; color: #777; text-align: right; margin-top: 5px;">
参考：Simon Brown, <em>The C4 Model</em>, O'Reilly, 2026, 第12章 ／ Jacqui Read, <em>Communication Patterns</em>, O'Reilly, 2023, 第12章
</div>

---

## いつやめるかは、作る前に決める

<div style="font-size: 0.72em;">

機能を消すのが難しいからこそ、削除の判断を後回しにしません。先ほどの半年計画では、4ヶ月目まで中止を判断できませんでした。やめる条件と判断日を、機能を作る前に書いておけば、継続か中止かをもっと早く決められます。「2ヶ月の調査が終わる7月16日に、続けるかを決める」のように。

<div style="display: flex; gap: 16px; align-items: stretch; margin-top: 14px;">
<div style="flex: 1; background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>ジョブが別の手段で片付いている</strong><br><span style="color: #555;">マネージドサービスや既存機能で足りる。置き換える</span>
</div>
<div style="flex: 1; background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>想定したジョブには使われていない</strong><br><span style="color: #555;">別のジョブを確かめるか、機能を消す</span>
</div>
<div style="flex: 1; background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>維持が流れを遅くしている</strong><br><span style="color: #555;">変更のたびにレビュー範囲と障害を増やす。消す</span>
</div>
</div>

<div style="margin-top: 14px;">

判断日には、利用記録、問い合わせ、依存先、障害時の代替手段を見直します。条件を満たしていなければ、同じ形で続けるのではなく、縮小・停止・置き換えを選びます。使った費用の大きさは、続ける理由になりません。

</div>

<div style="margin-top: 12px; padding: 12px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>「この条件になったらやめる」と「いつ判断するか」を、<br>PRの説明、ADR（設計判断の記録）、Design Doc（設計案と検討内容をまとめる文書）のいずれかに記載する。</strong>
</div>

</div>

<div style="font-size: 0.5em; color: #777; text-align: right; margin-top: 4px;">
参考：Kaiser, <em>Architecture for Flow</em>, 第5章 ／ Tune・Perrin, <em>Architecture Modernization</em>, 第16章 ／ Read, <em>Communication Patterns</em>, 第11章
</div>

---

## 検索機能の実装前に決めること

<div style="font-size: 0.72em;">

作ると決めたら、目標、守る条件、確認方法、対象外を実装前に書きます。この四つを<strong>実装前の仕様</strong>と呼びます。仕様駆動開発（SDD）の受け入れ基準、非目標、完了チェックに当たります。

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 10px; margin-top: 10px;">
<div style="background-color: #f5f5f5; padding: 10px 14px; border-radius: 8px;">
<strong>目標</strong><br><span style="color: #555;">対象ユーザーが必要な情報へ早くたどり着き、購入を判断できる</span>
</div>
<div style="background-color: #f5f5f5; padding: 12px 14px; border-radius: 8px;">
<strong>守る条件</strong><br><span style="color: #555;">検索結果の正しさ、応答時間、閲覧権限を、変更前より悪化させない</span>
</div>
<div style="background-color: #f5f5f5; padding: 12px 14px; border-radius: 8px;">
<strong>確認方法</strong><br><span style="color: #555;">テストとログに加え、検索を終えるまでの時間と購入へ進んだ割合を見る</span>
</div>
<div style="background-color: #f5f5f5; padding: 12px 14px; border-radius: 8px;">
<strong>対象外とやめる条件</strong><br><span style="color: #555;">推薦機能は含めない。判断日までに利用や結果が変わらなければ、続け方を見直す</span>
</div>
</div>

<div style="margin-top: 12px; padding: 10px; background-color: #e0e0e0; border-radius: 8px; text-align: center;">
<strong>AIに実装を頼む前に、何を変え、何を守り、どう確かめるかをチームで決める。</strong>
</div>

<div style="margin-top: 10px;">

仕様のレビューは、何を作るかを職能を越えて揃える場です。仕様の失敗の多くは、ある役割が知っていた制約を別の役割が知らなかったことから起きます。その会話は数分。コードレビューで見つければ数時間、本番なら、もっと高くつきます。

</div>

</div>

<div style="font-size: 0.5em; color: #777; text-align: right; margin-top: 4px;">
参考：Alfonso Graziano, <em>AI-Native Software Engineering</em>, O'Reilly Early Release（草稿）, 仕様駆動開発の章
</div>

---

## AIは作れる。人が作るべきかを決める

<div style="font-size: 0.72em;">

実装前の仕様をAIへ渡すと、目標と守る条件に沿った案を出し、確認を繰り返しやすくなります。生成が速いほど、曖昧な指示から異なる実装が次々に生まれます。曖昧さの影響範囲は、作る速さに比例して広がる。AI支援開発で最も多い無駄は、悪いコードではなく、間違った問題を解くコードです。エージェントは実装の判断はできても、意図の判断はできません。そして受け入れ基準が書けないなら、まだ探索の段階です。その機能を作るべきかは、仕様だけでは決まりません。

<div style="display: flex; gap: 20px; align-items: center; margin-top: 16px;">
<div style="flex: 1; background-color: #f5f5f5; padding: 15px; border-radius: 8px; text-align: center;">
<strong>AIに任せる</strong><br><br>計画と実装の候補<br>反復とテスト・ログの収集
</div>
<div style="flex: 1; background-color: #f5f5f5; padding: 15px; border-radius: 8px; text-align: center;">
<strong>人が決める</strong><br><br>ジョブと守る条件<br>確認方法とやめる条件
</div>
</div>

<div style="margin-top: 16px; padding: 14px; background-color: #e0e0e0; border-radius: 8px; text-align: center; font-size: 1.15em;">
<span style="color: #e65100; font-weight: bold;">AIに任せる範囲は、検証できるところまで。作るべきかは、チームが決める。</span>
</div>

</div>

<div style="font-size: 0.5em; color: #777; text-align: right; margin-top: 4px;">
参考：Alfonso Graziano, <em>AI-Native Software Engineering</em>, 「仕様駆動開発」の章 ／ Addy Osmani, <em>Beyond Vibe Coding</em>, 第3章・第4章
</div>

---

## まとめ　実装を速めても待ちは残る

<div style="font-size: 0.72em;">

AI支援で、動くコードを書く時間は短くなり、個人が作れる量も増えます。ただし、ジョブの発見から結果の確認までには、実装以外の時間があります。

<div style="display: flex; gap: 14px; align-items: stretch; margin-top: 16px;">
<div style="flex: 1; background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>実装</strong><br><br>
設計・実装・テスト。AI支援で短くしやすく、PR数や生成量にも表れやすい。
</div>
<div style="flex: 1; background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>待ち</strong><br><br>
優先順位の判断、レビュー、他の役割との合意。仕事の進め方を変えなければ残る。
</div>
<div style="flex: 1; background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>結果の確認</strong><br><br>
本番で使われ、狙った変化が起きたかを確かめる。リリースしただけでは分からない。
</div>
</div>

<div style="margin-top: 16px; padding: 14px; background-color: #e0e0e0; border-radius: 8px; text-align: center; font-size: 1.1em;">
<span style="color: #e65100; font-weight: bold;">30/70の例では、実作業を半分にしても全体は15%しか縮まらない。<br>速くなった実感と届いた価値が噛み合わないのは、実装の外にある待ちが残るから。</span>
</div>

</div>

---

## まとめ　作るべきかは流れとジョブで決める

<div style="font-size: 0.72em;">

「作るべきか」を判断するには、次の三つを一緒に見ます。

<div style="display: flex; gap: 14px; align-items: stretch; margin-top: 16px;">
<div style="flex: 1; background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>流れを測る</strong><br><br>
直近10件を作業と待ちに分け、どの工程で、誰を待った時間が最も長かったかを確かめる。
</div>
<div style="flex: 1; background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>前提を確かめる</strong><br><br>
役割ごとに何が問題に見え、何を守ろうとしているかを対話する。その材料を一枚の図に並べる。
</div>
<div style="flex: 1; background-color: #f5f5f5; padding: 14px; border-radius: 8px;">
<strong>ジョブから決める</strong><br><br>
最近困った場面と、何が変われば片付いたと言えるかを確かめる。既存の手段で足りるなら作らない。
</div>
</div>

<div style="margin-top: 16px; padding: 14px; background-color: #e0e0e0; border-radius: 8px; text-align: center; font-size: 1.1em;">
<span style="color: #e65100; font-weight: bold;">AIは「どう作るか」の候補を増やす。<br>「何を作るか」「いつやめるか」は、計測とジョブの理解をもとにチームが決める。</span>
</div>

</div>

---

## 参考資料

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 28px; align-items: start; font-size: 0.62em;">
<div>
<strong>フローとプロダクト</strong>
<ul style="margin-top: 10px; padding-left: 24px;">
<li><a href="https://publishing.newspicks.com/books/9784910063010">宇田川元一『他者と働く――「わかりあえなさ」から始める組織論』2019</a></li>
<li>Jacqui Read, <em>Communication Patterns</em>, O'Reilly, 2023（邦訳『開発者とアーキテクトのためのコミュニケーションガイド』オライリー・ジャパン, 2025）</li>
<li><a href="https://www.oreilly.com/library/view/the-c4-model/9798341660113/">Simon Brown, <em>The C4 Model</em>, O'Reilly, 2026</a></li>
<li>Susanne Kaiser, <em>Architecture for Flow</em>, Addison-Wesley, 2025</li>
<li>Nick Tune, Jean-Georges Perrin, <em>Architecture Modernization</em>, 2024</li>
<li>Clayton M. Christensenほか, <em>Competing Against Luck</em>, 2016 ／ <a href="https://www.christenseninstitute.org/theory/jobs-to-be-done/">Jobs to Be Done Theory</a></li>
<li>Melissa Perri, <em>Escaping the Build Trap</em>, 2018 ／ Rob Fitzpatrick, <em>The Mom Test</em>, 2013</li>
<li>Jonathan Smartほか, <em>Sooner Safer Happier</em>, 2020 ／ Eliyahu M. Goldratt, Jeff Cox, <em>The Goal</em>, 2004</li>
</ul>
</div>
<div>
<strong>AI時代の開発</strong>
<ul style="margin-top: 10px; padding-left: 24px;">
<li>Addy Osmani, <em>Beyond Vibe Coding</em>, 2025</li>
<li>Alfonso Graziano, <em>AI-Native Software Engineering</em>, O'Reilly Early Release（2026年時点の草稿、刊行予定2027年）</li>
<li><a href="https://dora.dev/research/2025/dora-report/">DORA, State of AI-assisted Software Development 2025（v. 2025.2）</a></li>
<li><a href="https://cloud.google.com/resources/content/dora-roi-of-ai-assisted-software-development">DORA, ROI of AI-assisted Software Development 2026（v. 2026.1）</a></li>
<li><a href="https://metr.org/blog/2025-07-10-early-2025-ai-experienced-os-dev-study/">METR, Early-2025 AI on Developer Productivity</a></li>
</ul>
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

### 職能の壁を越えて価値のフローを設計する

</div>

<div class="author-info" style="text-align: left; padding-left: 0; text-indent: 0;">
ありがとうございました</br>
@nwiizo
</div>
