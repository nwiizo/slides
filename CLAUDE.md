# CLAUDE.md

nwiizoの公開講演資料リポジトリ。スライドのソース、講演固有画像、閲覧用PDFを管理する。

スライド規約と3-SHAKE向けテーマの上流は `vendor/3shake-marp-templates/` にある。ただし、submodule内のファイルをスライドから直接参照しない。`brands/3shake/` をこのリポジトリが所有する固定実体として保持し、clone直後でもビルドを自己完結させる。

## ディレクトリ構成

```text
slides/{year}/       # Marp Markdownと公開PDF
brands/3shake/       # 3-SHAKEテーマとブランド画像の固定実体
assets/shared/       # 発表者共通画像
assets/images/{year} # 講演固有画像
.claude/skills/      # 公開スライドレビュースキル
vendor/              # Git submodule
docs/                # 公開可能な設計・抽象化した運用知識
```

## 基本コマンド

```sh
git submodule update --init --recursive
npm install
npx marp slides/2026/example.md --html --allow-local-files --no-stdin
npx marp slides/2026/example.md --pdf --allow-local-files --no-stdin
```

詳細な規約は `AGENTS.md` とsubmodule内のルールを参照する。

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
