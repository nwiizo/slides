# AGENTS.md

このリポジトリは、nwiizoの講演スライド、講演固有画像、公開PDFを管理する。

## 正式な参照元

スライド作成・ビルド・レビューでは、submodule内の次のルールを参照する。

- `vendor/3shake-marp-templates/AGENTS.md`
- `vendor/3shake-marp-templates/CLAUDE.md`
- `vendor/3shake-marp-templates/.claude/rules/slide-writing.md`
- `vendor/3shake-marp-templates/.claude/rules/marp-theme-build.md`
- `vendor/3shake-marp-templates/.claude/rules/review-workflow.md`

submoduleが未取得なら、先に `git submodule update --init --recursive` を実行する。

## ローカルスキル

次の公開スキルは `.claude/skills/` を正式な参照元とする。

- `$review-slide-flow` — 聴衆が辿る論理、約束の回収、前提と接続を検証する
- `$deepen-slide-claims` — 主張の機構、境界条件、反例、判断への含意を深める
- `$review-slide-narrative` — 聴衆の状態変化、緊張、転換、余韻を検証する
- `$trim-slide-redundancy` — 理解や間を壊さず、重複と時間コストを減らす
- `$review-slide-wit` — ユーモアと機知を目的、声、精度、安全性から検証する
- `$review-slide-suite` — 複数レビューの競合を解き、1つの編集順序へ統合する
- `$prepare-slide-release` — テーマ、画像、PDF、リンク、clean cloneを公開前に検証する

## 資産とビルド

- submoduleを取得しただけではMarpの実行時パスは解決しない。`brands/3shake/` をビルド可能なブランドパックの実体として必ず保持する。
- スライド本文から `vendor/` 内の画像やCSSを直接参照しない。テーマは名前で、3-SHAKE共通画像は `../../brands/3shake/assets/images/...` で参照する。
- `brands/3shake/` は過去資料を再現する固定資産としてこのリポジトリが所有する。submodule更新で自動同期しない。
- 講演固有画像は `assets/images/{year}/` に置き、同期スクリプトで削除・上書きしない。
- 発表者共通画像は `assets/shared/` に置き、会社ブランドから分離する。
- HTMLは検証用生成物としてGit管理しない。
- PDFは公開成果物としてMarkdownと同じディレクトリに置き、Git管理する。Markdownを変更して公開PDFが存在する場合は、PDFも再生成して同じ変更単位で更新する。
- ビルドはリポジトリ直下で `--allow-local-files --no-stdin` を付けて実行する。
- 2026年スライドは `theme: 3shake-2026-presentation` を使う。

## 変更後の必須確認

1. 参照しているロゴと背景が `brands/3shake/assets/images/`、発表者画像が `assets/shared/`、講演固有画像が `assets/images/{year}/` に存在することを確認する。
2. `.marprc.yml` の `themeSet: brands/3shake/themes/` と各スライドの `theme:` が一致することを確認する。
3. 2025年と2026年から最低1件ずつHTMLビルドする。
4. 公開PDFを更新した資料はPDFビルドも行う。
5. submoduleや親リポジトリのローカルパスがなくてもclone後に再現できることを確認する。

公開前の詳細手順は `$prepare-slide-release` を正とし、Marpの実ビルドとVCS差分を証拠にする。独自チェックスクリプトの成功だけで公開可能と判断しない。

## 補助ツールの方針

- まずディレクトリ境界、安定した参照パス、既存CLIで解決する。
- 一度限りの処理や単純な確認のためにスクリプトを追加しない。
- 反復的で決定的な検証が必要になり、専用ツールを追加する場合はRust CLIを第一選択とする。
- Marp CLIのような公式ツールは、その公式実装とNode.js実行環境をそのまま利用する。

## 履歴から抽出した原則

AI履歴の本文は公開しない。再利用可能な判断だけを `docs/history-derived-guidelines.md` に抽象化する。

- READMEは利用者の入口、AGENTSは実行規約、CLAUDEは構造と不変条件を担当する。
- レビュー結果は連結せず、`$review-slide-suite` で事実、約束、時間、話者の声を基準に統合する。
- 完了はローカルビルドだけで判断せず、公開PDFとclean cloneまで確認する。
- credential-like警告がある履歴は引用・転記せず、秘密情報のローテーションを優先する。
