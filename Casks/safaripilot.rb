cask "safaripilot" do
  version "0.4.0"
  sha256 "42338ee7126de42322c7f58098138f069eac288de11aa1f63cbbd11b0f70ebfb"

  url "https://github.com/johnsusek/SafariPilotMCP/releases/download/v#{version}/SafariPilot-#{version}.dmg"
  name "SafariPilot"
  desc "MCP server that lets AI agents work in your Safari in the background"
  homepage "https://github.com/johnsusek/SafariPilotMCP"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :tahoe

  app "SafariPilot.app"
  binary "#{appdir}/SafariPilot.app/Contents/SharedSupport/safaripilot"

  uninstall quit: "net.johnsolo.SafariPilot"

  zap trash: [
    "~/Library/Application Support/SafariPilot",
    "~/Library/Caches/net.johnsolo.SafariPilot",
    "~/Library/Containers/net.johnsolo.SafariPilot.Extension",
    "~/Library/Group Containers/WX2UGCD2SK.net.johnsolo.SafariPilot",
    "~/Library/HTTPStorages/net.johnsolo.SafariPilot",
    "~/Library/HTTPStorages/net.johnsolo.SafariPilot.binarycookies",
    "~/Library/Preferences/net.johnsolo.SafariPilot.plist",
  ]
end
