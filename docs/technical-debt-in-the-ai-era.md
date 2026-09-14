# AI時代の「技術的負債」の変質 — 参考資料と図版

[スライド](../slides/2026/40min-technical-debt-in-the-ai-era.md) / [PDF](../slides/2026/40min-technical-debt-in-the-ai-era.pdf)

技術的負債・認知的負債・意図の負債から、エージェントへ任せる範囲と、判断・検証・学習をつなぐ開発を考える。修繕と再生成は、変更を妨げる条件と総費用から選ぶ方法として扱う。

## 参考にした書籍

| 書籍・参照箇所 | スライドで扱う論点 |
|---|---|
| Andrew Richard Brown, [Taming Your Dragon: Addressing Your Technical Debt](https://doi.org/10.1007/979-8-8688-0264-5), Apress, 2024。第1・8・11章 | 技術の背後にある判断・組織・利害。関係者の共有理解、設計判断の背景、他の仕事へ移る負担 |
| Addy Osmani, [Agentic Engineering](https://www.oreilly.com/library/view/agentic-engineering/0642572392291/), O’Reilly。第1–5章 | 目的と計画、範囲の指示、検証、採用後までの責任。自律性と分担、情報・権限・実行・観測、必要な情報の選択、未決事項を含む仕様 |
| Chris Ford, [Agentic Engineering at Scale](https://www.oreilly.com/library/view/agentic-engineering-at/0642572344306/), O’Reilly。第1–3章 | コード・記録・運用からの知識の抽出と照合。判断に必要な情報の範囲、複数の表現による仕様、実装が従う設計方針とその維持 |
| Chad Fowler, [Regenerative Software](https://www.oreilly.com/library/view/regenerative-software/0642572383954/), O’Reilly。第1–4章 | 知識とコードの寿命を分ける設計。実装を越えて使える評価、判断から成果物をたどる記録、移行・廃止・整理 |
| Neal Ford, Rebecca Parsons, Patrick Kua, Pramod Sadalage, [Building Evolutionary Architectures, 2nd Edition](https://www.oreilly.com/library/view/building-evolutionary-architectures/9781492097532/), O’Reilly, 2022。第1–7・9章の関連節 | 重要な性質を確かめながら進める段階的な変更。フィットネス関数、データと実行時の依存を含む変更単位、移行と復旧 |
| Simon Brown, [The C4 Model](https://www.oreilly.com/library/view/the-c4-model/9798341660113/), O’Reilly, 2026。第2・10–12章、各種図の説明 | 共通の抽象化、構造モデルと図の分離、実装との対応、判断記録や評価との補完 |
| Vlad Khononov, [Balancing Coupling in Software Design](https://www.pearson.com/en-us/subject-catalog/p/balancing-coupling-in-software-design-successful-software-architecture-in-general-and-distributed-systems/P200000000372), Addison-Wesley Professional, 2024。第1・7–11章の関連節 | 結合の強さ、調整の距離、前提の変わりやすさ。事業・組織の変化に応じた境界の見直し |
| Nick Tune with Jean-Georges Perrin, [Architecture Modernization](https://www.manning.com/books/architecture-modernization), Manning, 2024。Figure 1.4 | 業務領域、成果、判断の権限、ソフトウェアの境界を揃える |

## 定義と関連する論考

- Ward Cunningham, [The WyCash Portfolio Management System](https://c2.com/doc/oopsla92.html), 1992。
- Paris Avgeriou et al., [Managing Technical Debt in Software Engineering](https://drops.dagstuhl.de/entities/document/10.4230/DagRep.6.4.110), Dagstuhl Seminar 16162, 2016, p. 112。
- Martin Fowler, [Technical Debt Quadrant](https://martinfowler.com/bliki/TechnicalDebtQuadrant.html), 2009。
- Margaret-Anne Storey, [From Technical Debt to Cognitive and Intent Debt: Rethinking Software Health in the Age of AI](https://arxiv.org/abs/2603.22106v4), 2026, v4。Triple Debt Modelの提案。
- Margaret-Anne Storey, [How Generative and Agentic AI Shift Concern from Technical Debt to Cognitive Debt](https://margaretstorey.com/blog/2026/02/09/cognitive-debt/), 2026。
- Addy Osmani, [The Intent Debt](https://www.oreilly.com/radar/the-intent-debt/), O’Reilly Radar, 2026。
- Ikujiro Nonaka, [A Dynamic Theory of Organizational Knowledge Creation](https://doi.org/10.1287/orsc.5.1.14), Organization Science 5(1), 14–37, 1994。
- Simon Brown, [C4 model — Diagrams](https://c4model.com/diagrams)、[Notation](https://c4model.com/diagrams/notation)、[Review checklist](https://c4model.com/diagrams/checklist)。
- Birgitta Böckeler, [Harness engineering for coding agent users](https://martinfowler.com/articles/harness-engineering.html), 2026。
- Thoughtworks Technology Podcast, [How fitness functions can help us govern and measure AI](https://www.thoughtworks.com/en-gb/insights/podcasts/technology-podcasts/how-fitness-functions-help-govern-measure-ai)。

## 概念を接続する際の範囲

Taming Your Dragonには、認知的負債・意図の負債という定義の直接の記載はない。関係者の理解、判断した事情、知識を更新する議論を、技術的負債の背後に以前からあった問題として扱う。三つの負債を、互いに独立した金額として足し合わせない。

Agentic Engineeringの計画・指示・検証・責任は、工程を人とエージェントへ固定的に振り分ける分類として扱わない。エージェントは計画や運用の分析にも使える。何を任せ、何を根拠に採用し、どの条件で判断を戻すかを、タスクの影響・評価・復旧に合わせて設計する。

Regenerative Softwareから評価するのは、目的・設計・評価・判断理由を、特定の実装の寿命を越えて使えるようにする点。旧実装の廃止で、その内部だけに残る修繕を不要にできる可能性はあるが、外部の利用、データの移行、知識の維持は別に扱う。意味上の依存を自動抽出し、必要な部分だけを安定して再生成する構想は、完成した機能として説明しない。

進化的アーキテクチャは、構造を頻繁に変えるだけでは成立しない。重要な性質の評価、段階的な移行、運用からの学習をつなぐ。その調査・試作・検証をエージェントで支援することが、選び直せる構造と頻度を広げる可能性として論じる。

C4は同じ対象と関係を参照するための構造モデルであり、図だけで現在の実装や判断理由が確定するわけではない。SECIは人の経験と記録の相互作用を捉えるモデルであり、エージェントによる問い・草案・検索・検証の補助は、その循環へ追加した役割である。

## 引用した図版

原図は改変せず、スライド上に出典を表示する。

| 図版 | 出典・用途 |
|---|---|
| [The technical debt onion model](../assets/images/2026/technical-debt-in-the-ai-era/taming-your-dragon-figure-1-1.jpg) | Taming Your Dragon, Figure 1-1。技術的負債の背後にある判断・組織・利害。© Dr. Andrew Richard Brown 2024 |
| [関係者が共有理解へ進む図](../assets/images/2026/technical-debt-in-the-ai-era/taming-your-dragon-figure-8-5.jpg) | Taming Your Dragon, Figure 8-5。異なる見方を持つ関係者の理解。© Dr. Andrew Richard Brown 2024 |
| [Static structure diagrams](../assets/images/2026/value-flow-across-roles/c4-static-structure.png) | Simon Brown, C4 model。[CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)。構造の詳しさを段階的に変える |
| [進化的アーキテクチャ](../assets/images/2026/technical-debt-in-the-ai-era/evolutionary-architecture-figure-1-2.png) | Building Evolutionary Architectures, 2nd Edition, Figure 1-2。要求の変化と並行して重要な性質を評価する |
| [変更を調整する距離](../assets/images/2026/technical-debt-in-the-ai-era/balancing-coupling-figure-8-2.jpg) | Balancing Coupling in Software Design, Figure 8.2。概念図であり、実測した比例関係ではない |
| [Independent value stream](../assets/images/2026/am-1-4-independent-value-stream.png) | Architecture Modernization, Figure 1.4。業務・成果・権限・ソフトウェアの境界 |

[講演固有のSVG](../assets/images/2026/technical-debt-in-the-ai-era/)は、本文の関係を説明するために作図した。SECIの中央に置いたエージェントと、「意図的に引き受けたか／理由を使えるか」の二軸図も、原典の図の転載ではない。

[関連スライド：AIで実装は速くなった。なのにプロダクトは速くならない。](../slides/2026/30min-value-flow-across-roles.md)では、価値が届くまでの流れ、未決の判断、C4、判断できるチームとの対応を扱う。
