---
marp: true
theme: 3shake-2026-presentation
class: reading
paginate: true
title: AI時代の「技術的負債」の変質ー概念の終焉と再解釈、エージェントと共に向かう先
description: 技術的負債に向き合うConference 2026。技術的負債・認知的負債・意図の負債から、エージェント時代のエンジニアリングを考える。判断・情報・権限・検証・学習をつなぎ、変更し続けられるアーキテクチャを育てる40分。
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

## 目次

<div>
<p><strong>1. 負債は、実装・理解・意図の関係に残る</strong><br>3つの負債の違いと、AI以前から続く問題を捉える。</p>
<p><strong>2. AIが変える、コストと学習の経路</strong><br>実装の省力化が、知識の蓄積や改善の優先順位にどう影響するか。</p>
<p><strong>3. 判断と検証を、実装につなぐ</strong><br>任せる範囲、実行環境、仕様・情報・図を、一続きの開発として設計する。</p>
<p><strong>4. 変更し続けられるアーキテクチャを育てる</strong><br>評価と運用から学び、修繕・再生成・境界の見直しを選べるようにする。</p>
</div>

---

## 実装を速く作れるなら、何に投資するか

<div class="small">
<p>実装の費用が変われば、以前は高すぎた変更も選択肢に入る。<br>そこで、<strong>何を作るか決め、結果を確かめ、次の変更へ知識を残す仕事</strong>が効いてくる。</p>
<img width="1100" src="../../assets/images/2026/technical-debt-in-the-ai-era/engineering-investment.svg" alt="変更しにくさを、実装の構造・共有理解・意図の記録から調べ、判断・情報・検証の仕組みへ投資する。その結果を次の変更で確かめ、投資の選び方を更新する。">
<p><strong>技術的負債を、直す箇所の一覧から、次の変更を妨げる関係へ捉え直したい。</strong><br>どこで判断が止まり、何を調べ直し、何を確かめられないのか。その違いから対処を選ぶ。</p>
<p>エージェントを使って、その場の実装と、次の仕事が進む条件を一緒に改善する。<br>再生成も、この開発の中で選べる方法の一つとして扱います。</p>
</div>

---

## 技術的負債は、将来の変更を重くする

<div class="small">
<p><strong>Technical Debt</strong>は、短期には都合のよい設計や実装が、<br>将来の変更を高コストにしたり、不可能にしたりする問題を指す。</p>
<img width="1100" src="../../assets/images/2026/technical-debt-in-the-ai-era/technical-debt.svg" alt="一つの変更が内部の依存や制約を通して複数の箇所へ波及し、修正と検証の範囲を広げる。">
<p>見る対象は、保守や進化を妨げる内部の構造。<br>古さや好みだけでなく、<strong>どの依存や制約が、どの変更を難しくするか</strong>を見る。</p>
<p>理解が深まれば、以前は妥当だった設計の制約にも気づく。<br>その理解に実装を追いつかせる仕事も、技術的負債への対処に含まれていた。</p>
</div>

<blockquote><a href="https://drops.dagstuhl.de/entities/document/10.4230/DagRep.6.4.110">Dagstuhl Seminar 16162</a>, 2016, p. 112；<a href="https://c2.com/doc/oopsla92.html">Cunningham, The WyCash Portfolio Management System</a>, 1992。要約。</blockquote>

---

## 依存の強さだけでは、変更の重さは決まらない

<div>
<p>部品同士が相手の内部構造や業務ルールを前提にすると、<br>その前提の変更が、利用する側の変更も必要にする。</p>

| 見る観点 | 変更を重くする仕組み |
|---|---|
| 結びつきの強さ | 相手について多くを前提にするほど、一緒に変える理由が増える |
| 調整する距離 | コード・配布・チームの境界をまたぐほど、同時変更の調整が増える |
| 前提の変わりやすさ | 頻繁に変わる前提に依存するほど、調整を繰り返す |

<p><strong>頻繁に変わる前提を、調整しにくい相手と共有していないか。</strong><br>同じ結びつきでも、事業やチームの条件が変われば、負担は変わる。</p>
<p>ここでの「共有」は、部品同士が持つ依存の話。<br>次に見る、<strong>人のあいだで理解を共有できているか</strong>とは、分けて考える。</p>
</div>

---

## 認知的負債は、共有理解に残る

<div class="small">
<p><strong>Cognitive Debt：実装の変化に、チームの共有理解が追いついていない。</strong></p>
<img width="1100" src="../../assets/images/2026/technical-debt-in-the-ai-era/cognitive-debt.svg" alt="今の実装はAからBを経てCへ進むが、チームは途中の関係を説明できない。共有理解とのずれが判断待ちや再調査につながる模式図。">
<p>コードが残っていても、変更の影響を説明できる人が限られれば、<br>判断はその人を待つ。引き継げなければ、次の人は調査をやり直す。</p>
<p>全員にすべてを覚えてもらうことには、無理がある。<br><strong>必要な知識へたどり着き、説明を確かめ合える状態</strong>を維持したい。</p>
</div>

<blockquote>Margaret-Anne Storey, <a href="https://arxiv.org/abs/2603.22106v4">From Technical Debt to Cognitive and Intent Debt</a>, 2026。定義の要約。</blockquote>

---

## 意図の負債は、判断のよりどころに残る

<div class="small">
<p><strong>Intent Debt（意図の負債）</strong>は、目的・制約・判断理由が明確に残らず、<br>人もエージェントも、変更のよりどころを持てない状態を指す。</p>
<img width="1100" src="../../assets/images/2026/technical-debt-in-the-ai-era/intent-debt.svg" alt="コードや設定には現在の動作が残る一方、目的・制約・判断理由の記録が使えず、設計を維持するか変えるかの根拠が不足する。">
<p>担当者が覚えていることと、他者が使える記録になっていることは別。<br>記録があっても、古い条件や矛盾した理由しか残っていない場合もある。</p>
<p><strong>何を作ったかに加えて、何のために、何を優先したかを残す。</strong><br>それが、後から設計を維持する判断にも、変える判断にも使える。</p>
</div>

<blockquote>Storey, <a href="https://arxiv.org/abs/2603.22106v4">Triple Debt Model</a>, 2026；Addy Osmani, <a href="https://www.oreilly.com/radar/the-intent-debt/">The Intent Debt</a>, 2026。要約。</blockquote>

---

## 「意図的な負債」とは、意味が違う

<div class="small">
<p><strong>Deliberate Debt</strong>は、負債を認識して引き受けること。慎重な判断だったかとは別の軸になる。<br><strong>Intent Debt</strong>が問うのは、目的・制約・判断理由を、後から使えるかどうか。</p>
<img width="1100" src="../../assets/images/2026/technical-debt-in-the-ai-era/deliberate-and-intent-debt.svg" alt="負債を意図的に引き受けたかを縦軸、目的・制約・理由を後から使えるかを横軸にした四つの組み合わせ。意図的な選択でも理由を引き継げないことがあり、負債と認識しなかった設計でも当時の理由を残せる。">
<p>意識して引き受けた負債でも、理由が失われれば意図の負債は残る。<br>当時は負債だと思っていなかった設計でも、その判断理由が残り、見直しに使えることはある。</p>
</div>

<blockquote>Martin Fowler, <a href="https://martinfowler.com/bliki/TechnicalDebtQuadrant.html">Technical Debt Quadrant</a>, 2009；Storey, <a href="https://arxiv.org/abs/2603.22106v4">Triple Debt Model</a>, 2026。</blockquote>

