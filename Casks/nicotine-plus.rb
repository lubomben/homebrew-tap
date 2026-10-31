cask "nicotine-plus" do
  arch arm: "arm64", intel: "x86_64"

  version "3.3.11"
  sha256 arm:   "e1bd79807741071c31b2de7eabc05e4da2102aab3030fe8f2bd1d36e014d0899",
         intel: "89f507e485058ee56fa614b252ae44b7e9f96e63500d3675b36a5077152e1244"

  url "https://github.com/nicotine-plus/nicotine-plus/releases/download/#{version}/macos-#{arch}-installer.zip"
  name "Nicotine+"
  desc "Graphical client for the Soulseek peer-to-peer network"
  homepage "https://nicotine-plus.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Nicotine+.app"

  zap trash: [
    "~/.local/share/nicotine",
    "~/Library/Application Support/nicotine",
    "~/Library/Preferences/org.nicotine_plus.Nicotine.plist",
    "~/Library/Saved Application State/org.nicotine_plus.Nicotine.savedState",
  ]
end
