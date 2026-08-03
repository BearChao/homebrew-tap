cask "translatewindow" do
  version "1.4.7"
  sha256 "ebf6997f1393aa22ab75160a1cdb34e97a26e2936fb42d692be291989a7cc4ab"

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
