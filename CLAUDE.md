# CLAUDE.md

nwiizoの公開講演資料リポジトリ。スライドのソース、講演固有画像、閲覧用PDFを管理する。

スライド規約と3-SHAKE向けテーマの上流は `vendor/3shake-marp-templates/` にある。ただし、submodule内のファイルをスライドから直接参照しない。`brands/3shake/` をこのリポジトリが所有する固定実体として保持し、親リポジトリや未取得のsubmoduleに依存せず再生成できるようにする。

## ディレクトリ構成

```text
slides/{year}/       # Marp Markdownと公開PDF
brands/3shake/       # 3-SHAKEテーマとブランド画像の固定実体
assets/shared/       # 発表者共通画像
assets/images/{year} # 講演固有画像
.claude/rules/       # このリポジトリ固有の公開原稿・図・レイアウト方針
.claude/skills/      # 公開スライド作成・レビュースキル
.agents/skills       # .claude/skillsへのCodex向けシンボリックリンク
vendor/              # Git submodule
docs/                # 公開可能な設計・抽象化した運用知識
.marprc.yml           # Marpのテーマ探索とHTML設定
package*.json         # ビルドコマンドと固定したNode.js依存
```

## 参照順

- clone、依存導入、ビルド、テンプレート更新、公開前確認は `README.md` を入口とする。
- AIエージェントの実行規約と必須検証は `AGENTS.md`、スライド記法とテーマ規約はsubmodule内のルールを正とする。
- 公開する原稿と本文の記載方針は `.claude/rules/public-slide-source.md` を参照する。

## ルールとテーマの管理範囲

テンプレート側の `slide-writing.md` は共通の記法・構成・見出し・主張の書き方を扱う。このリポジトリの `public-slide-source.md` は、公開原稿へ説明を残す方針、制作事情を公開しない方針、講演固有のSVG図と本文レイアウトを扱う。詳細をREADMEやエージェント向け文書へ重複して転記せず、該当ルールを参照する。

`class: reading` の本文・図レイアウトは `brands/3shake/themes/3shake-2026-presentation.css` にある。ブランドパックは利用先固有の拡張を含むため、上流と完全に一致することを前提にしない。

テンプレートのファイル変更はsubmodule側のコミット、このリポジトリが使う版はgitlinkで記録する。公開時はテンプレート側のコミットを先に取得可能にする。手順と検証条件は `AGENTS.md` を参照する。

## 運用上の不変条件

- 3-SHAKE共通画像は `../../brands/3shake/assets/images/...`、発表者画像は `../../assets/shared/...` で解決する。
- 2025年・2026年ともテーマ名を使い、`brands/3shake/themes/` と `.marprc.yml` で解決する。
- `vendor/3shake-marp-templates` は更新元であり、Marp実行時の必須パスにはしない。
- 上流更新は自動同期しない。必要なテーマ・画像差分だけをレビューして `brands/3shake/` へ取り込む。
- 転職後のブランドは `brands/{brand}/` に追加し、過去資料の3-SHAKEブランドパックを上書きしない。
- PDFはGitHubで閲覧する公開物として追跡し、HTMLはローカル検証用として無視する。
- Markdown、テーマ、画像を変更したら、代表HTMLと対象PDFを再生成して参照切れを確認する。
- 専門レビューは `$review-slide-suite`、公開判定は `$prepare-slide-release` で統括し、Marpの実ビルドを必須の証拠とする。
- AI履歴やmemoryの本文は保存せず、公開可能な抽象化だけを `docs/history-derived-guidelines.md` に残す。
- 構造と既存CLIで解決できる処理に補助スクリプトを追加しない。専用ツールが継続的に必要になった場合はRust CLIとして実装する。
