cask "translatewindow" do
  version "1.5.3"
  sha256 "4737642416db9a87ae0630124f94ae6f418016181ccdffc261d410acc5e99000"

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
