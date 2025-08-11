# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).
## [Unreleased]

### 🐛 Bug Fixes

- *(mac)* Unable to paste files in some apps ([#27](https://github.com/tktcorporation/clip-filepaths/issues/27)) - In macOS 10.6 and later, the functionality of type declarations has been covered by `writeObjects(_:)`, so there is no need to call declare_types anymore. In previous implementations, calling declare_types caused issues with the clipboard data, resulting in the ability to paste files only in Finder, while pasting in apps like Slack and WeChat was not possible.

### 📦 Dependencies

- *(deps)* Bump the npm_and_yarn group across 1 directory with 2 updates ([#25](https://github.com/tktcorporation/clip-filepaths/issues/25)) - Bumps the npm_and_yarn group with 2 updates in the / directory: [brace-expansion](https://github.com/juliangruber/brace-expansion) and [vite](https://github.com/vitejs/vite/tree/HEAD/packages/vite).


Updates `brace-expansion` from 2.0.1 to 2.0.2
- [Release notes](https://github.com/juliangruber/brace-expansion/releases)
- [Commits](https://github.com/juliangruber/brace-expansion/compare/v2.0.1...v2.0.2)

Updates `vite` from 6.3.3 to 6.3.5
- [Release notes](https://github.com/vitejs/vite/releases)
- [Changelog](https://github.com/vitejs/vite/blob/main/packages/vite/CHANGELOG.md)
- [Commits](https://github.com/vitejs/vite/commits/v6.3.5/packages/vite)

---
updated-dependencies:
- dependency-name: brace-expansion
  dependency-version: 2.0.2
  dependency-type: indirect
  dependency-group: npm_and_yarn
- dependency-name: vite
  dependency-version: 6.3.5
  dependency-type: indirect
  dependency-group: npm_and_yarn
...

### 🚧 Miscellaneous Tasks

- Error Handling Refactor and Clipboard Handling Improvements ([#24](https://github.com/tktcorporation/clip-filepaths/issues/24)) - * chore: update justfile

- yarn installを非対話モードに変更し、apt-get updateに-yオプションを追加
- rustup component add clippy
- rustup component add rustfmt

* chore: improve error handling and streamline clipboard reading functions

- `read_clipboard_file_paths`関数のrawデータ読み取り処理を簡素化
- `write_clipboard_file_paths`、`read_clipboard_text`、`read_clipboard_raw`関数のエラーハンドリングを改善し、`Error::new`から`Error::other`に変更
- Migrate development environment to mise ([#28](https://github.com/tktcorporation/clip-filepaths/issues/28)) - * feat: migrate project initialization to mise

- Add .mise.toml configuration file with tool management
- Configure Rust, Node.js, Zig, and development tools via mise
- Simplify justfile init command to use mise install
- Add post-install hooks for rustup components and dependencies
- Enable automatic tool installation with mise

🤖 Generated with [Claude Code](https://claude.ai/code)
- Release v0.3.0

## [0.2.0] - 2025-05-13

### 📚 Documentation

- Update README.md

### 📦 Dependencies

- *(deps)* Bump vite from 6.3.3 to 6.3.4 ([#19](https://github.com/tktcorporation/clip-filepaths/issues/19))

### 🚀 Features

- Impl `readClipboardFilePaths` func. Rename `copyFiles` to `writeClipboardFilePaths` ([#23](https://github.com/tktcorporation/clip-filepaths/issues/23)) - * feat: Add clipboard operations and update interfaces

- Implemented functions `writeClipboardFilePaths` and `readClipboardFilePaths` to handle file paths and text from the clipboard
- Renamed `copyFiles` to `writeClipboardFilePaths`
- Updated README.md with usage examples

* docs: update README.md

### 🚧 Miscellaneous Tasks

- *(ci)* Update some ci ([#21](https://github.com/tktcorporation/clip-filepaths/issues/21)) - * chore(ci): change a way of testing

* chore(ci): add a workflow to link pr and issue
- Some project settings update ([#22](https://github.com/tktcorporation/clip-filepaths/issues/22))

## [0.1.2] - 2025-04-29

### 📚 Documentation

- Add a demo app info to README

### 🚧 Miscellaneous Tasks

- Rm unused files
- Add linux-x64-musl, linux-arm64-gnu, linux-arm64-musl
- Update README.md and package.json

## [0.1.0] - 2025-04-28

### 📚 Documentation

- Update documentations
- Update documentations

### 🚧 Miscellaneous Tasks

- *(rename)* Electron-pan-clip -> clip-filepaths

## [0.0.32] - 2025-04-27

### 🚧 Miscellaneous Tasks

- App linux-aarch64 ([#17](https://github.com/tktcorporation/clip-filepaths/issues/17)) - * chore: aarch64-unknown-linux-gnuおよびaarch64-unknown-linux-musl用の新しいパッケージとCI設定を追加

* chore(ci): aarch64用のCI設定を更新し、テストステップを改善

* chore(ci): PRビルドチェックの設定ファイルを削除

* chore(ci): Linux ARM64テストのアーキテクチャ名をaarch64に変更

* chore(ci): aarch64用のクロスコンパイル設定を追加し、条件を更新

* chore(ci): aarch64用のビルドプロセスにzigとpkg-configの設定を追加

## [0.0.31] - 2025-04-27

### 🚧 Miscellaneous Tasks

- Package.jsonから不要なファイルエントリを削除

## [0.0.30] - 2025-04-27

### 🚧 Miscellaneous Tasks

- *(ci)* Remove duplicated arch

## [0.0.28] - 2025-04-27

### 🚧 Miscellaneous Tasks

- *(ci)* Update ci ([#16](https://github.com/tktcorporation/clip-filepaths/issues/16)) - * chore(ci): package.jsonのリポジトリURLを修正し、各プラットフォーム用のpackage.jsonに説明を追加

* chore(ci): pnpmからyarnへの移行に伴い、設定ファイルを更新し、CIワークフローを修正

* chore(ci): CIワークフロー内のビルドコマンドをpnpmからyarnに変更し、依存関係のインストール方法を統一

* chore(ci): CIワークフローのビルドコマンドを各プラットフォームに合わせて修正し、依存関係のインストール手順を追加

* chore(ci): CIワークフローの依存関係インストール手順を修正し、パッケージ名を統一

* chore(test): update

* chore(ci): テストの改善と一時ファイル作成機能の追加、古いテストファイルの削除

* chore: postinstallスクリプトに@antfu/niのインストールを追加

* chore(ci): テスト実行コマンド前に、@antfu/niをグローバルインストールするように修正

* chore(ci): テストコマンドを修正

* chore: macOSプラットフォームのクリップボード操作を調整

* chore: Linuxプラットフォームのクリップボード操作を改善し、無効なパスの処理を追加

* chore: macOSプラットフォームのクリップボード操作において、エラーメッセージを更新し、特定の型を宣言する処理を追加

* chore: macOSプラットフォームのクリップボード操作に関するテストを追加し、モッククリップボードの実装を導入

* chore: Linuxプラットフォーム用の新しいパッケージとREADMEを追加

* chore: パッケージのバージョンを0.0.27に更新し、Linuxプラットフォーム用に新しいアーキテクチャを追加
- Bump version to v0.0.28

## [0.0.27] - 2025-04-26

### 🚧 Miscellaneous Tasks

- *(ci)* GitHub Actionsのリリース作成ステップをコメントアウトし、linux-arm64-gnuのpackage.jsonを削除 ([#15](https://github.com/tktcorporation/clip-filepaths/issues/15))
- Bump version to v0.0.27

## [0.0.26] - 2025-04-26

### 🚧 Miscellaneous Tasks

- *(ci)* Update ci ([#14](https://github.com/tktcorporation/clip-filepaths/issues/14)) - * chore(ci): package.jsonからaarch64-unknown-linux-gnuを削除

* chore(ci): package.jsonのnodeエンジンバージョンを20以上に変更し、リポジトリURLの形式を修正
- Bump version to v0.0.26

## [0.0.25] - 2025-04-26

### 🚧 Miscellaneous Tasks

- *(ci)* Update publish settings ([#13](https://github.com/tktcorporation/clip-filepaths/issues/13))
- Bump version to v0.0.25

## [0.0.24] - 2025-04-26

### 🚧 Miscellaneous Tasks

- Bump version to v0.0.24

## [0.0.23] - 2025-04-26

### 🚧 Miscellaneous Tasks

- *(ci)* Npm publish setting ([#12](https://github.com/tktcorporation/clip-filepaths/issues/12))
- Bump version to v0.0.23

## [0.0.22] - 2025-04-26

### 🚧 Miscellaneous Tasks

- *(ci)* メタパッケージ化テスト ([#11](https://github.com/tktcorporation/clip-filepaths/issues/11)) - * cjore(ci): メタパッケージ化テスト

* ci: 各アクションに実行情報の初期化とサマリー出力を追加し、Lint結果やインストールされたツールの記録を強化

* ci: .nodeファイルのコピー処理を追加し、バイナリ検証の出力を改善

* ci: Windowsプラットフォーム向けにwin32-arm64-msvcターゲットを追加
- Bump version to v0.0.22

## [0.0.21] - 2025-04-25

### 🚧 Miscellaneous Tasks

- Update ([#10](https://github.com/tktcorporation/clip-filepaths/issues/10)) - * chore: update

* macOSプラットフォームのクリップボード操作を改善: NSPasteboardの初期化方法を修正し、CoreFoundationのURL作成時に引数を調整。ファイルURLの書き込み時に成功判定を修正。

* macOS向けのクロスコンパイル設定を追加し、関連するドキュメントを作成。Cargo設定にmacOSターゲット用のリンカーとアーカイバを追加。devcontainerにZigを追加し、macOSプラットフォームのクリップボード操作に関する警告を抑制。

* Windowsプラットフォームのクリップボード操作を改善: Cargo.tomlにWin32_System_Ole機能を追加し、windows.rsでCF_HDROPの使用を修正。

* Windowsプラットフォームのクリップボード操作におけるインポート順序を修正: UI::Shellモジュール内のCF_HDROPとDROPFILESの順序を変更。

* macOSプラットフォームのクリップボード操作を改善: pasteboard.writeObjectsの戻り値をi8型で受け取り、成功判定を修正。

* コントリビュートガイドラインを追加し、Windows向けのクロスコンパイル環境のセットアップ手順をjustfileに追加。README.mdにWindows実装に関する注意点を追記し、クリップボード操作の改善に関する詳細を更新。

* macOSプラットフォームのクリップボード操作を改善: アーキテクチャに応じてpasteboard.writeObjectsの戻り値の処理を修正し、x86_64とaarch64での成功判定を適切に行うように変更。

* macOSプラットフォームにおけるクロスコンパイル設定を強化: ARM64からx86_64へのクロスコンパイル環境を追加し、ビルドプロセス中のアーキテクチャ確認を実装。
- Bump version to v0.0.21

## [0.0.20] - 2025-04-25

### 🚧 Miscellaneous Tasks

- *(ci)* Update ci ([#9](https://github.com/tktcorporation/clip-filepaths/issues/9))
- Bump version to v0.0.20

## [0.0.19] - 2025-04-25

### 🚧 Miscellaneous Tasks

- *(ci)* Update ci ([#7](https://github.com/tktcorporation/clip-filepaths/issues/7))
- *(ci)* Update ci ([#8](https://github.com/tktcorporation/clip-filepaths/issues/8))
- Bump version to v0.0.19

## [0.0.18] - 2025-04-25

### 🚧 Miscellaneous Tasks

- *(ci)* Update ci ([#6](https://github.com/tktcorporation/clip-filepaths/issues/6))
- Bump version to v0.0.18

## [0.0.17] - 2025-04-25

### 🚧 Miscellaneous Tasks

- *(ci)* Update ci ([#5](https://github.com/tktcorporation/clip-filepaths/issues/5))
- Bump version to v0.0.17

## [0.0.16] - 2025-04-25

### 🚧 Miscellaneous Tasks

- *(ci)* Update release ci ([#4](https://github.com/tktcorporation/clip-filepaths/issues/4))
- Bump version to v0.0.16

## [0.0.15] - 2025-04-24

### 🚧 Miscellaneous Tasks

- *(ci)* Update build ci ([#3](https://github.com/tktcorporation/clip-filepaths/issues/3)) - * chore(ci): linux-arm64用のデバッグワークフローを追加

* chore(ci): debug-linux-arm64.ymlからmainブランチのプッシュトリガーを削除

* debug

* chore(ci): マルチアーキテクチャバイナリビルド用のアクションとPRビルドチェックワークフローを追加

* chore(ci): PRビルドワークフローのパス設定をコメントアウト

* chore(ci): Node.jsとRustの設定アクションのパスを修正

* chore(ci):

* wip

* wip

* sudo

* wip

* wip

* debug

* wip

* wip

* wip

* wip

* wip

* wip

* wip

* wip

* wip

* cross

* Cross.tomlにx86_64-unknown-linux-gnuターゲットのpre-buildスクリプトを追加

* Cross.tomlにaarch64-unknown-linux-gnuターゲットのpre-buildスクリプトを追加

* GitHub Actionsのワークフローを更新し、複数のプラットフォーム向けにバイナリをビルドするジョブを追加。クロスビルドと通常ビルドの条件分岐を実装し、成果物の収集とアップロードを改善。

* GitHub Actionsのビルドプロセスを改善し、生成された.nodeファイルをターゲットディレクトリに移動するステップを追加。クロスビルドのインストール手順を明確化し、不要なスクリプトを削除。

* wip

* wip

* wip

* wip

* wip

* wip

* wip

* qemu

* wip

* wip

* ARM64クロスコンパイルのためのAPT設定と依存関係のインストールを追加

* win arm64

* linux-arm64-gnuプラットフォームを削除し、win32-arm64-msvcプラットフォームを追加

* ビルドアクションを新しいコンポジットアクション「build-native-module」に置き換え、古い「build-binaries」アクションを削除。プラットフォーム名をnapiスタイルに統一し、win32-arm64-msvcプラットフォームを追加。

* rm
- Bump version to v0.0.15

## [0.0.14] - 2025-04-21

### 🚧 Miscellaneous Tasks

- *(ci)* Release.ymlからX11ライブラリのインストール行をコメントアウト
- Bump version to v0.0.14

## [0.0.13] - 2025-04-21

### 🚧 Miscellaneous Tasks

- *(ci)* Release.ymlのlinux-arm64ターゲットに必要なX11ライブラリを更新
- Bump version to v0.0.13

## [0.0.12] - 2025-04-21

### 🚧 Miscellaneous Tasks

- *(ci)* Release.ymlのlinux-arm64ターゲットのOSをubuntu-22.04に更新
- Bump version to v0.0.12

## [0.0.11] - 2025-04-21

### 🚧 Miscellaneous Tasks

- *(ci)* Release.ymlにマルチアーキテクチャサポートとX11ライブラリのインストールを追加
- Bump version to v0.0.11

## [0.0.10] - 2025-04-21

### 🐛 Bug Fixes

- *(ci)* まずはci通したい

### 🚧 Miscellaneous Tasks

- *(ci)* Release.ymlにmacOSターゲットのセットアップスクリプトを追加
- Bump version to v0.0.10

## [0.0.9] - 2025-04-21

### 🚧 Miscellaneous Tasks

- *(ci)* Release.ymlにnapi CLIのインストールステップを追加
- Bump version to v0.0.9

## [0.0.8] - 2025-04-21

### 🚧 Miscellaneous Tasks

- *(ci)* Actions/upload-artifactのバージョンをv3からv4に更新
- Bump version to v0.0.8

## [0.0.7] - 2025-04-21

### Wip

- クロスビルドを oxc とか参考にやりたい

### 🚧 Miscellaneous Tasks

- *(ci)* Release.ymlにpackage.jsonのURLを追加し、リリースワークフローを改善
- Bump version to v0.0.7

## [0.0.6] - 2025-04-21

### 🚧 Miscellaneous Tasks

- *(ci)* .npmignoreから不要なノードファイルのエントリを削除し、リリースワークフローから依存パッケージ更新ステップを削除
- Bump version to v0.0.6

## [0.0.5] - 2025-04-21

### 🚧 Miscellaneous Tasks

- Bump version to v0.0.5

## [0.0.4] - 2025-04-21

### 🚧 Miscellaneous Tasks

- *(ci)* Npm-publishアクションのRustセットアップのパスを修正
- Bump version to v0.0.4

## [0.0.3] - 2025-04-21

### 🚧 Miscellaneous Tasks

- *(ci)* Npm-publishアクションのビルドコマンドを'nr build'に変更し、Rustのセットアップステップを追加
- Bump version to v0.0.3

## [0.0.2] - 2025-04-21

### 🚧 Miscellaneous Tasks

- *(ci)* Npm-publishアクションのビルドとテストの順序を変更し、実行コマンドを適切に設定
- Bump version to v0.0.2

## [0.0.1] - 2025-04-21

### 🐛 Bug Fixes

- Version-checkアクションの条件を修正し、リリースワークフローでのファイル追加を更新

### 🚧 Miscellaneous Tasks

- *(ci)* Setup github actions and project settings ([#2](https://github.com/tktcorporation/clip-filepaths/issues/2)) - * chore: project settings

* chore: .gitignoreの更新、依存関係の追加、READMEの内容修正、Rustコードのリファクタリング

* chore: pnpmへの移行、テストフレームワークをavaからvitestに変更、READMEの更新

* chore: CHANGELOGとGitHub Actionsワークフローの追加、READMEのnpm自動パブリッシュ手順の記載

* chore: Node.jsバージョンの指定、リリースワークフローと関連アクションの追加、READMEのリリースワークフローの説明を更新

* chore: GitHub ActionsのLintジョブを追加し、JavaScriptとRustのコード品質チェックを実装。typos設定ファイルを追加し、devcontainer設定を更新。

* chore: Biome設定ファイルの追加、Justfileの作成、package.jsonのスクリプト更新、devcontainer設定の改善

* chore: Biome設定ファイルの更新、TypeScriptファイルのインポート整理、Node.jsモジュールのインポート方法の変更、スクリプトの簡略化

* chore: プラットフォームモジュールのインデント修正とLinuxおよびmacOSの実装ファイルに改行を追加

* chore: ビルド設定ファイルの更新、TypeScriptの設定追加、テストファイルの作成、依存関係の整理

* chore: Node.js設定アクションの追加と既存のワークフローでの統合、依存関係インストール手順の修正

* chore: Linux依存関係のインストール手順をGitHub ActionsのRust Lintアクションに追加

* chore: 依存関係インストール手順をnpmからnciに変更し、リリースワークフローの不要なステップを削除

* chore: Lintアクションのコマンドをnpmからnrに変更し、ESLint、フォーマットチェック、型チェックのデフォルトコマンドを更新

* chore: JustfileにLinux依存関係のインストール手順を追加し、GitHub ActionsのRustセットアップアクションを新規作成。Lintアクションの設定を更新。

* chore: GitHub ActionsのLintジョブにRustのセットアップステップを追加し、ジョブ名を更新

* chore: devcontainer設定にGitHub Actions拡張を追加し、Lintアクションからフォーマットチェックと型チェックのコマンドを削除
- Bump version to v0.0.1

<!-- generated by git-cliff -->
