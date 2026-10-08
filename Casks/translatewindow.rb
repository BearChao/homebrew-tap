cask "translatewindow" do
  version "1.6.11"

  on_arm do
    sha256 "cf92058a810649f0f69ebc28ccbc215bccd6ced546bcbcd303b910c676295f6d"

    url "https://release.bearchao.com/translate-window/updates/TranslateWindow-#{version}.dmg"
  end
  on_intel do
    sha256 "5f48c98a0e1b6e47906d4378b81af707d8df19930f004cc55c100362b861714f"

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
