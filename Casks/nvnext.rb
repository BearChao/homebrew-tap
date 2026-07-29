cask "nvnext" do
  version "0.3.0"
  sha256 "efc7f8490106b0232060ee9e67d82a2d72cab163991d066f4389eb1035c8bfe9"

  url "https://release.bearchao.com/nvnext/updates/nvNEXT-#{version}-efc7f8490106.dmg"
  name "nvNEXT"
  desc "Fast, native, keyboard-first Markdown notes app"
  homepage "https://github.com/BearChao/nvnext"

  livecheck do
    url "https://release.bearchao.com/nvnext/updates/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "nvNEXT.app"
end
