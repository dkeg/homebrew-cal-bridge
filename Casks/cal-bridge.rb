cask "cal-bridge" do
  version "1.14.1"
  sha256 "97a3a0df1a088b866889699eba6eadeb3ddc450391c2f67bff45d467b4055ac0"

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
