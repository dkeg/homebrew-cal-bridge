cask "cal-bridge" do
  version "1.5.0"
  sha256 "d857e13fbf31eeb65c7f13228c1ff7b982eb0ce61efa138b929d8f827c12890b"

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
