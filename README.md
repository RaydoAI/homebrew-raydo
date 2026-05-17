# Raydo Homebrew Tap

Official Homebrew tap for [Raydo](https://raydo.ai/), the local-first AI Work OS for browser execution, desktop coordination, workflows, approvals, and reusable work artifacts.

This tap currently publishes the macOS Apple Silicon cask for Raydo Desktop.

## Install Raydo Desktop

```bash
brew tap RaydoAI/raydo
brew install --cask raydo
```

You can also install with Homebrew's fully qualified cask name:

```bash
brew install --cask RaydoAI/raydo/raydo
```

The cask installs `Raydo.app` from the signed macOS `.dmg` distributed at `down.raydo.ai`.

## What Is Raydo?

[Raydo](https://raydo.ai/) is a local-first AI work system for work that has to move beyond a single chat answer. It brings together:

- browser-native execution for real page context and structured capture
- desktop coordination across local files, terminals, apps, and approvals
- workflow compatibility so existing flows can become executable AI work graphs
- artifact-first delivery so outputs, source records, approvals, and run history stay reusable
- team-ready handoff for work that needs review, traceability, and follow-up

Raydo is designed for people and teams who need AI work to be visible, reviewable, and deliverable instead of scattered across chat windows, browser tabs, local folders, and ad hoc scripts.

## Raydo Product Family

- [Raydo Desktop](https://raydo.ai/download) - the main local-first workspace for running, reviewing, and delivering AI work.
- [Raydo Browser Helper](https://chromewebstore.google.com/detail/raydo-browser-help/iinicbapcfdkbmdclacpbakljkempfoj) - Chrome extension for connecting browser context and browser execution back into Raydo.
- `raydo` CLI - local diagnostics, status checks, logs, workflow inspection, provider auth, scheduled tasks, and automation entry points.
- `manager_api` - local HTTP surface for read-only browser mode, inspection, and remote verification scenarios.
- [Raydo Docs](https://raydo.ai/docs) - product and integration documentation.

Homebrew installs Raydo Desktop. The browser helper, CLI, and local API are part of the wider Raydo desktop/runtime experience.

## Useful Links

- Website: [https://raydo.ai](https://raydo.ai/)
- Download page: [https://raydo.ai/download](https://raydo.ai/download)
- Documentation: [https://raydo.ai/docs](https://raydo.ai/docs)
- Contact: [https://raydo.ai/contact](https://raydo.ai/contact)
- Homebrew tap: [https://github.com/RaydoAI/homebrew-raydo](https://github.com/RaydoAI/homebrew-raydo)

## Update Raydo

```bash
brew update
brew upgrade --cask raydo
```

## Uninstall

```bash
brew uninstall --cask raydo
```

Homebrew may also remove Raydo's app support, cache, log, and local Raydo folders through the cask `zap` stanza when you run:

```bash
brew uninstall --zap --cask raydo
```

## Maintainers

The cask is generated from the Raydo Desktop install manifest:

```bash
npm run install:generate-cask -- --manifest artifacts/install/latest-macos.json --out ../homebrew-raydo/Casks/raydo.rb
```

Before publishing an update, verify the generated cask and push this tap:

```bash
ruby -c Casks/raydo.rb
git diff --check
git push origin main
```
