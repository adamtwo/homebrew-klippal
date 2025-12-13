cask "klippal" do
  arch arm: "arm64", intel: "x86_64"

  version "1.1.1"
  sha256 arm:   "e0a5fba6d74a8ac4eac710af1efab3bec45d58a6bc8d89d3fce77bc4d1be5d19",
         intel: "7ff4e25d5c27141eec3a8759a16ff4c125ed318684d44893e02a6705027b2e31"

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
