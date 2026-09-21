cask "translatewindow" do
  version "1.6.10"

  on_arm do
    sha256 "de3aa93fc401263bd8f346bd580709f5669fd5949d78ba98953964a6f615fd6e"

    url "https://release.bearchao.com/translate-window/updates/TranslateWindow-#{version}.dmg"
  end
  on_intel do
    sha256 "b7f31260464241007f168f744fa48a8b6440aedfb4bb3bb57794733546190289"

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
