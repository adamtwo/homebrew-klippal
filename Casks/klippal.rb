cask "klippal" do
  arch arm: "arm64", intel: "x86_64"

  version "1.1.0"
  sha256 arm:   "42ce19438e7b273fe46a45898b68f5f6bcb4f3b6f805c9948b7efa2d32e4c7d1",
         intel: "c4684cf5e7a48d6f51a7fab1b9a956de2c7636433be48ee65e6904b9ad95ef3d"

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
