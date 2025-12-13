cask "klippal" do
  arch arm: "arm64", intel: "x86_64"

  version "1.2.0"
  sha256 arm:   "90e07eab5d3e46177887d1833743c5ab65270df136f0f6ad55f7fd851e00fb80",
         intel: "c86b801052e4321704c5b3edc8a27343dc4cc26363d59e494af931ba742516e3"

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