---

## 3つの負債は、互いに影響する

<div class="small">
<img width="1100" src="../../assets/images/2026/technical-debt-in-the-ai-era/debt-interactions.svg" alt="意図の記録、共有理解、実装の構造の相互関係。実装と判断理由の照合も含む。">
<p>理由が残らなければ、実装を理解するために調べ直す仕事が増える。<br>理解が不足すれば、変更の影響を見誤り、実装の依存を複雑にすることがある。</p>
<p>複雑な実装は、理解と意図の照合をさらに難しくする。<br>逆に、構造を整理し、判断理由を確かめる作業は、共有理解も育てうる。</p>
<p><strong>一つの改善が他にも効くことはあるが、自動ではない。</strong><br>3つは、独立した金額として足し算する分類ではない。</p>
</div>

<blockquote>Storey, <a href="https://arxiv.org/abs/2603.22106v4">From Technical Debt to Cognitive and Intent Debt</a>, 2026。</blockquote>

---

## 技術の背後に、判断と仕組みがある

<div class="columns">
<div>
<img width="400" src="../../assets/images/2026/technical-debt-in-the-ai-era/taming-your-dragon-figure-1-1.jpg" alt="技術的負債のオニオンモデル。外側から技術、トレードオフ、システム、経済・ゲーム理論、厄介な問題の5層が重なる。">
<p><small>Figure 1-1<br>The technical debt onion model より引用</small></p>
</div>
<div>
<p>表面の「技術」の内側に、<br><strong>判断・組織の仕組み・利害</strong>がある。</p>
<p>何を優先して仕事を進めるか。<br>その判断を、何が繰り返させるか。</p>
<p>関係者によって、困っていることや<br>望む解決も一致するとは限らない。</p>
<p><strong>コードを直しても、<br>負債を生む条件が残ることがある。</strong></p>
</div>
</div>

<blockquote>Andrew Richard Brown, <a href="https://doi.org/10.1007/979-8-8688-0264-5">Taming Your Dragon: Addressing Your Technical Debt</a>, Apress, 2024. © Dr. Andrew Richard Brown 2024.</blockquote>

---

## 理解の問題は、前からあった

<div class="columns">
<div>
<img width="510" src="../../assets/images/2026/technical-debt-in-the-ai-era/taming-your-dragon-figure-8-5.jpg" alt="異なる見方を持つ関係者S1とS2が、互いの理解を重ねながら解決へ進むBrownの図。">
<p><small>Figure 8-5 より引用<br>Stakeholders S1 and S2 start with radically different worldviews and then progress toward a shared understanding</small></p>
</div>
<div>
<p>同じ問題を見ていても、<br>役割が違えば、守りたい条件も違う。</p>
<p><strong>共有理解は、全員が同じ意見になることではない。</strong><br>互いの事情を理解し、違いを話せること。</p>
<p>相手の制約を知らずに改善すると、<br>別の仕事を難しくすることがある。<br>個人の知識に加えて、理解を共有する関係も要る。</p>
</div>
</div>

<blockquote>Brown, <a href="https://doi.org/10.1007/979-8-8688-0264-5">Taming Your Dragon: Addressing Your Technical Debt</a>, Apress, 2024, Ch. 8. © Dr. Andrew Richard Brown 2024.</blockquote>

---

## 判断理由は、設計を選び直すために残す

<div class="small">
<p>設計には、守りたかった条件と、その条件を満たすために選んだ構造がある。<br>理由を残す価値は、<strong>今も必要な制約と、選び直せる実現方法を見分けられること</strong>にある。</p>
<img width="1100" src="../../assets/images/2026/technical-debt-in-the-ai-era/design-decision-lifetime.svg" alt="当時の目的・制約・選択理由を、現在の条件と利用に照らす。維持する条件と変える構造を分け、理由を再確認して設計を維持するか、境界・実装・評価を選び直すかを判断する。">
<p>記録があれば、現在の利用や依存と照合する。過去に合理的だったことだけでは、今も同じ設計を選ぶ理由にはならない。<br><strong>判断理由を、過去の説明から、次の変更を選ぶための根拠へつなげたい。</strong></p>
</div>

<blockquote>Brown, <a href="https://doi.org/10.1007/979-8-8688-0264-5">Taming Your Dragon</a>, 2024, Ch. 11。</blockquote>

---

## AIが変える、コストと学習の経路

<div class="small">
<p>人が調査・実装・検証する過程には、コードを変えながら理解を深め、判断を見直す機会もあった。<br>任せる範囲が広がるほど、成果物の更新と、人が学ぶ機会を別々に確かめたくなる。</p>

<img width="1100" src="../../assets/images/2026/technical-debt-in-the-ai-era/cost-and-learning-paths.svg" alt="エージェントへ調査・実装・検証を任せ、コード・説明・判断の記録を更新する。コードの変更しやすさ、人が影響を説明できるか、次の判断で理由を使えるかは、それぞれ別に確かめる。">
<p>AIは、この三つの更新を支援できる。<br>ただし、<strong>コード・説明・文書の生成が進んでも、それぞれの負債が同時に減るとは限らない。</strong></p>
<p>省力化した分を、関係者が試し、確かめ、理由を更新する機会にも使いたい。</p>
</div>

---

## 生成の速さだけでは、変更は速くならない

<div class="small">
<p>生成の省力化は、広い範囲の修正や再実装を選びやすくする。<br>一方で、変更が使われるまでには、何を残すか決め、動作を確かめ、利用やデータを移す仕事がある。</p>

<img width="1100" src="../../assets/images/2026/technical-debt-in-the-ai-era/generation-and-delivery.svg" alt="調査と判断から生成と修正へ進み、候補を評価・採用・統合・運用へ送る。候補を作る量が採用できる量を上回ると、採用前の候補が積み上がる。費用と時間は変更が使われるまで全体で比べる。">
<p>AIを各工程で使っても、<strong>候補を作る量が採用できる量を上回れば、待ちは増える。</strong></p>
<p><strong>「変更は高すぎる」という過去の判断は、総費用で見直したい。</strong><br>生成で省ける費用を確かめ、判断材料・評価・統合の整備へも配分する。</p>
</div>

---

## 説明を生成できても、採用する理由は確かめる

<div class="small">
<p>同じ動作は、違う目的や制約からも生まれる。<br>今のコードからもっともらしい意図を推測できても、それだけで当時の判断理由は確定しない。</p>
<img width="1100" src="../../assets/images/2026/technical-debt-in-the-ai-era/evidence-and-decision.svg" alt="コードの動作、記録された期待、運用での利用と依存を照合する。一致と食い違いを確かめ、今後守る条件と変更理由を判断する。確認した事実、推測、今回の決定を区別して残す。">
<p><strong>過去の意図を完全に復元できなくても、次の判断は作れる。</strong><br>食い違いを関係者と確かめ、動作と影響を確認した範囲で、これから守る条件と変える理由を決める。</p>
<p><strong>事実・推測・今回の決定を分け、新たな判断を過去の理由にしない。</strong></p>
</div>

<blockquote>Osmani, <a href="https://www.oreilly.com/radar/the-intent-debt/">The Intent Debt</a>, 2026；Chris Ford, Agentic Engineering at Scale, Ch. 1。</blockquote>

---

## 記録があっても、判断に使われるとは限らない

<div class="small">
<p>理由が文書に残っていても、誰も読まず、知っている人へ聞く仕事の進め方はある。<br>その場では聞く方が早くても、根拠をたどる経路が育たなければ、次の変更でも同じ人へ戻る。</p>

