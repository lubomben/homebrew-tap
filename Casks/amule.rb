cask "amule" do
  version "3.2.0"
  sha256 "788e5873a5bc884bc0650d20da676a0b17b8b5eab0c8c5c13db44d5f2c888231"

  url "https://github.com/amule-org/amule/releases/download/#{version}/aMule-#{version}-macOS-universal2.dmg"
  name "aMule"
  desc "Multi-platform client for the eD2k and Kademlia networks"
  homepage "https://amule-org.github.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "aMule.app"

  zap trash: [
    "~/.aMule",
    "~/Library/Application Support/aMule",
    "~/Library/Preferences/org.amule.aMule.plist",
    "~/Library/Saved Application State/org.amule.aMule.savedState",
  ]
end
