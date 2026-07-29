cask "translatewindow" do
  version :latest
  sha256 :no_check

  url "https://release.bearchao.com/translate-window/latest/TranslateWindow.dmg"
  name "TranslateWindow"
  name "小窗译"
  desc "AI translation for selected text, screenshots, and live windows"
  homepage "https://translatewindow.app/"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "TranslateWindow.app"
end