| どこで止まっているか | 変える対象 |
|---|---|
| 記録が読まれない | 変更箇所から根拠へたどる導線と、探して確認する時間 |
| 読んでも判断に使えない | 背景・適用条件の説明と、今の動作で確かめる機会 |
| 理解しても判断を任されない | 決めてよい範囲と、他の人へ判断を戻す条件 |

<p><strong>判断が偏っていることだけから、文書不足や認知的負債とは決められない。</strong><br>記録の不足、共有理解の不足、権限や仕事の進め方を、実際に止まった箇所から見分ける。</p>
<p>読了を目的にせず、今回の変更で参照した根拠と、そこから決めた内容を確かめる。<br><strong>記録を使うことと、判断を引き継ぐことが、仕事の流れに入っているか。</strong></p>
</div>

<blockquote>Storey, <a href="https://arxiv.org/abs/2603.22106v4">Triple Debt Model</a>, 2026；Brown, Taming Your Dragon, Ch. 8・11。</blockquote>

---

## 実装を任せても、学ぶ機会を設計できる

<div class="small">
<p>実装は、曖昧な仕様や予想外の依存に出会い、考えを修正する場でもある。<br>生成結果の説明を受け取り、納得したところで終えると、その修正を経験する機会は抜ける。</p>
<div class="flow"><strong>影響を予測する</strong><span>→</span><strong>結果と照合する</strong><span>→</span><strong>理解を更新する</strong></div>
<p>変更前に、何が変わり、何は変わらないはずかを考える。<br>エージェントに反例や調査を手伝ってもらい、実際の動作と比べ、予測が外れた理由を説明し直す。</p>
<p><strong>認知的負債への対処では、説明に納得できたかに加えて、条件が変わっても判断できるかを見たい。</strong><br>全部を覚える必要はない。必要な根拠へたどり着き、他の人と確かめ合えることを目指す。</p>
<p>実装を任せて得た余地を、こうした試行と対話にも使う。<br>学習を偶然の副産物にせず、エージェントとの仕事の進め方へ組み込める。</p>
</div>

<blockquote>Storey, <a href="https://margaretstorey.com/blog/2026/02/09/cognitive-debt/">How Generative and Agentic AI Shift Concern from Technical Debt to Cognitive Debt</a>, 2026。</blockquote>

---

## 実装や業務の外からも、学び続ける

<div class="small">
<p>与えられた目的をうまく実現する学習に加えて、<strong>何を良いとするかを問い直す学習</strong>も要る。<br>今の仕事が置いた目的や評価だけを前提にしていると、その前提から外れた不便や負担を見落としやすい。</p>

| 学びの入口 | 今の仕事を問い直す視点 |
|---|---|
| 歴史・科学・哲学など、専門の外を読む | 当たり前の前提にも、成り立った事情や別の説明がある |
| 別の仕事や立場の人と話す | 同じ「便利」「効率的」でも、得るものと負担が違う |
| 暮らしや趣味で観察し、試す | 説明の上では見えなかった不便や、予想とのずれがある |

<p><strong>すぐ業務に役立つかで、学びの入口を狭めたくない。</strong><br>違う視点に触れることで、残された意図を引き継ぐだけでなく、今も妥当かを問い直せる。</p>
<p>人が学び続けることを、実装や日々の業務から自然に得られる経験だけに頼らない。<br>読む・話す・振り返る機会を、個人の余暇だけに任せず、開発の計画にも含めたい。</p>
</div>

---

## 任せる単位を、判断と検証の範囲から考える

<div class="small">
<p>広い範囲の修正でも、個々の判断に必要な情報が限定され、結果を確かめられれば、分担を検討できる。<br>どの修正にも全体の事情が必要なら、ファイルを分けても、同じ調査と調整を繰り返す。</p>
<img width="1100" src="../../assets/images/2026/technical-debt-in-the-ai-era/delegation-boundary.svg" alt="ファイルだけを分割すると各担当が同じ全体判断へ戻る。目的と共通条件を揃え、変更対象・必要な根拠・評価をまとめた単位なら、範囲内で判断と検証を進められる。組み合わせた影響は統合時に確かめる。">
<p><strong>「何箇所直すか」に加えて、「採用するのに何を知り、何を確かめるか」。</strong><br>判断に必要な根拠、変更範囲、評価を対応づける。前提の変更や範囲外への影響は、共通の判断へ戻す。</p>
</div>

<blockquote>Chris Ford, Agentic Engineering at Scale, Ch. 1・3。</blockquote>

---

## 判断と検証を、実装につなぐ

<div class="small">
<p>人が毎回すべてを読み直し、判断し直す進め方では、生成を増やすほど確認が積み上がる。<br><strong>繰り返し使える判断を記録と検査へ移し、前提が変わったときに見直せる仕組みを作る。</strong></p>

| 対処する負債 | 仕組みへ組み込むこと |
|---|---|
| 意図の負債 | 生成前に目的・制約・理由を参照し、採用後も次の変更へ引き継ぐ |
| 認知的負債 | 記録や構造の図を使って影響を予測し、結果とのずれから共有理解を更新する |
| 技術的負債 | 変更を妨げる依存を検査し、境界の見直しを修繕・再生成へ反映する |

<p>実行と検証の仕組み、判断を伝える仕様、人が学ぶ機会、構造を共有する図を、この関係に沿って組み合わせる。<br><strong>何を任せ、何を確かめ、どの条件で誰の判断へ戻すかを、一続きの開発として設計したい。</strong></p>
</div>

---

## 生成の反復を、開発全体の判断へ戻す

<div class="small">
<img width="1100" src="../../assets/images/2026/technical-debt-in-the-ai-era/agent-judgment-loops.svg" alt="目的と条件を決め、範囲を定め、実装と検証を反復し、採用して運用する。エージェントは各工程を支援する。チームが判断の権限と採用条件を定め、運用の結果からそれらを見直す。">
<p>エージェントは、実装だけでなく、調査・計画・レビュー・運用の分析にも使える。<br><strong>変わるのは担当する工程の線引きより、判断をどう渡し、何を根拠に結果を引き受けるか。</strong></p>
<p>目的を決める、範囲を示す、結果を検証する、採用後まで責任を持つ。<br>各工程を任せても、このつながりはチームの仕事として残る。前提や影響範囲が変われば、判断へ戻す。</p>
</div>

---

## 任せる仕組みが、判断を繰り返し適用する

<div class="small">
<p><strong>Harness（エージェントの実行を支える仕組み）</strong>は、情報・ツール・状態・制限・検証をつなぐ。<br>モデルが次の操作を選ぶための材料と、選んだ操作を実行できる範囲を用意する。</p>
<img width="1100" src="../../assets/images/2026/technical-debt-in-the-ai-era/agent-execution-environment.svg" alt="目的・根拠・現在の状態をエージェントへ渡す。エージェントが選んだ操作を権限と実行環境で制限し、許可された範囲で実行する。検査結果とログを、修正するか判断を戻すための情報として返す。">
<p><strong>「触らないで」と書くことと、触れない権限にすることは違う。</strong><br>説明は判断を助け、権限は操作を制限し、検査は結果を確かめる。それぞれの役割を混ぜない。</p>
<p>入力・操作・失敗を記録し、再現結果から、モデルと実行環境の不足を見分ける。</p>
</div>

---

## 決めなかったことは、生成結果に埋まる

