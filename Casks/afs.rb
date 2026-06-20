cask "afs" do
  version "0.1.1"
  sha256 "f2ac64e386fad5a2844bbd1c9d452e65aa384d0c3d1de17cefd5ef2fc538a82e"

  url "https://github.com/codeflash-ai/afs/releases/download/v0.1.1/AFS-release-20260619-6ac5cde-notarized-aarch64.dmg",
      verified: "github.com/codeflash-ai/afs/"
  name "AFS"
  desc "Mount workspaces as local files for agents"
  homepage "https://github.com/codeflash-ai/afs"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "AFS.app"
  binary "#{appdir}/AFS.app/Contents/MacOS/afs"

  zap trash: [
    "~/.afs",
    "~/Library/Application Support/ai.codeflash.afs",
    "~/Library/Caches/ai.codeflash.afs",
    "~/Library/Preferences/ai.codeflash.afs.plist",
  ]
end
