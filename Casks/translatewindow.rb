cask "translatewindow" do
  version "1.4.6"
  sha256 "7e1cd341c39556b47a6273b9924f77738ce36111561218d6698c96892d6ef548"

  url "https://release.bearchao.com/translate-window/updates/TranslateWindow-#{version}.dmg"
  name "TranslateWindow"
  name "小窗译"
  desc "AI translation for selected text, screenshots, and live windows"
  homepage "https://translatewindow.app/"

  livecheck do
    url "https://release.bearchao.com/translate-window/updates/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "TranslateWindow.app"
end
