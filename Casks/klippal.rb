cask "klippal" do
  arch arm: "arm64", intel: "x86_64"

  version "1.5.0"
  sha256 arm:   "cc7a04b18f11b57e27f1eed886c6f06560d9f90b3dd382ddefaf42ed15a1a319",
         intel: "b46c5a3bff3ccdd10fdb278e558e46abcb200cd9110afb514393a3f0c62768c6"

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
