cask "klippal" do
  arch arm: "arm64", intel: "x86_64"

  version "2.0.10"
  sha256 arm:   "2749fb22171e17e68cca7cd5ec7206b6ddb539b32dad36ecdc69dd4a47b3c2b0",
         intel: "791c5cf9543c1eaecddecf1b4f5f27a53204f5d1cfd1444aab461adddb83b027"

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
