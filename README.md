# slides

[nwiizo](https://github.com/nwiizo) の公開講演資料です。Marp Markdown、講演固有画像、閲覧用PDFを管理しています。

テーマと共通画像の上流は [`nwiizo/3shake-marp-templates`](https://github.com/nwiizo/3shake-marp-templates) です。Git submoduleは上流の参照に限定し、ビルドに必要な実体は `brands/3shake/` でこのリポジトリが所有します。スライドはsubmoduleを直接参照しないため、過去資料は上流の変更や将来の転職後も同じ見た目で再生成できます。

## 閲覧

### 2026

- [Mastering Coding Agents in the New Fiscal Year](slides/2026/2026-mastering-coding-agents-new-fiscal-year.pdf)
- [30min Architecture Modernization](slides/2026/30min-architecture-modernization.pdf)
- [30min Effective Platform Engineering](slides/2026/30min-effective-platform-engineering.pdf)
- [30min Secure APIs](slides/2026/30min-secure-apis.pdf)
- [45min Web Security](slides/2026/45min-web-security.pdf)
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

```sh
git clone --recurse-submodules https://github.com/nwiizo/slides.git
cd slides
npm install
```

通常のclone後にsubmoduleを取得する場合:

```sh
git submodule update --init --recursive
```

## Build

```sh
# HTML
npx marp slides/2026/rust-types-as-walls.md \
  --html --allow-local-files --no-stdin \
  -o slides/2026/rust-types-as-walls.html

# 公開PDF
npx marp slides/2026/rust-types-as-walls.md \
  --pdf --allow-local-files --no-stdin \
  -o slides/2026/rust-types-as-walls.pdf
```

HTMLはローカル確認用でGit管理しません。PDFは公開成果物としてGit管理します。

## テンプレート更新

```sh
git submodule update --remote --merge vendor/3shake-marp-templates
```

submodule更新だけでは公開資料の見た目を変更しません。上流差分を確認し、必要なテーマ・画像だけを `brands/3shake/` へ明示的に取り込みます。取り込み後は2025年・2026年の代表資料を再ビルドしてから変更を確定してください。

新しい所属先や個人テーマは `brands/{brand}/` に追加します。既存の `brands/3shake/` は過去資料の再現に必要なため置き換えません。

## 公開レビュースキル

`.claude/skills/` には、スライドを深くレビューして公開まで検証する7つのスキルがあります。

- `review-slide-flow`
- `deepen-slide-claims`
- `review-slide-narrative`
- `trim-slide-redundancy`
- `review-slide-wit`
- `review-slide-suite`
- `prepare-slide-release`

各スキルは、架空のレビュアーになりきる方式ではなく、スライド上の証拠、聴衆への影響、最小修正、変更しない判断を重視します。

履歴から抽出した設計判断と、公開しなかった情報の境界は [`docs/history-derived-guidelines.md`](docs/history-derived-guidelines.md) にまとめています。

## Release check

公開前は対象MarkdownをHTMLとPDFへ実際に変換し、画像、テーマ、READMEのPDFリンク、Git差分を確認します。clean-clone検証を含む完全な手順には `prepare-slide-release` を使います。
