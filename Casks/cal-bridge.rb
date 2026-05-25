cask "cal-bridge" do
  version "1.13.0"
  sha256 "3ce1df3370e09947fd318b8110717ac31cd3b29fc85808087bfe9f741b215f2f"

  url "https://github.com/dkeg/cal-bridge/releases/download/v#{version}/CalBridge-v#{version}.dmg"
  name "CalBridge"
  desc "macOS menu bar app that syncs Google Calendar to Notion and Obsidian"
  homepage "https://github.com/dkeg/cal-bridge"

  depends_on macos: ">= :ventura"

  app "CalBridge.app"

  zap trash: [
    "~/Library/Application Support/CalBridge",
    "~/Library/LaunchAgents/com.drewcraig.cal-bridge-autorun.plist",
    "~/Library/Logs/cal-bridge-autorun.log",
    "~/Library/Logs/cal-bridge-autorun-error.log",
    "~/Library/Preferences/FarmFresh.CalBridge.plist",
  ]
end
