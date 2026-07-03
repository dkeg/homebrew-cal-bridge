cask "cal-bridge" do
  version "1.14.0"
  sha256 "4376570bff7e2c0f521b6f6bca51c568a313e47f8de220712d3629d5f180d56e"

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
