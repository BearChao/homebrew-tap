cask "translatewindow" do
  version "1.6.8"

  on_arm do
    sha256 "497ee544cb17d6cab50d69955741743a29c6bf62ed06ad55e10ec18441143b20"

    url "https://release.bearchao.com/translate-window/updates/TranslateWindow-#{version}.dmg"
  end
  on_intel do
    sha256 "576a145ada3d52b7ac95307d5bbbe7bcca00f8e37223216f331f2c3b2c2bcf02"

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
