cask "macaroom" do
  version "1.2.3,17"
  sha256 "5ca6a72d85c34f54e8272de07a9c1da6893db9dbcb216febee169e8bc016f6ad"

  url "https://getmacaroom.com/updates/Macaroom-#{version.csv.first}.zip"
  name "Macaroom"
  desc "Menu bar calendar and meeting companion"
  homepage "https://getmacaroom.com/"

  livecheck do
    url "https://getmacaroom.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true

  app "Macaroom.app"

  zap trash: [
    "~/Library/Application Support/com.getmacaroom.macaroom",
    "~/Library/Caches/com.getmacaroom.macaroom",
    "~/Library/HTTPStorages/com.getmacaroom.macaroom",
    "~/Library/Preferences/com.getmacaroom.macaroom.plist",
    "~/Library/Saved Application State/com.getmacaroom.macaroom.savedState",
  ]
end
