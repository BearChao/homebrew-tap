cask "translatewindow" do
  version "1.6.9"

  on_arm do
    sha256 "652f3db16b0de45f5be8cf3880944033961ec4e1dd7e77e0aa314944f287ff64"

    url "https://release.bearchao.com/translate-window/updates/TranslateWindow-#{version}.dmg"
  end
  on_intel do
    sha256 "db8789f5115d342be0f23672ebc3894b95e084d313e0529bf7ae132c6dee14ee"

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
