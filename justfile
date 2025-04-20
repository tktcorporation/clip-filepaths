#!/usr/bin/env -S just --justfile

set windows-shell := ["powershell.exe", "-NoLogo", "-Command"]
set shell := ["bash", "-cu"]

# エイリアス定義
alias r := ready
alias f := fix
alias c := check

# デフォルトはヘルプを表示
_default:
  @just --list -u

# Make sure you have cargo-binstall and pnpm installed.
# You can download the pre-compiled binary from <https://github.com/cargo-bins/cargo-binstall#installation>
# or install via `cargo install cargo-binstall`
# Initialize the project by installing all the necessary tools.
init:
  # Rust related init
  cargo binstall watchexec-cli cargo-insta typos-cli cargo-shear dprint -y
  npm install -g pnpm typescript @napi-rs/cli @antfu/ni
  # Node.js related init
  pnpm install

# 全てのチェックを実行
check: check-format check-lint

# フォーマットチェック（Rust + TS）
check-format: check-rust-format check-ts-format

# リントチェック（Rust + TS）
check-lint: check-rust-lint check-ts-lint check-types

# Rustのフォーマットチェック
check-rust-format:
  @echo "🔍 Rustのフォーマットをチェック中..."
  cargo fmt --all -- --check

# Rustのリントチェック
check-rust-lint:
  @echo "🔍 Rustのリントをチェック中..."
  cargo clippy -- -D warnings

# TypeScriptのフォーマットチェック
check-ts-format:
  @echo "🔍 TypeScriptのフォーマットをチェック中..."
  nr check:format:ts

# TypeScriptのリントチェック
check-ts-lint:
  @echo "🔍 TypeScriptのリントをチェック中..."
  nr check:lint:ts

# 型チェック
check-types:
  @echo "🔍 TypeScript型をチェック中..."
  nr check:types

# 高速チェック (CI用)
ci-check:
  @echo "🚀 CI用の高速チェックを実行中..."
  cargo check
  cargo clippy --all-targets -- -D warnings
  nr check:types
  nr check:lint:ts

# oxlintを使用する場合（高速なJSリント）
check-oxlint:
  @echo "🔍 oxlintでJavaScriptファイルをチェック中..."
  nr check:oxlint

# 全てのテストを実行
test:
  @echo "🧪 テストを実行中..."
  cargo test
  nr test

# コードをフォーマット
fmt:
  @echo "✨ コードをフォーマット中..."
  cargo fmt --all
  nr fmt:ts

# リント問題を自動修正
fix:
  @echo "🔧 自動修正可能な問題を修正中..."
  cargo clippy --fix --allow-staged
  nr lint:fix
  just fmt

# watchモードでの開発
watch *args='':
  watchexec --no-vcs-ignore {{args}}

# watch-checkコマンド
watch-check:
  just watch "just check"

# watch-testコマンド
watch-test:
  just watch "just test"

# gitプッシュ前のチェック
pre-push: ready
  @echo "✅ 全てのチェックが通過しました！"

# 全てのチェックを実行して準備完了
ready:
  @echo "🚀 全ての準備チェックを実行中..."
  just check
  just test
  git status

# Git pre-pushフックをインストール
install-hook:
  @echo "🔄 Git pre-pushフックをインストール中..."
  echo -e "#!/bin/sh\njust pre-push" > .git/hooks/pre-push
  chmod +x .git/hooks/pre-push
  @echo "✅ Git pre-pushフックがインストールされました"

# プロジェクトビルド
build:
  @echo "🏗️ プロジェクトをビルド中..."
  cargo build --release
  
# ドキュメント生成
[unix]
doc:
  RUSTDOCFLAGS='-D warnings' cargo doc --no-deps

[windows]
doc:
  $Env:RUSTDOCFLAGS='-D warnings'; cargo doc --no-deps 