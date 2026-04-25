cask "klippal" do
  arch arm: "arm64", intel: "x86_64"

  version "2.0.4"
  sha256 arm:   "ffff039e10d62000465789bf632d1ced7ff4b255f82ac3c65c54a18c5a1142ea",
         intel: "9f8e681fcc4460804f63342ab900846f4b63092a40d38ff353c06663b8a16e35"

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
