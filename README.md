# Raydo Homebrew Tap

Homebrew tap for Raydo Desktop.

## Install

```bash
brew tap RaydoAI/raydo
brew install --cask raydo
```

## Update Cask

Generate the cask from the Raydo desktop install manifest:

```bash
npm run install:generate-cask -- --manifest artifacts/install/latest-macos.json --out ../homebrew-raydo/Casks/raydo.rb
```
