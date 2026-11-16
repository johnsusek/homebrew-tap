cask "safaripilot" do
  version "0.2.3"
  sha256 "c4be9f878fe7b61c0a2066fd7d002a8e1b77d0b833203d0db9c82572b9a7f658"

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