<div class="small">
<p>仕様が曖昧でも、エージェントは何らかの実装を作れる。<br>空白は空白のまま残らず、選ばれた動作や構造として現れる。</p>
<p>採用の段階で違いに気づけば、レビューが仕様を決める場になる。<br>仕様を書く仕事は、決まった内容の清書に加えて、まだ決めていないことを見つける仕事でもある。</p>

| 生成前に揃えること | 次に進むための判断 |
|---|---|
| 目的・受け入れる結果 | 誰の何が変われば、この変更には価値があるか |
| 維持する動作・変更の境界 | 何を壊さず、どこまで変えてよいか |
| 未確認の条件 | 調査や小さな試作で何を確かめ、誰が決めるか |

<p><strong>未決のことを、エージェントの推測で決定済みにしない。</strong><br>全部を先に確定する必要はない。未決の範囲と、判断材料を得る方法を渡す。</p>
</div>

---

## 仕様は、一枚の文章で完結しない

<div>
<p>意図を実装へ伝えるには、違う種類の記述を組み合わせる。<br>一つの表現ですべてを詳しく書くより、それぞれが何を制約するかを明確にする。</p>

| 表現 | 明確にすること | 単独では残る不足 |
|---|---|---|
| 文章・判断記録 | 目的、制約の理由、優先順位 | 解釈や境界条件の曖昧さ |
| 型・スキーマ・状態モデル | データの形、可能な状態と遷移 | その動作を必要とする理由 |
| 具体例・実行できる評価 | 期待する結果、守るべき性質 | 未確認の条件、評価に含めなかった動作 |

<p><strong>重なり合う記述で、許容する実装の範囲を絞る。</strong><br>食い違いが見つかったら、生成側の都合で解消せず、判断が必要な箇所として扱う。</p>
</div>

---

## 毎回選び直さなくてよい判断を残す

<div class="small">
<p>生成のたびに設計を選び直すと、変えたかった箇所以外まで揺れ動く。</p>
<img width="1100" src="../../assets/images/2026/technical-debt-in-the-ai-era/design-policy-and-discretion.svg" alt="データの所有・通信・副作用などの設計方針を共有し、その条件を満たす範囲で複数の実装案を選べるようにする。条件が変わったら、理由と影響を確認して設計方針と裁量を見直す。">
<p><strong>固定するのは、他の判断や動作が依存する選択。</strong>細部まで固定すれば、改善の余地も狭まる。<br>設計の条件が変わったら、理由と影響を確認して、任せる裁量ごと見直す。</p>
<p>実装で判明した条件は、方針にも戻す。コードだけを直すと、次の生成は古い理由から始まる。<br><strong>誰が更新するかを決め、生成を方向づけた判断を、次の変更にも使う。</strong></p>
</div>

---

## 整合しているだけでは、正しいと決まらない

<div class="small">
<p>同じ未確認の前提から仕様・実装・テストを生成すると、<br>成果物同士は整合していても、必要な動作からは外れていることがある。</p>
<img width="1100" src="../../assets/images/2026/technical-debt-in-the-ai-era/independent-evaluation.svg" alt="同じ未確認の前提から生成した仕様・実装・テストが互いに整合する。ただし、前提の誤りも共有できる。業務上の条件・実際の利用・別に確かめた制約を、前提と評価の根拠として照合する。">
<p><strong>評価には、生成結果との整合とは別の根拠が要る。</strong><br>業務上の条件、利用の事実、独立に確認された制約と照合する。</p>
<p>モデルを変えても、同じ前提を渡せば誤りは残りうる。<strong>何を根拠に評価したかを見たい。</strong></p>
</div>

---

## 自律性を、確かめられる範囲に合わせる

<div class="small">
<p>自律性は、<strong>そのタスクの影響、結果の確かめやすさ、停止・復旧の手段</strong>から決める。</p>
<img width="1100" src="../../assets/images/2026/technical-debt-in-the-ai-era/verified-autonomy.svg" alt="影響範囲、観測と評価、停止と復旧をタスクごとに確かめ、任せる操作と範囲を定める。条件内では進め、未知の影響や評価の不足があれば判断へ戻す。必要な手段を整えて任せる範囲を見直す。">
<p>大きな機械的変更でも、影響が限定され評価と復旧が明確なら、広く任せる余地がある。<br>小さな変更でも、利用者への影響が不明なら、先に調査や判断が要る。</p>
<p>承認を担う人へ、根拠・確認する時間・変更や停止を指示する権限を渡す。<br><strong>自律性を広げる前に、確かめて引き受ける力を広げる。</strong></p>
</div>

---

## 任せる範囲と、仕事の分け方を別々に設計する

<div class="small">
<p>一つの仕事をどこまで人へ戻さず進めるかと、複数の仕事をどう分担・統合するかは、別に決める。</p>
<img width="1100" src="../../assets/images/2026/technical-debt-in-the-ai-era/autonomy-and-orchestration.svg" alt="左は一つの仕事で調査・修正・検証まで任せ、採用を判断へ戻す例。右は共通の前提から二つの仕事を分担し、結果を統合・評価する流れ。任せる裁量と、仕事の分担・依存・統合を別々に設計する。">
<p><strong>複数へ配っても、各仕事の裁量は狭くできる。</strong>一つのエージェントに広く任せることもできる。<br>分担するときは、共通の前提と変更箇所の重なりを確認し、組み合わせた結果まで確かめる。</p>
<p>共通の前提が未決なら、実装を並行させても、採用時に同じ判断を待つ。<br><strong>担当を増やす前に、判断・変更・検証をどこまで分けられるかを確かめる。</strong></p>
</div>

---

## 知識は、経験と記録を行き来して育つ

<div class="small">
<p><strong>SECIモデル</strong>は、経験に根ざす暗黙知と、言葉や図で共有できる形式知の相互作用を捉える。</p>
<img width="1100" src="../../assets/images/2026/technical-debt-in-the-ai-era/seci-learning-cycle.svg" alt="共同化・表出化・連結化・内面化という人が学ぶ循環の中央にエージェントを置く。問い、記録の草案、情報の関連づけ、試行と検証の補助を各過程へ提供する。">
<p>エージェントを、対話での問いかけ、図や文章の草案、記録の関連づけ、検証の補助に使う。<br><strong>人が経験の意味を確かめ、試して判断を更新する循環へ組み込む。</strong></p>
</div>

<blockquote>SECIモデル：Ikujiro Nonaka, <a href="https://doi.org/10.1287/orsc.5.1.14">A Dynamic Theory of Organizational Knowledge Creation</a>, 1994。</blockquote>

---

## 知識を残す場所と、今渡す情報を分ける

<div class="small">
<p><strong>Context Engineering</strong>では、現在の作業に必要な仕様・根拠・状態を選んで渡す。<br>記録を全部詰め込むと、古い指示や無関係な調査も、今の判断と競合する。</p>
<img width="1100" src="../../assets/images/2026/technical-debt-in-the-ai-era/context-selection.svg" alt="維持する知識から、今回の目的と変更対象に応じて必要な根拠を選ぶ。不足は参照先へ戻って調べ、確かめた新しい条件を知識へ反映する。次の作業へは目的・進捗・未決事項・参照先を引き継ぐ。">
<p>要約には、目的・進んだこと・未決事項・根拠への参照を残す。<br>要約された説明と、実際に確かめた結果を混同せず、不足は元の資料や実装へ戻って調べる。</p>
<p><strong>意図の負債には、使える記録。認知的負債には、その記録を使って確かめる経験。</strong></p>
</div>

