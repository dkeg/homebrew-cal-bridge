cask "cal-bridge" do
  version "1.15.0"
  sha256 "cbc8a992272b6621edb1d3a833a781029cf77968c04f81cc3bb9db364b2d5d03"

  url "https://github.com/dkeg/cal-bridge/releases/download/v#{version}/CalBridge-v#{version}.dmg"
  name "CalBridge"
  desc "macOS menu bar app that syncs Google Calendar events to Notion, Obsidian, or Bear"
  homepage "https://github.com/dkeg/cal-bridge"

  depends_on macos: :ventura

  app "CalBridge.app"

  zap trash: [
    "~/Library/Application Support/CalBridge",
    "~/Library/LaunchAgents/com.drewcraig.cal-bridge-autorun.plist",
    "~/Library/Logs/cal-bridge-autorun.log",
    "~/Library/Logs/cal-bridge-autorun-error.log",
    "~/Library/Preferences/FarmFresh.CalBridge.plist",
  ]
end
