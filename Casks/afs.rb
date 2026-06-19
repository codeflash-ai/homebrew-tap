cask "afs" do
  version "0.1.0"
  sha256 "2fde7b635d8948cbb7f3bb84102ada559f8bbdf8f6fef5f87977d5025ad01db8"

  url "https://github.com/codeflash-ai/afs/releases/download/v0.1.0/AFS-beta-20260619-0ec3319-notarized-aarch64.dmg",
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