---

## C4で、同じ対象について話せるようにする

<div class="columns small">
<div>
<img width="510" src="../../assets/images/2026/value-flow-across-roles/c4-static-structure.png" alt="C4の静的構造図の概観。システムコンテキストから、コンテナ、コンポーネント、コードへと、対象の内部を段階的に詳しくする。">
<p><small>Static structure diagrams<br>構造の詳しさを段階的に変える</small></p>
</div>
<div>
<p>同じ「部品」という言葉でも、<br>アプリを指す人と、その中の処理を指す人がいる。<br>このずれは、変更の範囲の見積もりにも残る。</p>
<p><strong>C4は、構造を捉える共通の語彙を持ち、<br>4段階の詳しさで表すモデル。</strong></p>
<p>システム、アプリとデータストア、<br>内部の責務、コードへと近づく。</p>
<p><strong>先に揃えたいのは、箱の形より、<br>その箱が何を表しているかです。</strong></p>
</div>
</div>

<blockquote>画像：Simon Brown, <a href="https://c4model.com/diagrams">C4 model — Static structure diagrams</a>, <a href="https://creativecommons.org/licenses/by/4.0/">CC BY 4.0</a>。画像は改変なし。</blockquote>

---

## 誰への影響か、何への依存かを分ける

<div>

| 構造を見る段階 | 表す対象 | 変更の判断へつなげる問い |
|---|---|---|
| System Context | システム、利用者、外部システム | 誰の利用や外部連携に影響するか |
| Container | 内部のアプリ、データストア、通信 | どの動作・データ・接続に依存するか |
| Component / Code | アプリ内の責務のまとまりと、具体的な実装 | 影響が届く内部のどこを変えるか |

<p>処理の順序は動的図、環境ごとの配置は配置図で補う。<br>C4のContainerはアプリやデータストアを指し、Dockerのコンテナに限らない。</p>
<p><strong>4段階すべての作図より、今回の判断に必要な範囲を選ぶ。</strong><br>内部を詳しく描くことと、実行時の依存や切り替え方を調べることを使い分ける。</p>
</div>

<blockquote>Simon Brown, C4 model：<a href="https://c4model.com/diagrams/system-context">System Context</a> / <a href="https://c4model.com/diagrams/container">Container</a> / <a href="https://c4model.com/diagrams/dynamic">Dynamic</a> / <a href="https://c4model.com/diagrams/deployment">Deployment</a>。</blockquote>

---

## 図を増やす前に、構造の定義を共有する

<div class="small">
<img width="1100" src="../../assets/images/2026/technical-debt-in-the-ai-era/c4-model-views.svg" alt="A・B・Cとその依存を一度定義した構造モデルから、全体を説明する図と、B・Cに絞った変更検討用の図を取り出す。同じ対象を各図で定義し直さない。">
<p>別々の図へ箱をコピーすると、名称や接続を変えるたびに、すべての図を直す必要がある。<br><strong>対象の種類・責務・関係を一度定義し、その一部を図として表示する。</strong></p>
<p>エージェントへも、今回の対象と依存先の定義、対応する実装を渡せる。<br>画像から関係を推測させる負担を減らし、全体への参照も残しておく。</p>
</div>

---

## 図の境界を、実装で確かめられるようにする

<div class="small">
<p>図に「コンポーネント」と書いても、コードに同じ境界が存在するとは限らない。</p>
<img width="1100" src="../../assets/images/2026/technical-debt-in-the-ai-era/model-code-verification.svg" alt="構造モデルのAとBを、コード・設定・実行時のAとBへ対応づける。実装側で図にないCへの依存が見つかったら、その関係を確認し、現状のモデルと変更する設計を分けて更新する。">
<p>名前・責務・対応する実装を揃え、コード・設定・実行結果と照合する。<br>図にない関係も調べ、現状の構造と採用したい構造を分けて、変更の影響を予測する。</p>
<p><strong>現状から生成した図を、そのまま次の実装の設計にしない。</strong><br>残す境界と変える境界を判断し、検査へつなぐ。共有する構造は、実装の変更と一緒に更新する。</p>
</div>

---

## 構造・理由・評価を、同じ対象へ結びつける

<div class="small">
<p>構造モデルだけでは、その構造を選んだ理由や、今も必要かどうかまでは決まらない。</p>
<img width="1100" src="../../assets/images/2026/technical-debt-in-the-ai-era/structure-reason-evaluation.svg" alt="構造モデル、設計判断の記録、受け入れ評価を、同じ対象Bと対応する実装へ結びつける。対象から依存先・選択理由・採用条件をたどり、変更の影響と必要性を判断する。">
<p>構造を使って影響を確かめることは、認知的負債に働きかける。選択理由の維持は、意図の負債に効く。<br>評価で不要な依存を見つけて実装を直し、技術的負債へ対処する。</p>
<p><strong>構造を説明する知識を、構造を選び直す判断にも使う。</strong><br>境界を守る検査や権限までつなぎ、誰がその方針を見直すかも明確にする。</p>
</div>

---

## 変更し続けられるアーキテクチャを育てる

<div class="small">
<p>エージェントを、決めた構造を作るためにも、構造を選び直す調査・試作・検証にも使う。</p>
<img width="1100" src="../../assets/images/2026/technical-debt-in-the-ai-era/evolution-enablers.svg" alt="変更の候補を作り、検証と利用・運用の結果を確かめる。予測とのずれから理解と意図を更新し、境界・評価・情報・任せる範囲を見直して、次の変更へ進む。エージェントは各過程を支援する。">
<p>実装だけを更新しても、影響の読み方や採用理由が古いままなら、次の変更で調べ直す。<br>予測と結果のずれから、実装・共有理解・意図を更新し、評価や任せる範囲にも戻す。</p>
<p><strong>一回の変更を終えるたび、次の変更を進める条件も育つようにしたい。</strong></p>
</div>

---

## 進化とは、構造を選び直し続けられること

<div class="columns small">
<div>
<img width="510" src="../../assets/images/2026/technical-debt-in-the-ai-era/evolutionary-architecture-figure-1-2.png" alt="要求の変化と並行して、監査可能性、性能、セキュリティ、データ、法的要件、拡張性をフィットネス関数で確かめ続ける、進化的アーキテクチャの図。">
<p><small>Figure 1-2 より引用<br>時間の経過とともに、複数の性質を守る</small></p>
</div>
<div>
<p><strong>守る性質を確かめながら、<br>小さな単位で構造を変えていく。</strong><br>進化は、技術・データ・運用にまたがる。</p>
<p>図では、業務上の要求と並行して、<br>性能や安全性などの性質を確かめ続ける。<br>この評価をフィットネス関数と呼ぶ。</p>
<p>要求のたびに特別扱いを足すだけでは、<br>次の変更で引き受ける制約も増えていく。</p>
<p><strong>重要な性質を維持できるなら、<br>最初に選んだ構造からも離れられる。</strong><br>その選び直しを、繰り返せるようにしたい。</p>
</div>
</div>

<blockquote>Neal Ford, Rebecca Parsons, Patrick Kua, Pramod Sadalage, <a href="https://www.oreilly.com/library/view/building-evolutionary-architectures/9781492097532/">Building Evolutionary Architectures, 2nd Edition</a>, O'Reilly, 2022, Figure 1-2。原図は改変なし。</blockquote>

---

## コードを整えても、境界のずれは残る

