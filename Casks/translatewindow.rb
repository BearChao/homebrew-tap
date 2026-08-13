cask "translatewindow" do
  version "1.5.1"
  sha256 "7859833ae4463a1e67ae125f180c1917407c7a170d2eeb82d62ef92279a32be8"

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
