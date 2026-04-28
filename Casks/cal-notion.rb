cask "cal-notion" do
  version "1.0.0"
  sha256 "e4f269bb89a1f8e7081426d0f4ed364b2bf62b04a097eb79ed8bd66974a2e011"

  url "https://github.com/dkeg/cal-notion/releases/download/v#{version}/CalNotion-v#{version}.dmg"
  name "Cal → Notion"
  desc "macOS menu bar app that syncs Google Calendar events to Notion"
  homepage "https://github.com/dkeg/cal-notion"

  depends_on macos: ">= :ventura"

  app "CalNotionBar.app"

  zap trash: [
    "~/Library/LaunchAgents/com.cal-notion.autorun.plist",
    "~/Library/Logs/cal-notion-autorun.log",
    "~/Library/Logs/cal-notion-autorun-error.log",
  ]
end