<div class="columns small">
<div>
<img width="510" src="../../assets/images/2026/technical-debt-in-the-ai-era/balancing-coupling-figure-8-2.jpg" alt="一緒に変更する部品の距離が、文、メソッド、オブジェクト、ライブラリ、サービス、システムへと広がるほど、変更を調整する負担が増える概念図。実測した比例関係ではない。">
<p><small>Figure 8.2 より引用<br>一緒に変える部品の距離と、調整の負担</small></p>
</div>
<div>
<p>図は、<strong>一緒に変える必要がある部品</strong>が<br>離れると、調整が増える関係を表す。<br>実測値から得た比例式ではない。</p>
<p>業務ルールが頻繁に変わるようになり、<br>担当チームも分かれれば、コードが同じでも<br>以前の境界が合わなくなることがある。</p>
<p><strong>連動するルールは近くへ集め、<br>別々に変わる部分には内部の前提を広げない。</strong><br>例外処理を足すだけで終わらせない。</p>
<p>エージェントによる調査や試作を、<br>責務の移動を検討するためにも使いたい。<br><strong>古い境界を固定すれば、変更しにくさの<br>原因も引き継いでしまう。</strong></p>
</div>
</div>

<blockquote>Vlad Khononov, <a href="https://www.pearson.com/en-us/subject-catalog/p/balancing-coupling-in-software-design-successful-software-architecture-in-general-and-distributed-systems/P200000000372">Balancing Coupling in Software Design</a>, Addison-Wesley Professional, 2024, Figure 8.2。原図は改変なし。変化に応じた境界の見直しは第11章も参照。</blockquote>

---

## 設計の単位を、変更の波及で見る

<div class="small">
<img width="1100" src="../../assets/images/2026/technical-debt-in-the-ai-era/change-coupling.svg" alt="別サービスでも共有スキーマの変更で一緒に更新する必要がある構造と、責務ごとにデータを含めて境界を見る構造の比較。">
<p><strong>独立して配置できる、責務のまとまり</strong>を捉える。<br>動作に必要なデータや実行環境も含め、同期する通信による結びつきも見る。</p>
<p><strong>一緒に配る必要がある範囲と、一緒に動かなければ成立しない範囲を調べる。</strong><br>右側の構造でも、通信や整合性の依存によって、全体で確かめる仕事は残る。</p>
<p>C4の箱の数から、独立した変更の単位を決めない。<br>同じ業務ルールを別の場所で実装していれば、直接の通信がなくても変更は連動する。</p>
</div>

---

## 境界に、評価と切り替えを対応づける

<div>
<div class="flow"><strong>依存の境界</strong><span>＋</span><strong>評価の範囲</strong><span>＋</span><strong>切り替えの範囲</strong></div>
<p>入出力を分けても、正しさを全体でしか確かめられなければ、<br>独立した変更には、全体を評価する仕事が残る。</p>
<p>評価できても、データや外部への影響を分けて扱えなければ、<br>実装だけを戻しても元の状態へ復旧できないことがある。</p>
<p><strong>この三つが揃う範囲を、エージェントへ任せる範囲にも反映する。</strong><br>広い依存を支える部分ほど、統合時の評価・移行・観測の時間を確保する。</p>
</div>

---

## 設計の方針を、毎回確かめる条件にする

<div class="small">
<p><strong>フィットネス関数</strong>は、重要なアーキテクチャの性質を客観的に確かめる仕組み。<br>業務上の結果を確かめるテストと合わせて、構造や運用上の性質を評価する。</p>
<img width="1100" src="../../assets/images/2026/technical-debt-in-the-ai-era/architecture-fitness-check.svg" alt="C4で示す依存の境界と判断理由を、各変更で実行する依存検査へつなぐ。結果から候補を修正するか採用するかを決める。方針自体を変える場合は理由を確かめ、検査条件も更新する。">
<p>応答性能なら、想定する負荷で遅延を測る。障害からの回復なら、影響範囲と復旧時間を確かめる。<br>重要な性質に応じて、変更時・統合後・運用中のどこで評価するかを決める。</p>
<p><strong>C4で示し、ADRで理由を残した方針を、変更のたびに働く検査へつなぐ。</strong></p>
</div>

---

## 一つの改善が、別の性質を壊すことがある

<div class="small">
<p>応答を速くするためのキャッシュが、古い権限情報を使う時間を延ばすことがある。</p>
<img width="1100" src="../../assets/images/2026/technical-debt-in-the-ai-era/quality-tradeoffs.svg" alt="キャッシュの追加が、応答の短縮と、権限情報の反映の遅れを同時に生む可能性を示す。性能だけで採用せず、情報の鮮度とアクセス制御も一緒に確かめる。">
<p>個々の性質に加えて、<strong>重要な性質が一緒に成立するか</strong>を確かめる。<br>単独の検査は変更の近くで実行し、組み合わせや実際の負荷は統合後・運用中にも見る。</p>
<p>守る条件が衝突したら、何を優先するかを判断する。優先順位を変えるなら、評価も更新する。<br><strong>実装を直す判断と、何を合格とするかを変える判断を区別する。</strong></p>
</div>

---

## 作れる候補を、実際に選べる候補へつなぐ

<div class="small">
<img width="1100" src="../../assets/images/2026/technical-debt-in-the-ai-era/evolution-feedback.svg" alt="目的と品質条件から、設計の候補、実装と評価、採用と移行、運用での観測へ進む。検証で不適合なら候補を修正し、運用で前提のずれを見つけたら目的や条件の判断へ戻す。">
<p>試作・修正と自動評価をつなげれば、<strong>以前なら費用で諦めた構造も比較に残せる。</strong></p>
<p>設計方針から検査を作る仕事にもAIを使い、その結果を修正へ返せる。<br>生成した検査が違反を見逃さないかは、既知の違反を検出できるかで確かめる。</p>
<p><strong>変わるのは、構造を選び直す費用と、その判断をできる頻度。</strong><br>候補数だけを増やさず、評価と移行まで扱える範囲から、実際に選べる構造を増やしたい。</p>
</div>

---

## 修繕と再生成を、変更の選択肢として比べる

<div class="small">

| 選択 | 活かせるもの | 比較する費用 |
|---|---|---|
| 既存の実装を修繕する | 確認済みの動作、変更しない部分 | 調査・差分の修正・検証・移行・その後の保守 |
| 必要な範囲を再生成する | 実装を越えて使える仕様・設計・評価 | 知識の抽出・生成・検証・移行・その後の保守 |

<p>生成が省力化されれば、修繕より再生成が有利な範囲は広がりうる。<br><strong>旧実装を廃止できれば、その内部だけに残る重複や複雑な分岐は、直さずに終えられる。</strong></p>
<p>ただし、外部の利用やデータへの依存、判断理由の不足は、コードを替えるだけでは解消しない。<br>実装の生成費用に加えて、評価・移行・知識の維持まで比べる。</p>
<p><strong>再生成できることは、毎回再生成する理由にはならない。</strong><br>変更を妨げる条件と、次に必要な動作から、方法を選びたい。</p>
</div>

---

## 実装を置き換えながら、システムを続ける

<div class="small">
<img width="1100" src="../../assets/images/2026/technical-debt-in-the-ai-era/replaceable-implementation.svg" alt="変更理由、入出力の境界、受け入れ評価、採用した版の記録を残し、内部の実装Aを実装Bへ差し替える図。">
<p>再生成の考え方で評価したいのは、<strong>維持する知識と、変更するコードの寿命を分ける</strong>点です。<br>必要な振る舞いを実装の外でも説明・検証できれば、今の構造を維持する以外の案を選びやすくなる。</p>
<p>コードにしか残っていない条件は、実際の利用や動作と照合して取り出す。<br>理由と評価を維持する投資は、今の実装を直す仕事にも、別の実装へ置き換える仕事にも使える。</p>
</div>

