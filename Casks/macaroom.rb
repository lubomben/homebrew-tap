cask "macaroom" do
  version "1.2.4,18"
  sha256 "904849eafd733bbdf5021549255dbc27752f65d234e2ba08a82b20009435982e"

  url "https://getmacaroom.com/updates/Macaroom-#{version.csv.first}.zip"
  name "Macaroom"
  desc "Menu bar calendar and meeting companion"
  homepage "https://getmacaroom.com/"

  livecheck do
    url "https://getmacaroom.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Macaroom.app"

  zap trash: [
    "~/Library/Application Support/com.getmacaroom.macaroom",
    "~/Library/Caches/com.getmacaroom.macaroom",
    "~/Library/HTTPStorages/com.getmacaroom.macaroom",
    "~/Library/Preferences/com.getmacaroom.macaroom.plist",
    "~/Library/Saved Application State/com.getmacaroom.macaroom.savedState",
  ]
end
