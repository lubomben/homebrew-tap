cask "tidy-up" do
  version "6.0.10,79"
  sha256 "61868b250acdc752c49d5d86569ff78ab8925997e0c41b9c4cdc4ba4e7ed7651"

  url "https://www.hyperbolicsoftware.com/programs/TidyUp6Up.zip"
  name "Tidy Up"
  desc "Duplicate finder and disk tidiness tool"
  homepage "https://www.hyperbolicsoftware.com/tidyup.html"

  livecheck do
    url "https://www.hyperbolicsoftware.com/Receipts/Tidy_Up/TidyUp6Update.xml"
    strategy :sparkle
  end


  auto_updates true

  app "Tidy Up.app"

  zap trash: [
    "~/Library/Application Support/Tidy Up 6",
    "~/Library/Caches/com.hyperbolicsoftware.tidy-up-6",
    "~/Library/Preferences/com.hyperbolicsoftware.tidy-up-6.plist",
  ]
end