---

## 実装が変わっても、意味のある評価を持つ

<div class="small">
<p>内部の構造を確かめるテストと、別の実装にも要求する動作の評価を分ける。</p>
<img width="1100" src="../../assets/images/2026/technical-debt-in-the-ai-era/implementation-independent-evaluation.svg" alt="内部の部品構成が異なる実装AとBを、同じ入出力・状態変化・失敗時の動作の評価で比較する。実装固有の検査はそれぞれに用意し、維持する振る舞いの評価を引き継ぐ。">
<p><strong>「このコードのテスト」から、「次のコードも満たす評価」へ。</strong><br>同じ意味の基準で候補を比べ、性能やアクセスの条件、以前の失敗から学んだ条件も引き継ぐ。</p>
<p>実装固有の検査は、その構造に合わせて直す。<br><strong>候補に合わせて期待値を動かさず、評価を変える場合は、その理由を確かめる。</strong></p>
</div>

---

## 判断が変わった箇所から、影響をたどる

<div class="small">
<p>目的、採用した設計、実装の版、確かめた結果を対応づける。<br>変更が起きたら、どの前提が変わり、何を再確認する必要があるかを、この記録から調べる。</p>
<div class="flow"><strong>変わった理由</strong><span>→</span><strong>依存する設計と実装</strong><span>→</span><strong>再確認する評価</strong></div>
<p>エージェントに影響する候補を調べてもらい、実際の依存と照合して変更範囲を決める。<br><strong>差分の説明を後付けするより前に、何の判断から必要になった差分かを追いたい。</strong></p>
<p>一つの理由が複数の実装へ影響することも、一つの実装が複数の制約を満たすこともある。<br>記録のつながりを、そのまま正確な変更範囲とみなさず、データ・実行時の依存も確かめる。</p>
<p><strong>全自動の再生成まで進めなくても、理由探しと影響調査を、途中から再開できるようにする価値がある。</strong><br>変わらない根拠は使い直し、変わった前提に調査を集中させる。</p>
</div>

---

## 実装は丸ごと替えても、移行は段階に分ける

<div class="small">
<img width="1100" src="../../assets/images/2026/technical-debt-in-the-ai-era/incremental-replacement.svg" alt="新旧が共存できる形を作り、利用とデータを段階的に移し、旧経路を廃止する。各段階で観測と復旧可能性を確かめる。">
<p>内部の実装を生成し直すことと、すべての利用者を一度に切り替えることは別。<br>データ構造の変更も、コードと一緒に版を管理し、評価し、段階的に適用する。</p>
<p><strong>生成したコードを戻せても、更新したデータや外部への作用は戻るとは限らない。</strong><br>切り替えの範囲を絞り、観測と復旧を用意することが、次の案を試す余地になる。</p>
<p>交換を繰り返すために、再生成の速さを利用者へ届ける経路まで設計したい。</p>
</div>

---

## 変更の境界に、判断できるチームを対応づける

<div class="columns">
<div>
<img width="510" src="../../assets/images/2026/am-1-4-independent-value-stream.png" alt="独立したバリューストリーム。業務領域との対応、判断できるチーム、事業の成果、独立して変更できるソフトウェアの四つの条件。">
<p><small>Figure 1.4 Independent value stream より引用</small></p>
</div>
<div>
<p><strong>担当する業務、目指す成果、<br>判断の権限、ソフトウェアの境界。</strong><br>この四つを揃える。</p>
<p>実装を並行して進めても、<br>目的や採用の判断が別の場所で滞れば、<br>利用者へ届くまでの待ちは残る。</p>
<p>意図を決め、生成し、<br>利用後の結果まで確かめる。<br><strong>この範囲をチームの仕事にする。</strong></p>
</div>
</div>

<blockquote>Nick Tune with Jean-Georges Perrin, <a href="https://www.manning.com/books/architecture-modernization">Architecture Modernization</a>, Manning, 2024, Figure 1.4.</blockquote>

---

## 失敗を直し、次の実行の条件も直す

<div class="small">
<img width="1100" src="../../assets/images/2026/technical-debt-in-the-ai-era/learning-from-execution.svg" alt="実行・検証・運用で見つけた不一致を、期待した条件と実際の記録から調べる。成果物を修正する経路と、情報・指示・権限・評価を修正する経路に分け、再実行で改善を確かめる。">
<p>不具合を直しても、同じ情報不足や評価の抜けが残れば、次の実行でも繰り返しうる。<br><strong>出力の修正と、出力を生んだ条件の修正を、別々に考える。</strong></p>
<p>意図の負債には、抜けた理由や適用条件を戻す。技術的負債には、不要な依存を直し、検査へつなぐ。<br>人も予測と結果のずれを説明し直し、共有理解を更新することで、認知的負債へ対処する。</p>
<p>失敗のたびに指示を積み増すだけにはしない。必要な場所へ対策を置き、再実行で効いたかを確かめる。</p>
</div>

---

## 役目を終えた仕組みを、維持し続けない

<div class="small">
<img width="1100" src="../../assets/images/2026/technical-debt-in-the-ai-era/deletion-compaction.svg" alt="新旧の実装と互換処理がある状態から、旧実装を廃止し、残った移行用の仕組みも整理して維持する対象を減らす。">
<p>利用者・データ・運用への依存を確認して旧実装を廃止し、不要になった移行経路や設定も整理する。<br>実行環境でも、重複した指示、使わないツール、古い前提を引き継ぎ続けない。</p>
<p><strong>判断の履歴はたどれるように残し、今の作業に適用する条件は絞る。</strong><br>生成しやすくなるほど、実装・文書・ルールを増やすだけでなく、維持する対象を減らす仕事も要る。</p>
</div>

---

## 開発を支える仕組みにも、維持費がある

<div class="small">
<p>境界・評価・判断理由・エージェントへ渡す情報は、業務や依存の変化に合わせて更新が要る。</p>
<img width="1100" src="../../assets/images/2026/technical-debt-in-the-ai-era/engineering-maintenance-cost.svg" alt="一つの仕事で仕組みを使い、次の変更で省けた調査や調整と、更新・保守・整理の費用を比べる。効果に応じて維持・改善・拡大・簡素化を選び、適用する範囲を見直す。">
<p>変更が続く場所では、将来省ける調査や調整と比べて投資を検討できる。<br>変更が少なく影響も小さい場所では、維持費が便益を上回ることもある。</p>
<p><strong>変更頻度、失敗時の影響、評価を維持する費用を合わせて比べる。</strong><br>すべてに同じ仕組みを入れず、必要な検証と復旧を保ちながら、負担に見合う形を選ぶ。</p>
</div>

---

## 負債は、意思決定から再生産される

<div class="small">
<p>生成を速めた側の成果だけを評価し、理解・検証・運用にかかる負担を<br>別の担当者へ渡せるなら、全体の負担を減らす判断は選ばれにくい。</p>
<img width="1100" src="../../assets/images/2026/technical-debt-in-the-ai-era/debt-reproduction-loop.svg" alt="生成量で成果を測り、完成を優先して確認や記録を後へ送る。再調査・検証・運用の負担が別の担当へ移り、全体の費用が見えなければ、同じ判断が次の仕事でも評価される。">
<p>局所的には合理的な選択でも、共有理解や理由の記録が不足すれば、後の仕事が調査をやり直す。<br><strong>実装の完成と、変更を引き継げる状態を、同じ計画の中で扱う。</strong></p>
<p>確認・記録・学習の時間も計画に含め、誰の負担が成果の計算から抜けているかを見る。</p>
</div>

