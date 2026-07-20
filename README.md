# Olib AI Homebrew Tap

Homebrew casks for [Olib AI](https://www.olib.ai/) software.

## Cleanton

Native macOS disk cleaner. Moves regenerable caches and build artifacts to the
Trash after review, so anything it touches can be restored.

### Install

```sh
brew tap olib-ai/tap
brew install --cask cleanton
```

Or in one line:

```sh
brew install --cask olib-ai/tap/cleanton
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
