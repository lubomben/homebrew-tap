cask "macmobility" do
  version "1.0.55"
  sha256 :no_check

  url "https://coderblocks.eu/downloads/MacMobilityMacOS.zip"
  name "MacMobility"
  desc "Control your Mac from iPhone or iPad"
  homepage "https://coderblocks.eu/mobility"

  livecheck do
    skip "No version information available"
  end

  container nested: "MacMobility.dmg"

  app "MacMobility.app"

  zap trash: [
    "~/Library/Application Support/MacMobilityStorage",
    "~/Library/Caches/com.macmobility.MacMobility-MacOS",
    "~/Library/Preferences/com.macmobility.MacMobility-MacOS.plist",
  ]
end
