cask "translatewindow" do
  version "1.6.0"
  sha256 "ae94006ebf1008e8f31555fa555bfe0ba7c7c1116a1272554c9158cfba8908ca"

  url "https://release.bearchao.com/translate-window/updates/TranslateWindow-#{version}.dmg"
  name "TranslateWindow"
  name "小窗译"
  desc "AI translation for selected text, screenshots, and live windows"
  homepage "https://translatewindow.app/"

  livecheck do
    url "https://release.bearchao.com/translate-window/updates/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "TranslateWindow.app"
end