<blockquote>Brown, <a href="https://doi.org/10.1007/979-8-8688-0264-5">Taming Your Dragon</a>, 2024, Ch. 1・11。</blockquote>

---

## 技術的負債を、変更を妨げる関係から捉え直す

<div class="small">
<img width="1100" src="../../assets/images/2026/technical-debt-in-the-ai-era/debt-to-engineering.svg" alt="変更を妨げる実装の依存には境界と評価、共有理解の不足には根拠を使う試行と対話、意図の記録の不足には目的・理由・適用条件の維持を対応づける。対処の結果を次の変更で確かめる。">
<p>理解や判断の問題は、AI以前からあった。<br>エージェントへ任せる範囲が広がると、実装・共有理解・意図が、別々の速さで更新される。</p>
<p><strong>終わらせたいのは、実装ができた後に、その負担だけを引き受け続ける進め方です。</strong><br>同時変更、理解のずれによる再調査、理由探しは減ったか。別の人へ負担が移っていないか。</p>
<p>何を生成したかに加えて、<strong>次の変更で、何をやり直さずに済んだか</strong>を確かめたい。</p>
</div>

---

## 次の変更に、判断と学習を引き継ぐ

<div class="small">
<img width="1100" src="../../assets/images/2026/technical-debt-in-the-ai-era/engineering-continuity.svg" alt="一回目の変更で得た判断理由・評価・共有理解を、次の変更の出発点にする。さらにその次にも運用の学びを引き継ぎ、目的・設計・任せる範囲を選び直す。">
<p><strong>何を任せ、何を確かめ、何を学んで次へ渡すか。</strong><br>そのつながりを設計する仕事として、エージェント時代のエンジニアリングを考えたい。</p>
<p><strong>守る性質を確かめながら、構造と開発の進め方を選び直す。</strong><br>試作・評価・運用から学ぶ反復をつなげれば、真に進化的なアーキテクチャを実現できる範囲は広がる。<br>その可能性に、かなり期待しています。</p>
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

### 学んだことを残し、実装を次へつなぐ

</div>

<div class="author-info">
@nwiizo<br>
株式会社スリーシェイク
</div>

---

## 参考文献 · 負債と人の判断

<div>
<div>
<a href="https://doi.org/10.1007/979-8-8688-0264-5">Taming Your Dragon: Addressing Your Technical Debt</a>
<p>Andrew Richard Brown · Apress · 2024<br>第1・8・11章、Figure 1-1・8-5。判断の背景、共有理解とその記録。</p>
</div>
<div>
<a href="https://c2.com/doc/oopsla92.html">The WyCash Portfolio Management System</a>
<p>Ward Cunningham · OOPSLA '92 · 1992<br>技術的負債の比喩を述べた原文。</p>
</div>
<div>
<a href="https://www.manning.com/books/architecture-modernization">Architecture Modernization</a>
<p>Nick Tune with Jean-Georges Perrin · Manning · 2024<br>Figure 1.4。担当する業務・成果・権限・ソフトウェアの境界を揃える。</p>
</div>
</div>

---

## 参考文献 · エージェントと再生成

<div>
<div>
<a href="https://www.oreilly.com/library/view/agentic-engineering-at/0642572344306/">Agentic Engineering at Scale</a>
<p>Chris Ford · O'Reilly</p>
</div>
<div>
<a href="https://www.oreilly.com/library/view/agentic-engineering/0642572392291/">Agentic Engineering</a>
<p>Addy Osmani · O'Reilly</p>
</div>
<div>
<a href="https://www.oreilly.com/library/view/regenerative-software/0642572383954/">Regenerative Software</a>
<p>Chad Fowler · O'Reilly</p>
</div>
</div>

---

## 参考文献 · 進化するアーキテクチャ

<div>
<p><a href="https://www.oreilly.com/library/view/building-evolutionary-architectures/9781492097532/">Building Evolutionary Architectures, 2nd Edition</a><br>Neal Ford, Rebecca Parsons, Patrick Kua, Pramod Sadalage<br>O'Reilly · 2022</p>
<p><a href="https://www.thoughtworks.com/en-gb/insights/podcasts/technology-podcasts/how-fitness-functions-help-govern-measure-ai">How fitness functions can help us govern and measure AI</a><br>Thoughtworks Technology Podcast<br>Rebecca Parsons, Neal Fordほか</p>
<p><a href="https://martinfowler.com/articles/harness-engineering.html">Harness engineering for coding agent users</a><br>Birgitta Böckeler · 2026</p>
</div>

---

## 参考文献 · 3つの負債の定義

<div>
<p><strong>Margaret-Anne Storey, 2026</strong><br><a href="https://arxiv.org/abs/2603.22106v4">From Technical Debt to Cognitive and Intent Debt:<br>Rethinking Software Health in the Age of AI</a><br>arXiv v4。Triple Debt Modelの提案。</p>
<p><strong>Paris Avgeriou et al., 2016</strong><br><a href="https://drops.dagstuhl.de/entities/document/10.4230/DagRep.6.4.110">Managing Technical Debt in Software Engineering</a><br>Dagstuhl Seminar 16162。技術的負債の作業上の定義。</p>
<p><strong>Martin Fowler, 2009</strong><br><a href="https://martinfowler.com/bliki/TechnicalDebtQuadrant.html">Technical Debt Quadrant</a><br>Deliberate / InadvertentとPrudent / Recklessの区別。</p>
</div>

---

## 参考文献 · 理解と意図を残す

<div>
<p><strong>Margaret-Anne Storey, 2026-02-09</strong><br><a href="https://margaretstorey.com/blog/2026/02/09/cognitive-debt/">How Generative and Agentic AI Shift Concern<br>from Technical Debt to Cognitive Debt</a></p>
<p><strong>Addy Osmani, 2026-08-14</strong><br><a href="https://www.oreilly.com/radar/the-intent-debt/">The Intent Debt</a> · O'Reilly Radar再掲版</p>
<p><strong>Simon Brown, C4 model</strong><br><a href="https://c4model.com/diagrams">Diagrams</a> / <a href="https://c4model.com/diagrams/notation">Notation</a> / <a href="https://c4model.com/diagrams/checklist">Review checklist</a><br>構造の詳しさ、図の意味、理解を確かめる観点。図版はCC BY 4.0。</p>
</div>

---

## 参考文献 · 構造と知識を育てる

<div>
<p><a href="https://www.oreilly.com/library/view/the-c4-model/9798341660113/">The C4 Model</a><br>Simon Brown · O'Reilly · 2026</p>
<p><a href="https://www.pearson.com/en-us/subject-catalog/p/balancing-coupling-in-software-design-successful-software-architecture-in-general-and-distributed-systems/P200000000372">Balancing Coupling in Software Design</a><br>Vlad Khononov · Addison-Wesley Professional · 2024</p>
<p><a href="https://doi.org/10.1287/orsc.5.1.14">A Dynamic Theory of Organizational Knowledge Creation</a><br>Ikujiro Nonaka · Organization Science 5(1), 14–37 · 1994<br>暗黙知と形式知の相互作用、個人から組織へ広がる知識創造。</p>
</div>
