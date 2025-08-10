# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

clip-filepaths is a cross-platform clipboard management library for Electron applications built with Rust and napi-rs. It enables copying and reading multiple file paths and text from the clipboard, supporting Windows, macOS, and Linux.

Key capabilities:
- Multiple file path copying/reading
- Text clipboard operations  
- Full TypeScript support
- Native performance via Rust

## Development Commands

### Build
```bash
# Full build (Rust + Node bindings)
just build
# or
cargo build --release && yarn build

# Debug build
yarn build:debug
```

### Testing
```bash
# Run all tests
just test

# Unit tests only
yarn test:unit

# Watch mode
yarn test:watch

# Rust tests
cargo test

# Linux requires Xvfb for clipboard tests
./scripts/run-with-xvfb.sh cargo test
```

### Linting & Formatting
```bash
# Run all checks
just check

# Format code
just fmt

# Auto-fix issues
just fix

# Individual checks
yarn check:format:ts  # TypeScript formatting
yarn check:lint:ts    # TypeScript linting  
yarn check:types      # Type checking
cargo fmt --check     # Rust formatting
cargo clippy          # Rust linting
```

### Pre-push Checks
```bash
# Run all validations before push
just ready
# or
just pre-push
```

## Architecture

### Core Structure

The library uses a hybrid Rust/TypeScript architecture:

**Rust Layer** (`/src/`):
- `lib.rs`: Main entry point, exports napi functions `writeClipboardFilePaths()` and `readClipboardFilePaths()`
- `platforms/`: OS-specific clipboard implementations
  - `macos/`: macOS clipboard via Cocoa/Objective-C APIs
  - `windows.rs`: Windows clipboard via Win32 APIs  
  - `linux.rs`: Linux clipboard via X11

**Node.js Bindings**:
- `index.js`: Pre-built native module loader
- `index.d.ts`: TypeScript definitions (auto-generated)
- `/npm/`: Platform-specific binary packages

### Platform Implementation

Each platform module must implement:
- `write_clipboard_file_paths(paths: &[String]) -> io::Result<()>`
- `read_clipboard_file_paths() -> io::Result<Vec<String>>`
- `read_clipboard_text() -> io::Result<String>`
- `read_clipboard_raw() -> io::Result<Vec<u8>>`

The main lib.rs handles:
- Platform detection and delegation
- Error conversion to napi errors
- Path validation and canonicalization
- Fallback text reading when file paths aren't available

### Build Process

1. Rust code compiled to native addon via napi-rs
2. Platform-specific binaries generated for each target
3. TypeScript definitions auto-generated from Rust attributes
4. npm package includes platform detection for binary selection

## Key Implementation Notes

- All file paths are canonicalized before clipboard operations
- Empty path arrays clear the clipboard
- Read operations attempt both file paths and text, returning whichever succeeds
- Linux builds require X11 development libraries
- Tests modify the system clipboard - use Xvfb on Linux CI

## Commit Convention

Follow Conventional Commits format:
- `feat`: New feature
- `fix`: Bug fix  
- `doc`: Documentation only
- `perf`: Performance improvement
- `refactor`: Code restructure
- `test`: Test changes
- `chore`: Build/tooling updates

Example: `feat(macos): add support for image file paths`