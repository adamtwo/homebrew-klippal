cask "klippal" do
  arch arm: "arm64", intel: "x86_64"

  version "2.0.5"
  sha256 arm:   "ce0269581e066b23589aafd6724bd0a89c2145dfe473f9d8f916b6badaa73246",
         intel: "f0a74cd0a8c56ce8ad3d527729607f1f498eec6729b5869f056227d3891df3a8"

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
