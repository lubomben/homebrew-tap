cask "next-ai-draw-io" do
  version "0.5.1"
  sha256 "050213bc49893d542bf077312aa2f987cb72a7d5a5290727aa62157947fb47de"

  url "https://github.com/DayuanJiang/next-ai-draw-io/releases/download/v#{version}/Next-AI-Draw.io-#{version}-arm64.dmg"
  name "Next AI Draw.io"
  desc "Next-generation AI-powered diagram editor based on Draw.io"
  homepage "https://github.com/DayuanJiang/next-ai-draw-io"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64

  app "Next AI Draw.io.app"

  zap trash: [
    "~/Library/Application Support/Next AI Draw.io",
    "~/Library/Application Support/next-ai-draw-io",
    "~/Library/Preferences/com.electron.next-ai-draw-io.plist",
    "~/Library/Saved Application State/com.electron.next-ai-draw-io.savedState",
  ]
end
