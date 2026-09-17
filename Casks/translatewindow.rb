cask "translatewindow" do
  version "1.6.7"

  on_arm do
    sha256 "a14e2f4c72c603a15e5cd177895e65b9a4c1b98f823acf01f5443c7f7cf4f0f0"

    url "https://release.bearchao.com/translate-window/updates/TranslateWindow-#{version}.dmg"
  end
  on_intel do
    sha256 "d534fa4073f1b5d83fb5a00a8243ed2c322b32e521cac0598e68a775d07c64fc"

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
