cask "translatewindow" do
  version "1.6.6"

  on_arm do
    sha256 "d819ccd3140062e9efbe3d362a1db9ba31ed5fdf113e5e03855482fbf4cf6dfe"

    url "https://release.bearchao.com/translate-window/updates/TranslateWindow-#{version}.dmg"
  end
  on_intel do
    sha256 "3e417064c5b39945be8e462439a320aa9a44f06bf5fe43d201664e61aa3bdcb4"

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
