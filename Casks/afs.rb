cask "afs" do
  version "0.1.2"
  sha256 "5b62aa1f65884f827822af836e263ba62e9327928e42619422c7e25fdabec048"

  url "https://github.com/codeflash-ai/afs/releases/download/v0.1.2/AFS-release-20260620-6d956cf-notarized-aarch64.dmg",
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
