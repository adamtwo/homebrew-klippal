cask "klippal" do
  arch arm: "arm64", intel: "x86_64"

  version "2.0.2"
  sha256 arm:   "c164696719bc46c12b01283207792cfb045cd5a9302d6099a199b11a5f3ac1e7",
         intel: "606b4d36452b75a25289d9f14a7bc64d32e3a841e2b9cd38e9035769519063a9"

  url "https://github.com/adamtwo/klippal/releases/download/v#{version}/KlipPal-#{version}-#{arch}.dmg",
      verified: "github.com/adamtwo/klippal/"
  name "KlipPal"
  desc "Native macOS clipboard manager with local-only storage"
  homepage "https://github.com/adamtwo/klippal"

  depends_on macos: ">= :ventura"

  app "KlipPal.app"

  zap trash: [
        "~/Library/Application Support/KlipPal",
        "~/Library/Caches/com.klippal.KlipPal",
        "~/Library/Preferences/com.klippal.KlipPal.plist",
        "~/Library/Saved Application State/com.klippal.KlipPal.savedState",
      ]
end
