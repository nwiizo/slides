# slides

[nwiizo](https://github.com/nwiizo) の公開講演資料です。Marp Markdown、講演固有画像、閲覧用PDFを管理しています。

テーマと共通画像の上流は [`nwiizo/3shake-marp-templates`](https://github.com/nwiizo/3shake-marp-templates) です。Git submoduleは上流の参照に限定し、ビルドに必要な実体は `brands/3shake/` でこのリポジトリが所有します。スライドはsubmoduleを直接参照しないため、過去資料も再生成できます。

## 閲覧

### 2026

- [Mastering Coding Agents in the New Fiscal Year](slides/2026/2026-mastering-coding-agents-new-fiscal-year.pdf)
- [30min Architecture Modernization](slides/2026/30min-architecture-modernization.pdf)
- [30min Value Flow Across Roles](slides/2026/30min-value-flow-across-roles.pdf)
- [35min Effective Platform Engineering](slides/2026/35min-effective-platform-engineering.pdf)
- [20min Secure APIs](slides/2026/20min-secure-apis.pdf)
- [45min Web Security](slides/2026/45min-web-security.pdf)
- [60min 足さない練習](slides/2026/60min-practice-not-adding.pdf)
- [Architecture Modernization Will](slides/2026/architecture-modernization-will.pdf)
- [Design Night: Architecture Modernization](slides/2026/design-night-architecture-modernization.pdf)
- [EMConf: Technical Debt Turning Points](slides/2026/emconf-technical-debt-turning-points.pdf)
- [OWASP Juice Shop Hands-on](slides/2026/owasp-juice-shop-hands-on.pdf)
- [Rust Types as Walls](slides/2026/rust-types-as-walls.pdf)
- [TechBar: Nutic System Trade-offs Practice](slides/2026/techbar-nutic-system-tradeoffs-practice.pdf)
- [TechBar: Nutic System Trade-offs](slides/2026/techbar-nutic-system-tradeoffs.pdf)

### 2025

- [Write Tech Blog](slides/2025/write-tech-blog.pdf)

PDFがまだない資料は、各年のディレクトリからMarkdownを参照できます。

### 既知のlegacy資料

次の2資料は、元リポジトリに画像ファイルが一度もコミットされていなかったため、Markdownだけでは完全再現できません。資料自体と履歴は保持していますが、新たに公開PDFを作る前に、元画像の回収または自作図への置換が必要です。

- `slides/2025/career-change-to-aws-mcp-server.md`
- `slides/2025/getting-started-rust-observability.md`

## Clone

Node.js 18以上とnpmを使用します。依存バージョンは `package-lock.json` を正とします。

```sh
git clone --recurse-submodules https://github.com/nwiizo/slides.git
cd slides
npm ci
```

通常のclone後にsubmoduleを取得する場合:

```sh
git submodule update --init --recursive
```

## Build

```sh
# HTML
npm run build:html -- slides/2026/rust-types-as-walls.md \
  -o slides/2026/rust-types-as-walls.html

# 公開PDF
npm run build:pdf -- slides/2026/rust-types-as-walls.md \
  -o slides/2026/rust-types-as-walls.pdf
```

コマンドはリポジトリ直下で実行します。npm scriptsはlockfileから導入したMarpを使い、ローカル画像に必要な `--allow-local-files` と非対話実行の `--no-stdin` を常に付けます。HTMLはローカル確認用でGit管理しません。PDFは公開成果物としてGit管理します。

## テンプレート更新

```sh
git -C vendor/3shake-marp-templates status --short
# 上のコマンドが何も出力しないことを確認してから更新する
git submodule update --remote vendor/3shake-marp-templates
git diff --submodule=log -- .gitmodules vendor/3shake-marp-templates
```

submoduleにローカル変更がある場合は、先に上流リポジトリ側で変更を確定するか退避し、この手順を続行しません。`.gitmodules` は追跡ブランチを `main` に固定しています。更新後はgitlinkと上流コミット差分を確認し、必要なテーマ・画像だけを `brands/3shake/` へ明示的に取り込みます。submodule更新だけでは公開資料の見た目を変更しません。取り込み後は2025年・2026年の代表資料を再ビルドしてから変更を確定してください。

新しい所属先や個人テーマは `brands/{brand}/` に追加します。既存の `brands/3shake/` は過去資料の再現に必要なため置き換えません。

## 公開スライドスキル

`.claude/skills/` が公開スライドスキルの参照元です。`.agents/skills` は同じディレクトリへの相対シンボリックリンクで、Claude CodeとCodexの両方から利用できます。

迷った場合は、新規作成に [`$draft-slide-deck`](.claude/skills/draft-slide-deck/SKILL.md)、既存資料の総合レビューに [`$review-slide-suite`](.claude/skills/review-slide-suite/SKILL.md)、公開前確認に [`$prepare-slide-release`](.claude/skills/prepare-slide-release/SKILL.md) を使います。単一の問題が明確なら、次の専門スキルを直接使います。

| 観点 | スキル | 確認すること |
|---|---|---|
| デッキの流れ | [`$review-slide-flow`](.claude/skills/review-slide-flow/SKILL.md) | セクション順、スライド間の接続、冒頭で示した内容の回収 |
| スライド内の論理 | [`$logical-flow-check`](.claude/skills/logical-flow-check/SKILL.md) | タイトル、根拠、結論、図表の読み順 |
| 初見理解 | [`$review-slide-comprehension`](.claude/skills/review-slide-comprehension/SKILL.md) | 前提知識、投影負荷、用語、聞き逃した後の復帰 |
| 主張の深さ | [`$deepen-slide-claims`](.claude/skills/deepen-slide-claims/SKILL.md) | 機構、根拠、境界条件、判断への影響 |
| 事実確認 | [`$fact-check-slides`](.claude/skills/fact-check-slides/SKILL.md) | 数値、引用、仕様、図表、出典 |
| 論理校閲 | [`$logic-proofreading`](.claude/skills/logic-proofreading/SKILL.md) | デッキ内の矛盾、現実性、危険な助言、過度な一般化 |
| 反対意見への耐性 | [`$review-slide-adversarial`](.claude/skills/review-slide-adversarial/SKILL.md) | 反例、隠れた前提、失敗条件、厳しい質疑 |
| 物語 | [`$review-slide-narrative`](.claude/skills/review-slide-narrative/SKILL.md) | 聴衆の状態変化、転換、終盤の回収 |
| 認知リズム | [`$cognitive-rhythm-writing`](.claude/skills/cognitive-rhythm-writing/SKILL.md) | 認知モード、密度の波、問いと回答、投影と発話の分担 |
| 冗長性 | [`$trim-slide-redundancy`](.claude/skills/trim-slide-redundancy/SKILL.md) | 重複、時間コスト、安全な削除・統合 |
| 機知 | [`$review-slide-wit`](.claude/skills/review-slide-wit/SKILL.md) | ユーモア、比喩、話者の声、切り抜かれた場合の安全性 |
| 文言 | [`$polish-slide-copy`](.claude/skills/polish-slide-copy/SKILL.md) | 見出し、本文、キャプション、パンチラインの仕上げ |

各スキルは、架空のレビュアーになりきる方式ではなく、スライド上の証拠、聴衆への影響、最小修正、変更しない判断を重視します。

履歴から抽出した設計判断と、公開しなかった情報の境界は [`docs/history-derived-guidelines.md`](docs/history-derived-guidelines.md) にまとめています。

## Release check

公開前は対象MarkdownをHTMLとPDFへ実際に変換し、画像、テーマ、READMEのPDFリンク、Git差分を確認します。clean-clone検証を含む完全な手順には [`$prepare-slide-release`](.claude/skills/prepare-slide-release/SKILL.md) を使います。
