cask "noot" do
  version "1.0.0"
  sha256 "REPLACE_WITH_ACTUAL_SHA256"

  url "https://github.com/vagrawal787/noot/releases/download/v#{version}/Noot-#{version}.dmg"
  name "Noot"
  desc "Local-first developer note-taking app"
  homepage "https://github.com/vagrawal787/noot"

  depends_on macos: ">= :ventura"

  app "Noot.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Noot.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/Noot",
    "~/Library/Preferences/com.noot.app.plist",
    "~/Library/Caches/com.noot.app",
  ]

  caveats <<~EOS
    Noot requires Accessibility permissions for global hotkeys.

    After installation, you may need to:
    1. Open System Settings → Privacy & Security
    2. Scroll to Security and click "Open Anyway" for Noot
    3. Grant Accessibility permission when prompted

    To grant Accessibility permission manually:
    System Settings → Privacy & Security → Accessibility → Add Noot
  EOS
end
