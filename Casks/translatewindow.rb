cask "translatewindow" do
  version "1.6.5"

  on_arm do
    sha256 "45ccafca4d86e82328b9325d87b04ba4dbc3226c8b86f35f9933af9deb7574b3"

    url "https://release.bearchao.com/translate-window/updates/TranslateWindow-#{version}.dmg"
  end
  on_intel do
    sha256 "f1b9717176203496b8770ed45fa8a11e8dfced314cb330d419c8b373815371ae"

    url "https://release.bearchao.com/translate-window/updates/intel/TranslateWindow-Intel-#{version}.dmg"
  end

  name "TranslateWindow"
  name "小窗译"
  desc "AI translation for selected text, screenshots, and live windows"
  homepage "https://translatewindow.app/"

  livecheck do
    url "https://release.bearchao.com/translate-window/updates/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "TranslateWindow.app"
end
