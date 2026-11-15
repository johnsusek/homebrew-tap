cask "safaripilot" do
  version "0.2.2"
  sha256 "e12e9dc7a04ed2398127f45f6f0378d13be76150838897b656a513ad752049dc"

  url "https://github.com/johnsusek/SafariPilotMCP/releases/download/v#{version}/SafariPilot-#{version}.dmg"
  name "SafariPilot"
  desc "MCP server that lets Claude work in Safari in the background"
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
