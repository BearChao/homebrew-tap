cask "translatewindow" do
  version "1.6.12"

  on_arm do
    sha256 "086367de47477e937e5c2b77a41b5662c6a570b97f41c99d291146d0e84a5130"

    url "https://release.bearchao.com/translate-window/updates/TranslateWindow-#{version}.dmg"
  end
  on_intel do
    sha256 "ecc31909c15fb84f0023ee9f10af2813dbf02e94c67150afcc80fba20c1d229c"

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
