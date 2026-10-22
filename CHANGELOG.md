# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### 🐛 Bug Fixes

- Encode and decode Linux clipboard file URIs correctly, including paths with special characters, and check Windows clipboard allocation sizes ([#34](https://github.com/tktcorporation/clip-filepaths/pull/34)).
- Remove routine clipboard copy and clear messages from standard output ([#34](https://github.com/tktcorporation/clip-filepaths/pull/34)). Malformed Linux URI warnings can still include the URI.

### 📦 Dependencies and Build

- Refresh Rust dependencies and add JavaScript dependency resolutions for development security fixes ([#34](https://github.com/tktcorporation/clip-filepaths/pull/34), [#35](https://github.com/tktcorporation/clip-filepaths/pull/35)).
- Use patched Node.js 22.23.4 for local tooling and CI hosts, and exact patched Node.js 22.23.4 and 24.22.1 for binding tests ([#37](https://github.com/tktcorporation/clip-filepaths/pull/37)). The third-party native build images still contain end-of-life Node.js 18 or 20.

## [0.3.0] - 2025-08-11

### 🐛 Bug Fixes

- *(mac)* Unable to paste files in some apps ([#27](https://github.com/tktcorporation/clip-filepaths/issues/27))

### 📦 Dependencies

- *(deps)* Bump the npm_and_yarn group across 1 directory with 2 updates ([#25](https://github.com/tktcorporation/clip-filepaths/issues/25))

### 🚧 Miscellaneous Tasks

- Error Handling Refactor and Clipboard Handling Improvements ([#24](https://github.com/tktcorporation/clip-filepaths/issues/24))
- Migrate development environment to mise ([#28](https://github.com/tktcorporation/clip-filepaths/issues/28))

## [0.2.0] - 2025-05-13

### 📚 Documentation

- Update README.md

### 📦 Dependencies

- *(deps)* Bump vite from 6.3.3 to 6.3.4 ([#19](https://github.com/tktcorporation/clip-filepaths/issues/19))

### 🚀 Features

- Impl `readClipboardFilePaths` func. Rename `copyFiles` to `writeClipboardFilePaths` ([#23](https://github.com/tktcorporation/clip-filepaths/issues/23))

### 🚧 Miscellaneous Tasks

- *(ci)* Update some ci ([#21](https://github.com/tktcorporation/clip-filepaths/issues/21))
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

- App linux-aarch64 ([#17](https://github.com/tktcorporation/clip-filepaths/issues/17))

## [0.0.31] - 2025-04-27

### 🚧 Miscellaneous Tasks

- Package.jsonから不要なファイルエントリを削除

## [0.0.30] - 2025-04-27

### 🚧 Miscellaneous Tasks

- *(ci)* Remove duplicated arch

## [0.0.28] - 2025-04-27

### 🚧 Miscellaneous Tasks

- *(ci)* Update ci ([#16](https://github.com/tktcorporation/clip-filepaths/issues/16))
- Bump version to v0.0.28

## [0.0.27] - 2025-04-26

### 🚧 Miscellaneous Tasks

- *(ci)* GitHub Actionsのリリース作成ステップをコメントアウトし、linux-arm64-gnuのpackage.jsonを削除 ([#15](https://github.com/tktcorporation/clip-filepaths/issues/15))
- Bump version to v0.0.27

## [0.0.26] - 2025-04-26

### 🚧 Miscellaneous Tasks

- *(ci)* Update ci ([#14](https://github.com/tktcorporation/clip-filepaths/issues/14))
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

- *(ci)* メタパッケージ化テスト ([#11](https://github.com/tktcorporation/clip-filepaths/issues/11))
- Bump version to v0.0.22

## [0.0.21] - 2025-04-25

### 🚧 Miscellaneous Tasks

- Update ([#10](https://github.com/tktcorporation/clip-filepaths/issues/10))
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

- *(ci)* Update build ci ([#3](https://github.com/tktcorporation/clip-filepaths/issues/3))
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

- *(ci)* Setup github actions and project settings ([#2](https://github.com/tktcorporation/clip-filepaths/issues/2))
- Bump version to v0.0.1

<!-- generated by git-cliff -->
