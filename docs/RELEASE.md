# Release workflow

`clip-filepaths` is released by [`.github/workflows/CI.yml`](../.github/workflows/CI.yml). There is no Auto Release or Version Bump workflow. Updating `package.json` on `main` does not create a tag or publish a package by itself.

## Prepare a release

1. Check the npm registry for the proposed root and eight native package versions. Keep all nine `package.json` versions aligned and update `CHANGELOG.md`. The Cargo package version is independent.
2. Open a preparation PR. Use a commit message such as `chore(release): prepare for 0.3.1`. The CI publish step also treats a commit-message line that is exactly a version as a stable release trigger, and a line beginning with a version as a prerelease trigger. Do not put either form on its own line in preparation commits.
3. Review the PR's current-head CI run. It builds eight native targets, uploads one binding artifact per target, tests the bindings, and then reaches the Publish job. Confirm that all eight artifacts exist and that Publish logs `Not a release, skipping publish`.
4. Review package contents safely with `npm pack --dry-run --ignore-scripts`. Do not use `npm publish --dry-run`: npm lifecycle scripts can still run, including this repository's `prepublishOnly` script. A local pack preview does not include the CI-generated native artifacts or prove the final publication manifest.

The native build jobs currently use third-party `ghcr.io/napi-rs/napi-rs/nodejs-rust:lts-*` images whose CI logs show Node.js 18.20.5 or 20.18.0. Those are remaining build-time security issues. The published native addon does not embed those Node.js runtimes.

## Publish after separate release approval

After the preparation PR is merged and all eight artifacts and checks are reviewed, a maintainer can deliberately push a `v<major>.<minor>.<patch>` tag pointing to the reviewed `main` commit. The tag push starts `CI.yml`; its Publish job calls `npm publish --access public` for a stable tag. A version-suffixed tag uses the prerelease path and the `next` npm tag. The repository must have a valid `NPM_TOKEN` secret; the workflow also grants `GITHUB_TOKEN` content and ID-token permissions.

`npm publish` runs `prepublishOnly` (`napi prepublish -t npm`). The pinned `@napi-rs/cli` 2.18.4 [prepublish implementation](https://github.com/napi-rs/napi-rs/blob/%40napi-rs/cli%402.18.4/cli/src/pre-publish.ts) synchronizes native package versions, injects optional dependencies, creates a GitHub release, publishes the native packages, and uploads assets. Missing native binaries may only warn and skip, so verify every artifact before triggering publication. A partial publish or GitHub release requires investigation before any retry.

Do not run `napi version` in a dirty worktree: it stages files with `git add .`. This preparation uses targeted manifest edits instead.
