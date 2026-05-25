cask "cal-notion" do
  version "1.0.0"
  sha256 "d857e13fbf31eeb65c7f13228c1ff7b982eb0ce61efa138b929d8f827c12890b"

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
