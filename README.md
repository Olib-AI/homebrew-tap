# Olib AI Homebrew Tap

Homebrew formulae and casks for [Olib AI](https://www.olib.ai/) software.

## Setup

First add the tap and trust it (required once per machine on Homebrew 6+):

```sh
brew tap olib-ai/tap
brew trust olib-ai/tap
```

## Cleanton

Native macOS disk cleaner. Moves regenerable caches and build artifacts to the
Trash after review, so anything it touches can be restored.

### Install

```sh
brew install --cask cleanton
```

### Update

```sh
brew upgrade --cask cleanton
```

### Uninstall

```sh
brew uninstall --cask cleanton
```

To also remove Cleanton's own settings, logs, and security baseline under
`~/.config/cleanton`:

```sh
brew uninstall --zap --cask cleanton
```

### Requirements

- macOS 13 (Ventura) or later
- Apple Silicon (arm64)

The app is signed and notarized with Olib AI's Developer ID, so it launches
without Gatekeeper prompts.

## llm-cleanup

Remove AI-generated fingerprints from documents. Offline, deterministic, and formatting-safe.

### Install

**Desktop App:**

```sh
brew install --cask llm-cleanup
```

**Command-Line Tool (`aiclean`):**

```sh
brew install aiclean
```

### Update

```sh
brew upgrade --cask llm-cleanup
brew upgrade aiclean
```

### Requirements

- macOS 13 (Ventura) or later
