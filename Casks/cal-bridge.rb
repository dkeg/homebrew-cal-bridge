cask "cal-bridge" do
  version "1.15.1"
  sha256 "454170368c089590fd0d4b04833342e87c9dd227efe2de31e5c3a96ab9a9c123"

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
