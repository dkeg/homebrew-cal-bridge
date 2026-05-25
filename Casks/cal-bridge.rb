cask "cal-bridge" do
  version "1.6.0"
  sha256 "6a0473873d5ab852d394cf4085dceca645fa458f51fe8ea18a9e6e82c699c86c"

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
