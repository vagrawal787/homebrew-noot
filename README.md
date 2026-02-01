# Homebrew Tap for Noot

This is the official Homebrew tap for [Noot](https://github.com/vagrawal787/noot).

## Installation

```bash
brew tap vagrawal787/noot
brew install --cask noot
```

## Updating

```bash
brew update
brew upgrade --cask noot
```

## Uninstalling

```bash
brew uninstall --cask noot
```

## Post-Installation

After installing, you'll need to:

1. **Security Bypass**: On first launch, macOS may block the app. Go to System Settings → Privacy & Security → Click "Open Anyway"

2. **Accessibility Permission**: For global hotkeys to work, grant Accessibility permission when prompted, or manually add Noot in System Settings → Privacy & Security → Accessibility

## Maintaining This Tap

When releasing a new version:

1. Build and upload the DMG to GitHub Releases
2. Calculate the SHA256: `shasum -a 256 Noot-x.x.x.dmg`
3. Update `Casks/noot.rb` with the new version and SHA256
4. Commit and push
